package arztis.econnector.rest.server;

import java.io.StringReader;
import java.io.StringWriter;
import java.nio.file.Path;
import javax.xml.XMLConstants;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.transform.Templates;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;
import javax.xml.transform.stream.StreamSource;
import org.xml.sax.InputSource;

/** Renders the original CDA with ELGA's locally bundled eImpfpass stylesheet. */
public final class CdaRenderer {
    public static final String POLICY = "default-src 'none'; script-src 'unsafe-inline' data:; style-src 'unsafe-inline' data:; img-src data:; font-src data:; connect-src 'none'; base-uri 'none'; form-action 'none'";
    private final Templates templates;
    public CdaRenderer() throws Exception {
        var factory = new net.sf.saxon.TransformerFactoryImpl();
        factory.setFeature(XMLConstants.FEATURE_SECURE_PROCESSING, true);
        factory.setAttribute(XMLConstants.ACCESS_EXTERNAL_DTD, "");
        factory.setAttribute(XMLConstants.ACCESS_EXTERNAL_STYLESHEET, "");
        templates = factory.newTemplates(new StreamSource(Path.of("resources", "cda", "eimpf-stylesheet_v1.0.xsl").toFile()));
    }
    public String render(String xml) throws Exception {
        ActivityLog.event("REFCLIENT", "INFO", "CDA → HTML · Dokument prüfen und ELGA-Stylesheet anwenden.");
        var factory = DocumentBuilderFactory.newDefaultInstance();
        factory.setNamespaceAware(true);
        factory.setFeature("http://apache.org/xml/features/disallow-doctype-decl", true);
        factory.setFeature("http://xml.org/sax/features/external-general-entities", false);
        factory.setFeature("http://xml.org/sax/features/external-parameter-entities", false);
        factory.setAttribute(XMLConstants.ACCESS_EXTERNAL_DTD, "");
        factory.setAttribute(XMLConstants.ACCESS_EXTERNAL_SCHEMA, "");
        factory.setXIncludeAware(false);
        factory.setExpandEntityReferences(false);
        org.w3c.dom.Document document;
        try { document = factory.newDocumentBuilder().parse(new InputSource(new StringReader(xml))); }
        catch (org.xml.sax.SAXException ex) { throw new IllegalArgumentException("Ungültiges CDA-XML; DTDs und externe Entitäten sind nicht erlaubt.", ex); }
        var root = document.getDocumentElement();
        if (!"ClinicalDocument".equals(root.getLocalName()) || !"urn:hl7-org:v3".equals(root.getNamespaceURI()))
            throw new IllegalArgumentException("Ein HL7-CDA ClinicalDocument ist erforderlich.");
        var codes = root.getElementsByTagNameNS("urn:hl7-org:v3", "code");
        String code = "";
        for (int n = 0; n < codes.getLength(); n++) if (codes.item(n).getParentNode() == root) code = ((org.w3c.dom.Element) codes.item(n)).getAttribute("code");
        if (!"11369-6".equals(code) && !"87273-9".equals(code))
            throw new IllegalArgumentException("Die Darstellung unterstützt eImpfpass-CDA (Immunisierungsstatus und Update Immunisierungsstatus).");
        var out = new StringWriter();
        var transformer = templates.newTransformer();
        transformer.transform(new DOMSource(document), new StreamResult(out));
        // srcdoc does not inherit response headers; retain the same policy in the document.
        return out.toString().replaceFirst("<head>", "<head><meta http-equiv=\"Content-Security-Policy\" content=\"" + POLICY + "\">");
    }
}

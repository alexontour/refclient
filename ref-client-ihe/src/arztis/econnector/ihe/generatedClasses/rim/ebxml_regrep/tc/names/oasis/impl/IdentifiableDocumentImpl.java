/*
 * An XML document type.
 * Localname: Identifiable
 * Namespace: urn:oasis:names:tc:ebxml-regrep:xsd:rim:3.0
 * Java type: arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.IdentifiableDocument
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.impl;
/**
 * A document containing one Identifiable(@urn:oasis:names:tc:ebxml-regrep:xsd:rim:3.0) element.
 *
 * This is a complex type.
 */
public class IdentifiableDocumentImpl extends org.apache.xmlbeans.impl.values.XmlComplexContentImpl implements arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.IdentifiableDocument
{
    private static final long serialVersionUID = 1L;
    
    public IdentifiableDocumentImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName IDENTIFIABLE$0 = 
        new javax.xml.namespace.QName("urn:oasis:names:tc:ebxml-regrep:xsd:rim:3.0", "Identifiable");
    private static final org.apache.xmlbeans.QNameSet IDENTIFIABLE$1 = org.apache.xmlbeans.QNameSet.forArray( new javax.xml.namespace.QName[] { 
        new javax.xml.namespace.QName("urn:oasis:names:tc:ebxml-regrep:xsd:rim:3.0", "Federation"),
        new javax.xml.namespace.QName("urn:oasis:names:tc:ebxml-regrep:xsd:rim:3.0", "Classification"),
        new javax.xml.namespace.QName("urn:oasis:names:tc:ebxml-regrep:xsd:rim:3.0", "ClassificationScheme"),
        new javax.xml.namespace.QName("urn:oasis:names:tc:ebxml-regrep:xsd:rim:3.0", "Association"),
        new javax.xml.namespace.QName("urn:oasis:names:tc:ebxml-regrep:xsd:rim:3.0", "ObjectRef"),
        new javax.xml.namespace.QName("urn:oasis:names:tc:ebxml-regrep:xsd:rim:3.0", "RegistryObject"),
        new javax.xml.namespace.QName("urn:oasis:names:tc:ebxml-regrep:xsd:rim:3.0", "Subscription"),
        new javax.xml.namespace.QName("urn:oasis:names:tc:ebxml-regrep:xsd:rim:3.0", "Person"),
        new javax.xml.namespace.QName("urn:oasis:names:tc:ebxml-regrep:xsd:rim:3.0", "ExternalIdentifier"),
        new javax.xml.namespace.QName("urn:oasis:names:tc:ebxml-regrep:xsd:rim:3.0", "AdhocQuery"),
        new javax.xml.namespace.QName("urn:oasis:names:tc:ebxml-regrep:xsd:rim:3.0", "ClassificationNode"),
        new javax.xml.namespace.QName("urn:oasis:names:tc:ebxml-regrep:xsd:rim:3.0", "ServiceBinding"),
        new javax.xml.namespace.QName("urn:oasis:names:tc:ebxml-regrep:xsd:rim:3.0", "Organization"),
        new javax.xml.namespace.QName("urn:oasis:names:tc:ebxml-regrep:xsd:rim:3.0", "User"),
        new javax.xml.namespace.QName("urn:oasis:names:tc:ebxml-regrep:xsd:rim:3.0", "ExternalLink"),
        new javax.xml.namespace.QName("urn:oasis:names:tc:ebxml-regrep:xsd:rim:3.0", "ExtrinsicObject"),
        new javax.xml.namespace.QName("urn:oasis:names:tc:ebxml-regrep:xsd:rim:3.0", "Identifiable"),
        new javax.xml.namespace.QName("urn:oasis:names:tc:ebxml-regrep:xsd:rim:3.0", "AuditableEvent"),
        new javax.xml.namespace.QName("urn:oasis:names:tc:ebxml-regrep:xsd:rim:3.0", "RegistryPackage"),
        new javax.xml.namespace.QName("urn:oasis:names:tc:ebxml-regrep:xsd:rim:3.0", "Registry"),
        new javax.xml.namespace.QName("urn:oasis:names:tc:ebxml-regrep:xsd:rim:3.0", "Service"),
        new javax.xml.namespace.QName("urn:oasis:names:tc:ebxml-regrep:xsd:rim:3.0", "SpecificationLink"),
    });
    
    
    /**
     * Gets the "Identifiable" element
     */
    public arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.IdentifiableType getIdentifiable()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.IdentifiableType target = null;
            target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.IdentifiableType)get_store().find_element_user(IDENTIFIABLE$1, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * Sets the "Identifiable" element
     */
    public void setIdentifiable(arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.IdentifiableType identifiable)
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.IdentifiableType target = null;
            target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.IdentifiableType)get_store().find_element_user(IDENTIFIABLE$1, 0);
            if (target == null)
            {
                target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.IdentifiableType)get_store().add_element_user(IDENTIFIABLE$0);
            }
            target.set(identifiable);
        }
    }
    
    /**
     * Appends and returns a new empty "Identifiable" element
     */
    public arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.IdentifiableType addNewIdentifiable()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.IdentifiableType target = null;
            target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.IdentifiableType)get_store().add_element_user(IDENTIFIABLE$0);
            return target;
        }
    }
}

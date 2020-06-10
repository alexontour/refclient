/*
 * An XML document type.
 * Localname: ExternalLinkQuery
 * Namespace: urn:oasis:names:tc:ebxml-regrep:xsd:query:3.0
 * Java type: arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ExternalLinkQueryDocument
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.impl;
/**
 * A document containing one ExternalLinkQuery(@urn:oasis:names:tc:ebxml-regrep:xsd:query:3.0) element.
 *
 * This is a complex type.
 */
public class ExternalLinkQueryDocumentImpl extends org.apache.xmlbeans.impl.values.XmlComplexContentImpl implements arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ExternalLinkQueryDocument
{
    private static final long serialVersionUID = 1L;
    
    public ExternalLinkQueryDocumentImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName EXTERNALLINKQUERY$0 = 
        new javax.xml.namespace.QName("urn:oasis:names:tc:ebxml-regrep:xsd:query:3.0", "ExternalLinkQuery");
    
    
    /**
     * Gets the "ExternalLinkQuery" element
     */
    public arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ExternalLinkQueryType getExternalLinkQuery()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ExternalLinkQueryType target = null;
            target = (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ExternalLinkQueryType)get_store().find_element_user(EXTERNALLINKQUERY$0, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * Sets the "ExternalLinkQuery" element
     */
    public void setExternalLinkQuery(arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ExternalLinkQueryType externalLinkQuery)
    {
        generatedSetterHelperImpl(externalLinkQuery, EXTERNALLINKQUERY$0, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
    }
    
    /**
     * Appends and returns a new empty "ExternalLinkQuery" element
     */
    public arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ExternalLinkQueryType addNewExternalLinkQuery()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ExternalLinkQueryType target = null;
            target = (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ExternalLinkQueryType)get_store().add_element_user(EXTERNALLINKQUERY$0);
            return target;
        }
    }
}

/*
 * An XML document type.
 * Localname: ExternalIdentifierQuery
 * Namespace: urn:oasis:names:tc:ebxml-regrep:xsd:query:3.0
 * Java type: arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ExternalIdentifierQueryDocument
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.impl;
/**
 * A document containing one ExternalIdentifierQuery(@urn:oasis:names:tc:ebxml-regrep:xsd:query:3.0) element.
 *
 * This is a complex type.
 */
public class ExternalIdentifierQueryDocumentImpl extends org.apache.xmlbeans.impl.values.XmlComplexContentImpl implements arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ExternalIdentifierQueryDocument
{
    private static final long serialVersionUID = 1L;
    
    public ExternalIdentifierQueryDocumentImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName EXTERNALIDENTIFIERQUERY$0 = 
        new javax.xml.namespace.QName("urn:oasis:names:tc:ebxml-regrep:xsd:query:3.0", "ExternalIdentifierQuery");
    
    
    /**
     * Gets the "ExternalIdentifierQuery" element
     */
    public arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ExternalIdentifierQueryType getExternalIdentifierQuery()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ExternalIdentifierQueryType target = null;
            target = (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ExternalIdentifierQueryType)get_store().find_element_user(EXTERNALIDENTIFIERQUERY$0, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * Sets the "ExternalIdentifierQuery" element
     */
    public void setExternalIdentifierQuery(arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ExternalIdentifierQueryType externalIdentifierQuery)
    {
        generatedSetterHelperImpl(externalIdentifierQuery, EXTERNALIDENTIFIERQUERY$0, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
    }
    
    /**
     * Appends and returns a new empty "ExternalIdentifierQuery" element
     */
    public arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ExternalIdentifierQueryType addNewExternalIdentifierQuery()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ExternalIdentifierQueryType target = null;
            target = (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ExternalIdentifierQueryType)get_store().add_element_user(EXTERNALIDENTIFIERQUERY$0);
            return target;
        }
    }
}

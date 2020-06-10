/*
 * An XML document type.
 * Localname: ResponseOption
 * Namespace: urn:oasis:names:tc:ebxml-regrep:xsd:query:3.0
 * Java type: arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ResponseOptionDocument
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.impl;
/**
 * A document containing one ResponseOption(@urn:oasis:names:tc:ebxml-regrep:xsd:query:3.0) element.
 *
 * This is a complex type.
 */
public class ResponseOptionDocumentImpl extends org.apache.xmlbeans.impl.values.XmlComplexContentImpl implements arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ResponseOptionDocument
{
    private static final long serialVersionUID = 1L;
    
    public ResponseOptionDocumentImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName RESPONSEOPTION$0 = 
        new javax.xml.namespace.QName("urn:oasis:names:tc:ebxml-regrep:xsd:query:3.0", "ResponseOption");
    
    
    /**
     * Gets the "ResponseOption" element
     */
    public arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ResponseOptionType getResponseOption()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ResponseOptionType target = null;
            target = (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ResponseOptionType)get_store().find_element_user(RESPONSEOPTION$0, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * Sets the "ResponseOption" element
     */
    public void setResponseOption(arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ResponseOptionType responseOption)
    {
        generatedSetterHelperImpl(responseOption, RESPONSEOPTION$0, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
    }
    
    /**
     * Appends and returns a new empty "ResponseOption" element
     */
    public arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ResponseOptionType addNewResponseOption()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ResponseOptionType target = null;
            target = (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ResponseOptionType)get_store().add_element_user(RESPONSEOPTION$0);
            return target;
        }
    }
}

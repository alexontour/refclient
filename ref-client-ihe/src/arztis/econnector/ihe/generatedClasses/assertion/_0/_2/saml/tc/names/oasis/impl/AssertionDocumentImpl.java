/*
 * An XML document type.
 * Localname: Assertion
 * Namespace: urn:oasis:names:tc:SAML:2.0:assertion
 * Java type: arztis.econnector.ihe.generatedClasses.assertion._0._2.saml.tc.names.oasis.AssertionDocument
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.assertion._0._2.saml.tc.names.oasis.impl;
/**
 * A document containing one Assertion(@urn:oasis:names:tc:SAML:2.0:assertion) element.
 *
 * This is a complex type.
 */
public class AssertionDocumentImpl extends org.apache.xmlbeans.impl.values.XmlComplexContentImpl implements arztis.econnector.ihe.generatedClasses.assertion._0._2.saml.tc.names.oasis.AssertionDocument
{
    private static final long serialVersionUID = 1L;
    
    public AssertionDocumentImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName ASSERTION$0 = 
        new javax.xml.namespace.QName("urn:oasis:names:tc:SAML:2.0:assertion", "Assertion");
    
    
    /**
     * Gets the "Assertion" element
     */
    public arztis.econnector.ihe.generatedClasses.assertion._0._2.saml.tc.names.oasis.AssertionType getAssertion()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.assertion._0._2.saml.tc.names.oasis.AssertionType target = null;
            target = (arztis.econnector.ihe.generatedClasses.assertion._0._2.saml.tc.names.oasis.AssertionType)get_store().find_element_user(ASSERTION$0, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * Sets the "Assertion" element
     */
    public void setAssertion(arztis.econnector.ihe.generatedClasses.assertion._0._2.saml.tc.names.oasis.AssertionType assertion)
    {
        generatedSetterHelperImpl(assertion, ASSERTION$0, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
    }
    
    /**
     * Appends and returns a new empty "Assertion" element
     */
    public arztis.econnector.ihe.generatedClasses.assertion._0._2.saml.tc.names.oasis.AssertionType addNewAssertion()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.assertion._0._2.saml.tc.names.oasis.AssertionType target = null;
            target = (arztis.econnector.ihe.generatedClasses.assertion._0._2.saml.tc.names.oasis.AssertionType)get_store().add_element_user(ASSERTION$0);
            return target;
        }
    }
}

/*
 * An XML document type.
 * Localname: TelephoneNumber
 * Namespace: urn:oasis:names:tc:ebxml-regrep:xsd:rim:3.0
 * Java type: arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.TelephoneNumberDocument
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.impl;
/**
 * A document containing one TelephoneNumber(@urn:oasis:names:tc:ebxml-regrep:xsd:rim:3.0) element.
 *
 * This is a complex type.
 */
public class TelephoneNumberDocumentImpl extends org.apache.xmlbeans.impl.values.XmlComplexContentImpl implements arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.TelephoneNumberDocument
{
    private static final long serialVersionUID = 1L;
    
    public TelephoneNumberDocumentImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName TELEPHONENUMBER$0 = 
        new javax.xml.namespace.QName("urn:oasis:names:tc:ebxml-regrep:xsd:rim:3.0", "TelephoneNumber");
    
    
    /**
     * Gets the "TelephoneNumber" element
     */
    public arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.TelephoneNumberType getTelephoneNumber()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.TelephoneNumberType target = null;
            target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.TelephoneNumberType)get_store().find_element_user(TELEPHONENUMBER$0, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * Sets the "TelephoneNumber" element
     */
    public void setTelephoneNumber(arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.TelephoneNumberType telephoneNumber)
    {
        generatedSetterHelperImpl(telephoneNumber, TELEPHONENUMBER$0, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
    }
    
    /**
     * Appends and returns a new empty "TelephoneNumber" element
     */
    public arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.TelephoneNumberType addNewTelephoneNumber()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.TelephoneNumberType target = null;
            target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.TelephoneNumberType)get_store().add_element_user(TELEPHONENUMBER$0);
            return target;
        }
    }
}

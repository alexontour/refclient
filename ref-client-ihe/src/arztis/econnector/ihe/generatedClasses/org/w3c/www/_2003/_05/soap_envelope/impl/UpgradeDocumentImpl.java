/*
 * An XML document type.
 * Localname: Upgrade
 * Namespace: http://www.w3.org/2003/05/soap-envelope
 * Java type: arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.UpgradeDocument
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.impl;
/**
 * A document containing one Upgrade(@http://www.w3.org/2003/05/soap-envelope) element.
 *
 * This is a complex type.
 */
public class UpgradeDocumentImpl extends org.apache.xmlbeans.impl.values.XmlComplexContentImpl implements arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.UpgradeDocument
{
    private static final long serialVersionUID = 1L;
    
    public UpgradeDocumentImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName UPGRADE$0 = 
        new javax.xml.namespace.QName("http://www.w3.org/2003/05/soap-envelope", "Upgrade");
    
    
    /**
     * Gets the "Upgrade" element
     */
    public arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.UpgradeType getUpgrade()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.UpgradeType target = null;
            target = (arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.UpgradeType)get_store().find_element_user(UPGRADE$0, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * Sets the "Upgrade" element
     */
    public void setUpgrade(arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.UpgradeType upgrade)
    {
        generatedSetterHelperImpl(upgrade, UPGRADE$0, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
    }
    
    /**
     * Appends and returns a new empty "Upgrade" element
     */
    public arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.UpgradeType addNewUpgrade()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.UpgradeType target = null;
            target = (arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.UpgradeType)get_store().add_element_user(UPGRADE$0);
            return target;
        }
    }
}

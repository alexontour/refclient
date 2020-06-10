/*
 * XML Type:  ExternalLinkType
 * Namespace: urn:oasis:names:tc:ebxml-regrep:xsd:rim:3.0
 * Java type: arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ExternalLinkType
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.impl;
/**
 * An XML ExternalLinkType(@urn:oasis:names:tc:ebxml-regrep:xsd:rim:3.0).
 *
 * This is a complex type.
 */
public class ExternalLinkTypeImpl extends arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.impl.RegistryObjectTypeImpl implements arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ExternalLinkType
{
    private static final long serialVersionUID = 1L;
    
    public ExternalLinkTypeImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName EXTERNALURI$0 = 
        new javax.xml.namespace.QName("", "externalURI");
    
    
    /**
     * Gets the "externalURI" attribute
     */
    public java.lang.String getExternalURI()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(EXTERNALURI$0);
            if (target == null)
            {
                return null;
            }
            return target.getStringValue();
        }
    }
    
    /**
     * Gets (as xml) the "externalURI" attribute
     */
    public org.apache.xmlbeans.XmlAnyURI xgetExternalURI()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.XmlAnyURI target = null;
            target = (org.apache.xmlbeans.XmlAnyURI)get_store().find_attribute_user(EXTERNALURI$0);
            return target;
        }
    }
    
    /**
     * Sets the "externalURI" attribute
     */
    public void setExternalURI(java.lang.String externalURI)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(EXTERNALURI$0);
            if (target == null)
            {
                target = (org.apache.xmlbeans.SimpleValue)get_store().add_attribute_user(EXTERNALURI$0);
            }
            target.setStringValue(externalURI);
        }
    }
    
    /**
     * Sets (as xml) the "externalURI" attribute
     */
    public void xsetExternalURI(org.apache.xmlbeans.XmlAnyURI externalURI)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.XmlAnyURI target = null;
            target = (org.apache.xmlbeans.XmlAnyURI)get_store().find_attribute_user(EXTERNALURI$0);
            if (target == null)
            {
                target = (org.apache.xmlbeans.XmlAnyURI)get_store().add_attribute_user(EXTERNALURI$0);
            }
            target.set(externalURI);
        }
    }
}

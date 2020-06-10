/*
 * XML Type:  SignedDocumentType
 * Namespace: urn:tiani-spirit:ts
 * Java type: arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.SignedDocumentType
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.impl;
/**
 * An XML SignedDocumentType(@urn:tiani-spirit:ts).
 *
 * This is a complex type.
 */
public class SignedDocumentTypeImpl extends org.apache.xmlbeans.impl.values.XmlComplexContentImpl implements arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.SignedDocumentType
{
    private static final long serialVersionUID = 1L;
    
    public SignedDocumentTypeImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName ID$0 = 
        new javax.xml.namespace.QName("", "id");
    private static final javax.xml.namespace.QName CREATIONDATETIME$2 = 
        new javax.xml.namespace.QName("", "creationDateTime");
    
    
    /**
     * Gets the "id" attribute
     */
    public java.lang.String getId()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(ID$0);
            if (target == null)
            {
                return null;
            }
            return target.getStringValue();
        }
    }
    
    /**
     * Gets (as xml) the "id" attribute
     */
    public org.apache.xmlbeans.XmlAnyURI xgetId()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.XmlAnyURI target = null;
            target = (org.apache.xmlbeans.XmlAnyURI)get_store().find_attribute_user(ID$0);
            return target;
        }
    }
    
    /**
     * Sets the "id" attribute
     */
    public void setId(java.lang.String id)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(ID$0);
            if (target == null)
            {
                target = (org.apache.xmlbeans.SimpleValue)get_store().add_attribute_user(ID$0);
            }
            target.setStringValue(id);
        }
    }
    
    /**
     * Sets (as xml) the "id" attribute
     */
    public void xsetId(org.apache.xmlbeans.XmlAnyURI id)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.XmlAnyURI target = null;
            target = (org.apache.xmlbeans.XmlAnyURI)get_store().find_attribute_user(ID$0);
            if (target == null)
            {
                target = (org.apache.xmlbeans.XmlAnyURI)get_store().add_attribute_user(ID$0);
            }
            target.set(id);
        }
    }
    
    /**
     * Gets the "creationDateTime" attribute
     */
    public java.util.Calendar getCreationDateTime()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(CREATIONDATETIME$2);
            if (target == null)
            {
                return null;
            }
            return target.getCalendarValue();
        }
    }
    
    /**
     * Gets (as xml) the "creationDateTime" attribute
     */
    public org.apache.xmlbeans.XmlDateTime xgetCreationDateTime()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.XmlDateTime target = null;
            target = (org.apache.xmlbeans.XmlDateTime)get_store().find_attribute_user(CREATIONDATETIME$2);
            return target;
        }
    }
    
    /**
     * Sets the "creationDateTime" attribute
     */
    public void setCreationDateTime(java.util.Calendar creationDateTime)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(CREATIONDATETIME$2);
            if (target == null)
            {
                target = (org.apache.xmlbeans.SimpleValue)get_store().add_attribute_user(CREATIONDATETIME$2);
            }
            target.setCalendarValue(creationDateTime);
        }
    }
    
    /**
     * Sets (as xml) the "creationDateTime" attribute
     */
    public void xsetCreationDateTime(org.apache.xmlbeans.XmlDateTime creationDateTime)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.XmlDateTime target = null;
            target = (org.apache.xmlbeans.XmlDateTime)get_store().find_attribute_user(CREATIONDATETIME$2);
            if (target == null)
            {
                target = (org.apache.xmlbeans.XmlDateTime)get_store().add_attribute_user(CREATIONDATETIME$2);
            }
            target.set(creationDateTime);
        }
    }
}

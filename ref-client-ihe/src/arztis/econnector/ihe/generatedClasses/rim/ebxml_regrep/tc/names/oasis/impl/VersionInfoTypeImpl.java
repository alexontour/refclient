/*
 * XML Type:  VersionInfoType
 * Namespace: urn:oasis:names:tc:ebxml-regrep:xsd:rim:3.0
 * Java type: arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.VersionInfoType
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.impl;
/**
 * An XML VersionInfoType(@urn:oasis:names:tc:ebxml-regrep:xsd:rim:3.0).
 *
 * This is a complex type.
 */
public class VersionInfoTypeImpl extends org.apache.xmlbeans.impl.values.XmlComplexContentImpl implements arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.VersionInfoType
{
    private static final long serialVersionUID = 1L;
    
    public VersionInfoTypeImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName VERSIONNAME$0 = 
        new javax.xml.namespace.QName("", "versionName");
    private static final javax.xml.namespace.QName COMMENT$2 = 
        new javax.xml.namespace.QName("", "comment");
    
    
    /**
     * Gets the "versionName" attribute
     */
    public java.lang.String getVersionName()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(VERSIONNAME$0);
            if (target == null)
            {
                target = (org.apache.xmlbeans.SimpleValue)get_default_attribute_value(VERSIONNAME$0);
            }
            if (target == null)
            {
                return null;
            }
            return target.getStringValue();
        }
    }
    
    /**
     * Gets (as xml) the "versionName" attribute
     */
    public arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.String16 xgetVersionName()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.String16 target = null;
            target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.String16)get_store().find_attribute_user(VERSIONNAME$0);
            if (target == null)
            {
                target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.String16)get_default_attribute_value(VERSIONNAME$0);
            }
            return target;
        }
    }
    
    /**
     * True if has "versionName" attribute
     */
    public boolean isSetVersionName()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().find_attribute_user(VERSIONNAME$0) != null;
        }
    }
    
    /**
     * Sets the "versionName" attribute
     */
    public void setVersionName(java.lang.String versionName)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(VERSIONNAME$0);
            if (target == null)
            {
                target = (org.apache.xmlbeans.SimpleValue)get_store().add_attribute_user(VERSIONNAME$0);
            }
            target.setStringValue(versionName);
        }
    }
    
    /**
     * Sets (as xml) the "versionName" attribute
     */
    public void xsetVersionName(arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.String16 versionName)
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.String16 target = null;
            target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.String16)get_store().find_attribute_user(VERSIONNAME$0);
            if (target == null)
            {
                target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.String16)get_store().add_attribute_user(VERSIONNAME$0);
            }
            target.set(versionName);
        }
    }
    
    /**
     * Unsets the "versionName" attribute
     */
    public void unsetVersionName()
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_attribute(VERSIONNAME$0);
        }
    }
    
    /**
     * Gets the "comment" attribute
     */
    public java.lang.String getComment()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(COMMENT$2);
            if (target == null)
            {
                return null;
            }
            return target.getStringValue();
        }
    }
    
    /**
     * Gets (as xml) the "comment" attribute
     */
    public org.apache.xmlbeans.XmlString xgetComment()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.XmlString target = null;
            target = (org.apache.xmlbeans.XmlString)get_store().find_attribute_user(COMMENT$2);
            return target;
        }
    }
    
    /**
     * True if has "comment" attribute
     */
    public boolean isSetComment()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().find_attribute_user(COMMENT$2) != null;
        }
    }
    
    /**
     * Sets the "comment" attribute
     */
    public void setComment(java.lang.String comment)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(COMMENT$2);
            if (target == null)
            {
                target = (org.apache.xmlbeans.SimpleValue)get_store().add_attribute_user(COMMENT$2);
            }
            target.setStringValue(comment);
        }
    }
    
    /**
     * Sets (as xml) the "comment" attribute
     */
    public void xsetComment(org.apache.xmlbeans.XmlString comment)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.XmlString target = null;
            target = (org.apache.xmlbeans.XmlString)get_store().find_attribute_user(COMMENT$2);
            if (target == null)
            {
                target = (org.apache.xmlbeans.XmlString)get_store().add_attribute_user(COMMENT$2);
            }
            target.set(comment);
        }
    }
    
    /**
     * Unsets the "comment" attribute
     */
    public void unsetComment()
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_attribute(COMMENT$2);
        }
    }
}

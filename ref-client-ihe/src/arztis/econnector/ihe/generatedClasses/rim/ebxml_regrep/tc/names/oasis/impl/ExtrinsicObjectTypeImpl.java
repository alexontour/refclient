/*
 * XML Type:  ExtrinsicObjectType
 * Namespace: urn:oasis:names:tc:ebxml-regrep:xsd:rim:3.0
 * Java type: arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ExtrinsicObjectType
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.impl;
/**
 * An XML ExtrinsicObjectType(@urn:oasis:names:tc:ebxml-regrep:xsd:rim:3.0).
 *
 * This is a complex type.
 */
public class ExtrinsicObjectTypeImpl extends arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.impl.RegistryObjectTypeImpl implements arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ExtrinsicObjectType
{
    private static final long serialVersionUID = 1L;
    
    public ExtrinsicObjectTypeImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName CONTENTVERSIONINFO$0 = 
        new javax.xml.namespace.QName("urn:oasis:names:tc:ebxml-regrep:xsd:rim:3.0", "ContentVersionInfo");
    private static final javax.xml.namespace.QName MIMETYPE$2 = 
        new javax.xml.namespace.QName("", "mimeType");
    private static final javax.xml.namespace.QName ISOPAQUE$4 = 
        new javax.xml.namespace.QName("", "isOpaque");
    
    
    /**
     * Gets the "ContentVersionInfo" element
     */
    public arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.VersionInfoType getContentVersionInfo()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.VersionInfoType target = null;
            target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.VersionInfoType)get_store().find_element_user(CONTENTVERSIONINFO$0, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * True if has "ContentVersionInfo" element
     */
    public boolean isSetContentVersionInfo()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().count_elements(CONTENTVERSIONINFO$0) != 0;
        }
    }
    
    /**
     * Sets the "ContentVersionInfo" element
     */
    public void setContentVersionInfo(arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.VersionInfoType contentVersionInfo)
    {
        generatedSetterHelperImpl(contentVersionInfo, CONTENTVERSIONINFO$0, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
    }
    
    /**
     * Appends and returns a new empty "ContentVersionInfo" element
     */
    public arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.VersionInfoType addNewContentVersionInfo()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.VersionInfoType target = null;
            target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.VersionInfoType)get_store().add_element_user(CONTENTVERSIONINFO$0);
            return target;
        }
    }
    
    /**
     * Unsets the "ContentVersionInfo" element
     */
    public void unsetContentVersionInfo()
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_element(CONTENTVERSIONINFO$0, 0);
        }
    }
    
    /**
     * Gets the "mimeType" attribute
     */
    public java.lang.String getMimeType()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(MIMETYPE$2);
            if (target == null)
            {
                target = (org.apache.xmlbeans.SimpleValue)get_default_attribute_value(MIMETYPE$2);
            }
            if (target == null)
            {
                return null;
            }
            return target.getStringValue();
        }
    }
    
    /**
     * Gets (as xml) the "mimeType" attribute
     */
    public arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.LongName xgetMimeType()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.LongName target = null;
            target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.LongName)get_store().find_attribute_user(MIMETYPE$2);
            if (target == null)
            {
                target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.LongName)get_default_attribute_value(MIMETYPE$2);
            }
            return target;
        }
    }
    
    /**
     * True if has "mimeType" attribute
     */
    public boolean isSetMimeType()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().find_attribute_user(MIMETYPE$2) != null;
        }
    }
    
    /**
     * Sets the "mimeType" attribute
     */
    public void setMimeType(java.lang.String mimeType)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(MIMETYPE$2);
            if (target == null)
            {
                target = (org.apache.xmlbeans.SimpleValue)get_store().add_attribute_user(MIMETYPE$2);
            }
            target.setStringValue(mimeType);
        }
    }
    
    /**
     * Sets (as xml) the "mimeType" attribute
     */
    public void xsetMimeType(arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.LongName mimeType)
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.LongName target = null;
            target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.LongName)get_store().find_attribute_user(MIMETYPE$2);
            if (target == null)
            {
                target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.LongName)get_store().add_attribute_user(MIMETYPE$2);
            }
            target.set(mimeType);
        }
    }
    
    /**
     * Unsets the "mimeType" attribute
     */
    public void unsetMimeType()
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_attribute(MIMETYPE$2);
        }
    }
    
    /**
     * Gets the "isOpaque" attribute
     */
    public boolean getIsOpaque()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(ISOPAQUE$4);
            if (target == null)
            {
                target = (org.apache.xmlbeans.SimpleValue)get_default_attribute_value(ISOPAQUE$4);
            }
            if (target == null)
            {
                return false;
            }
            return target.getBooleanValue();
        }
    }
    
    /**
     * Gets (as xml) the "isOpaque" attribute
     */
    public org.apache.xmlbeans.XmlBoolean xgetIsOpaque()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.XmlBoolean target = null;
            target = (org.apache.xmlbeans.XmlBoolean)get_store().find_attribute_user(ISOPAQUE$4);
            if (target == null)
            {
                target = (org.apache.xmlbeans.XmlBoolean)get_default_attribute_value(ISOPAQUE$4);
            }
            return target;
        }
    }
    
    /**
     * True if has "isOpaque" attribute
     */
    public boolean isSetIsOpaque()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().find_attribute_user(ISOPAQUE$4) != null;
        }
    }
    
    /**
     * Sets the "isOpaque" attribute
     */
    public void setIsOpaque(boolean isOpaque)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(ISOPAQUE$4);
            if (target == null)
            {
                target = (org.apache.xmlbeans.SimpleValue)get_store().add_attribute_user(ISOPAQUE$4);
            }
            target.setBooleanValue(isOpaque);
        }
    }
    
    /**
     * Sets (as xml) the "isOpaque" attribute
     */
    public void xsetIsOpaque(org.apache.xmlbeans.XmlBoolean isOpaque)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.XmlBoolean target = null;
            target = (org.apache.xmlbeans.XmlBoolean)get_store().find_attribute_user(ISOPAQUE$4);
            if (target == null)
            {
                target = (org.apache.xmlbeans.XmlBoolean)get_store().add_attribute_user(ISOPAQUE$4);
            }
            target.set(isOpaque);
        }
    }
    
    /**
     * Unsets the "isOpaque" attribute
     */
    public void unsetIsOpaque()
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_attribute(ISOPAQUE$4);
        }
    }
}

/*
 * XML Type:  RegistryRequestType
 * Namespace: urn:oasis:names:tc:ebxml-regrep:xsd:rs:3.0
 * Java type: arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryRequestType
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.impl;
/**
 * An XML RegistryRequestType(@urn:oasis:names:tc:ebxml-regrep:xsd:rs:3.0).
 *
 * This is a complex type.
 */
public class RegistryRequestTypeImpl extends org.apache.xmlbeans.impl.values.XmlComplexContentImpl implements arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryRequestType
{
    private static final long serialVersionUID = 1L;
    
    public RegistryRequestTypeImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName REQUESTSLOTLIST$0 = 
        new javax.xml.namespace.QName("urn:oasis:names:tc:ebxml-regrep:xsd:rs:3.0", "RequestSlotList");
    private static final javax.xml.namespace.QName ID$2 = 
        new javax.xml.namespace.QName("", "id");
    private static final javax.xml.namespace.QName COMMENT$4 = 
        new javax.xml.namespace.QName("", "comment");
    
    
    /**
     * Gets the "RequestSlotList" element
     */
    public arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.SlotListType getRequestSlotList()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.SlotListType target = null;
            target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.SlotListType)get_store().find_element_user(REQUESTSLOTLIST$0, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * True if has "RequestSlotList" element
     */
    public boolean isSetRequestSlotList()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().count_elements(REQUESTSLOTLIST$0) != 0;
        }
    }
    
    /**
     * Sets the "RequestSlotList" element
     */
    public void setRequestSlotList(arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.SlotListType requestSlotList)
    {
        generatedSetterHelperImpl(requestSlotList, REQUESTSLOTLIST$0, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
    }
    
    /**
     * Appends and returns a new empty "RequestSlotList" element
     */
    public arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.SlotListType addNewRequestSlotList()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.SlotListType target = null;
            target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.SlotListType)get_store().add_element_user(REQUESTSLOTLIST$0);
            return target;
        }
    }
    
    /**
     * Unsets the "RequestSlotList" element
     */
    public void unsetRequestSlotList()
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_element(REQUESTSLOTLIST$0, 0);
        }
    }
    
    /**
     * Gets the "id" attribute
     */
    public java.lang.String getId()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(ID$2);
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
    public arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.ELGARegistryStoredQueryIDType xgetId()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.ELGARegistryStoredQueryIDType target = null;
            target = (arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.ELGARegistryStoredQueryIDType)get_store().find_attribute_user(ID$2);
            return target;
        }
    }
    
    /**
     * True if has "id" attribute
     */
    public boolean isSetId()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().find_attribute_user(ID$2) != null;
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
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(ID$2);
            if (target == null)
            {
                target = (org.apache.xmlbeans.SimpleValue)get_store().add_attribute_user(ID$2);
            }
            target.setStringValue(id);
        }
    }
    
    /**
     * Sets (as xml) the "id" attribute
     */
    public void xsetId(arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.ELGARegistryStoredQueryIDType id)
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.ELGARegistryStoredQueryIDType target = null;
            target = (arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.ELGARegistryStoredQueryIDType)get_store().find_attribute_user(ID$2);
            if (target == null)
            {
                target = (arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.ELGARegistryStoredQueryIDType)get_store().add_attribute_user(ID$2);
            }
            target.set(id);
        }
    }
    
    /**
     * Unsets the "id" attribute
     */
    public void unsetId()
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_attribute(ID$2);
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
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(COMMENT$4);
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
            target = (org.apache.xmlbeans.XmlString)get_store().find_attribute_user(COMMENT$4);
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
            return get_store().find_attribute_user(COMMENT$4) != null;
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
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(COMMENT$4);
            if (target == null)
            {
                target = (org.apache.xmlbeans.SimpleValue)get_store().add_attribute_user(COMMENT$4);
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
            target = (org.apache.xmlbeans.XmlString)get_store().find_attribute_user(COMMENT$4);
            if (target == null)
            {
                target = (org.apache.xmlbeans.XmlString)get_store().add_attribute_user(COMMENT$4);
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
            get_store().remove_attribute(COMMENT$4);
        }
    }
}

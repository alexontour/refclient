/*
 * XML Type:  RegistryResponseType
 * Namespace: urn:oasis:names:tc:ebxml-regrep:xsd:rs:3.0
 * Java type: arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryResponseType
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.impl;
/**
 * An XML RegistryResponseType(@urn:oasis:names:tc:ebxml-regrep:xsd:rs:3.0).
 *
 * This is a complex type.
 */
public class RegistryResponseTypeImpl extends org.apache.xmlbeans.impl.values.XmlComplexContentImpl implements arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryResponseType
{
    private static final long serialVersionUID = 1L;
    
    public RegistryResponseTypeImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName RESPONSESLOTLIST$0 = 
        new javax.xml.namespace.QName("urn:oasis:names:tc:ebxml-regrep:xsd:rs:3.0", "ResponseSlotList");
    private static final javax.xml.namespace.QName REGISTRYERRORLIST$2 = 
        new javax.xml.namespace.QName("urn:oasis:names:tc:ebxml-regrep:xsd:rs:3.0", "RegistryErrorList");
    private static final javax.xml.namespace.QName STATUS$4 = 
        new javax.xml.namespace.QName("", "status");
    private static final javax.xml.namespace.QName REQUESTID$6 = 
        new javax.xml.namespace.QName("", "requestId");
    
    
    /**
     * Gets the "ResponseSlotList" element
     */
    public arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.SlotListType getResponseSlotList()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.SlotListType target = null;
            target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.SlotListType)get_store().find_element_user(RESPONSESLOTLIST$0, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * True if has "ResponseSlotList" element
     */
    public boolean isSetResponseSlotList()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().count_elements(RESPONSESLOTLIST$0) != 0;
        }
    }
    
    /**
     * Sets the "ResponseSlotList" element
     */
    public void setResponseSlotList(arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.SlotListType responseSlotList)
    {
        generatedSetterHelperImpl(responseSlotList, RESPONSESLOTLIST$0, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
    }
    
    /**
     * Appends and returns a new empty "ResponseSlotList" element
     */
    public arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.SlotListType addNewResponseSlotList()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.SlotListType target = null;
            target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.SlotListType)get_store().add_element_user(RESPONSESLOTLIST$0);
            return target;
        }
    }
    
    /**
     * Unsets the "ResponseSlotList" element
     */
    public void unsetResponseSlotList()
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_element(RESPONSESLOTLIST$0, 0);
        }
    }
    
    /**
     * Gets the "RegistryErrorList" element
     */
    public arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryErrorListDocument.RegistryErrorList getRegistryErrorList()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryErrorListDocument.RegistryErrorList target = null;
            target = (arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryErrorListDocument.RegistryErrorList)get_store().find_element_user(REGISTRYERRORLIST$2, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * True if has "RegistryErrorList" element
     */
    public boolean isSetRegistryErrorList()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().count_elements(REGISTRYERRORLIST$2) != 0;
        }
    }
    
    /**
     * Sets the "RegistryErrorList" element
     */
    public void setRegistryErrorList(arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryErrorListDocument.RegistryErrorList registryErrorList)
    {
        generatedSetterHelperImpl(registryErrorList, REGISTRYERRORLIST$2, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
    }
    
    /**
     * Appends and returns a new empty "RegistryErrorList" element
     */
    public arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryErrorListDocument.RegistryErrorList addNewRegistryErrorList()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryErrorListDocument.RegistryErrorList target = null;
            target = (arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryErrorListDocument.RegistryErrorList)get_store().add_element_user(REGISTRYERRORLIST$2);
            return target;
        }
    }
    
    /**
     * Unsets the "RegistryErrorList" element
     */
    public void unsetRegistryErrorList()
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_element(REGISTRYERRORLIST$2, 0);
        }
    }
    
    /**
     * Gets the "status" attribute
     */
    public java.lang.String getStatus()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(STATUS$4);
            if (target == null)
            {
                return null;
            }
            return target.getStringValue();
        }
    }
    
    /**
     * Gets (as xml) the "status" attribute
     */
    public arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI xgetStatus()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI target = null;
            target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI)get_store().find_attribute_user(STATUS$4);
            return target;
        }
    }
    
    /**
     * Sets the "status" attribute
     */
    public void setStatus(java.lang.String status)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(STATUS$4);
            if (target == null)
            {
                target = (org.apache.xmlbeans.SimpleValue)get_store().add_attribute_user(STATUS$4);
            }
            target.setStringValue(status);
        }
    }
    
    /**
     * Sets (as xml) the "status" attribute
     */
    public void xsetStatus(arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI status)
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI target = null;
            target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI)get_store().find_attribute_user(STATUS$4);
            if (target == null)
            {
                target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI)get_store().add_attribute_user(STATUS$4);
            }
            target.set(status);
        }
    }
    
    /**
     * Gets the "requestId" attribute
     */
    public java.lang.String getRequestId()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(REQUESTID$6);
            if (target == null)
            {
                return null;
            }
            return target.getStringValue();
        }
    }
    
    /**
     * Gets (as xml) the "requestId" attribute
     */
    public org.apache.xmlbeans.XmlAnyURI xgetRequestId()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.XmlAnyURI target = null;
            target = (org.apache.xmlbeans.XmlAnyURI)get_store().find_attribute_user(REQUESTID$6);
            return target;
        }
    }
    
    /**
     * True if has "requestId" attribute
     */
    public boolean isSetRequestId()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().find_attribute_user(REQUESTID$6) != null;
        }
    }
    
    /**
     * Sets the "requestId" attribute
     */
    public void setRequestId(java.lang.String requestId)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(REQUESTID$6);
            if (target == null)
            {
                target = (org.apache.xmlbeans.SimpleValue)get_store().add_attribute_user(REQUESTID$6);
            }
            target.setStringValue(requestId);
        }
    }
    
    /**
     * Sets (as xml) the "requestId" attribute
     */
    public void xsetRequestId(org.apache.xmlbeans.XmlAnyURI requestId)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.XmlAnyURI target = null;
            target = (org.apache.xmlbeans.XmlAnyURI)get_store().find_attribute_user(REQUESTID$6);
            if (target == null)
            {
                target = (org.apache.xmlbeans.XmlAnyURI)get_store().add_attribute_user(REQUESTID$6);
            }
            target.set(requestId);
        }
    }
    
    /**
     * Unsets the "requestId" attribute
     */
    public void unsetRequestId()
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_attribute(REQUESTID$6);
        }
    }
}

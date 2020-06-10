/*
 * XML Type:  ElgaTokenType
 * Namespace: urn:tiani-spirit:ts
 * Java type: arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ElgaTokenType
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.impl;
/**
 * An XML ElgaTokenType(@urn:tiani-spirit:ts).
 *
 * This is a complex type.
 */
public class ElgaTokenTypeImpl extends org.apache.xmlbeans.impl.values.XmlComplexContentImpl implements arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ElgaTokenType
{
    private static final long serialVersionUID = 1L;
    
    public ElgaTokenTypeImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName STATEID$0 = 
        new javax.xml.namespace.QName("urn:tiani-spirit:ts", "StateID");
    private static final javax.xml.namespace.QName ISOPTOUT$2 = 
        new javax.xml.namespace.QName("urn:tiani-spirit:ts", "IsOptOut");
    private static final javax.xml.namespace.QName SERVICERESTRICTIONLIST$4 = 
        new javax.xml.namespace.QName("urn:tiani-spirit:ts", "ServiceRestrictionList");
    private static final javax.xml.namespace.QName SERVICEOPTOUTLIST$6 = 
        new javax.xml.namespace.QName("urn:tiani-spirit:ts", "ServiceOptOutList");
    private static final javax.xml.namespace.QName SERVICEDELETIONLIST$8 = 
        new javax.xml.namespace.QName("urn:tiani-spirit:ts", "ServiceDeletionList");
    private static final javax.xml.namespace.QName PROVIDERRESTRICTIONLIST$10 = 
        new javax.xml.namespace.QName("urn:tiani-spirit:ts", "ProviderRestrictionList");
    private static final javax.xml.namespace.QName DOCUMENTRESTRICTIONLIST$12 = 
        new javax.xml.namespace.QName("urn:tiani-spirit:ts", "DocumentRestrictionList");
    private static final javax.xml.namespace.QName DOCUMENTDELETIONLIST$14 = 
        new javax.xml.namespace.QName("urn:tiani-spirit:ts", "DocumentDeletionList");
    private static final javax.xml.namespace.QName SIGNEDDOCUMENTLIST$16 = 
        new javax.xml.namespace.QName("urn:tiani-spirit:ts", "SignedDocumentList");
    private static final javax.xml.namespace.QName SIGNEDDOCDATA$18 = 
        new javax.xml.namespace.QName("urn:tiani-spirit:ts", "SignedDocData");
    
    
    /**
     * Gets the "StateID" element
     */
    public java.lang.String getStateID()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_element_user(STATEID$0, 0);
            if (target == null)
            {
                return null;
            }
            return target.getStringValue();
        }
    }
    
    /**
     * Gets (as xml) the "StateID" element
     */
    public org.apache.xmlbeans.XmlString xgetStateID()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.XmlString target = null;
            target = (org.apache.xmlbeans.XmlString)get_store().find_element_user(STATEID$0, 0);
            return target;
        }
    }
    
    /**
     * Tests for nil "StateID" element
     */
    public boolean isNilStateID()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.XmlString target = null;
            target = (org.apache.xmlbeans.XmlString)get_store().find_element_user(STATEID$0, 0);
            if (target == null) return false;
            return target.isNil();
        }
    }
    
    /**
     * Sets the "StateID" element
     */
    public void setStateID(java.lang.String stateID)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_element_user(STATEID$0, 0);
            if (target == null)
            {
                target = (org.apache.xmlbeans.SimpleValue)get_store().add_element_user(STATEID$0);
            }
            target.setStringValue(stateID);
        }
    }
    
    /**
     * Sets (as xml) the "StateID" element
     */
    public void xsetStateID(org.apache.xmlbeans.XmlString stateID)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.XmlString target = null;
            target = (org.apache.xmlbeans.XmlString)get_store().find_element_user(STATEID$0, 0);
            if (target == null)
            {
                target = (org.apache.xmlbeans.XmlString)get_store().add_element_user(STATEID$0);
            }
            target.set(stateID);
        }
    }
    
    /**
     * Nils the "StateID" element
     */
    public void setNilStateID()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.XmlString target = null;
            target = (org.apache.xmlbeans.XmlString)get_store().find_element_user(STATEID$0, 0);
            if (target == null)
            {
                target = (org.apache.xmlbeans.XmlString)get_store().add_element_user(STATEID$0);
            }
            target.setNil();
        }
    }
    
    /**
     * Gets the "IsOptOut" element
     */
    public boolean getIsOptOut()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_element_user(ISOPTOUT$2, 0);
            if (target == null)
            {
                return false;
            }
            return target.getBooleanValue();
        }
    }
    
    /**
     * Gets (as xml) the "IsOptOut" element
     */
    public org.apache.xmlbeans.XmlBoolean xgetIsOptOut()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.XmlBoolean target = null;
            target = (org.apache.xmlbeans.XmlBoolean)get_store().find_element_user(ISOPTOUT$2, 0);
            return target;
        }
    }
    
    /**
     * Tests for nil "IsOptOut" element
     */
    public boolean isNilIsOptOut()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.XmlBoolean target = null;
            target = (org.apache.xmlbeans.XmlBoolean)get_store().find_element_user(ISOPTOUT$2, 0);
            if (target == null) return false;
            return target.isNil();
        }
    }
    
    /**
     * Sets the "IsOptOut" element
     */
    public void setIsOptOut(boolean isOptOut)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_element_user(ISOPTOUT$2, 0);
            if (target == null)
            {
                target = (org.apache.xmlbeans.SimpleValue)get_store().add_element_user(ISOPTOUT$2);
            }
            target.setBooleanValue(isOptOut);
        }
    }
    
    /**
     * Sets (as xml) the "IsOptOut" element
     */
    public void xsetIsOptOut(org.apache.xmlbeans.XmlBoolean isOptOut)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.XmlBoolean target = null;
            target = (org.apache.xmlbeans.XmlBoolean)get_store().find_element_user(ISOPTOUT$2, 0);
            if (target == null)
            {
                target = (org.apache.xmlbeans.XmlBoolean)get_store().add_element_user(ISOPTOUT$2);
            }
            target.set(isOptOut);
        }
    }
    
    /**
     * Nils the "IsOptOut" element
     */
    public void setNilIsOptOut()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.XmlBoolean target = null;
            target = (org.apache.xmlbeans.XmlBoolean)get_store().find_element_user(ISOPTOUT$2, 0);
            if (target == null)
            {
                target = (org.apache.xmlbeans.XmlBoolean)get_store().add_element_user(ISOPTOUT$2);
            }
            target.setNil();
        }
    }
    
    /**
     * Gets the "ServiceRestrictionList" element
     */
    public arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceRestrictionListType getServiceRestrictionList()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceRestrictionListType target = null;
            target = (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceRestrictionListType)get_store().find_element_user(SERVICERESTRICTIONLIST$4, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * Tests for nil "ServiceRestrictionList" element
     */
    public boolean isNilServiceRestrictionList()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceRestrictionListType target = null;
            target = (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceRestrictionListType)get_store().find_element_user(SERVICERESTRICTIONLIST$4, 0);
            if (target == null) return false;
            return target.isNil();
        }
    }
    
    /**
     * Sets the "ServiceRestrictionList" element
     */
    public void setServiceRestrictionList(arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceRestrictionListType serviceRestrictionList)
    {
        generatedSetterHelperImpl(serviceRestrictionList, SERVICERESTRICTIONLIST$4, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
    }
    
    /**
     * Appends and returns a new empty "ServiceRestrictionList" element
     */
    public arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceRestrictionListType addNewServiceRestrictionList()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceRestrictionListType target = null;
            target = (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceRestrictionListType)get_store().add_element_user(SERVICERESTRICTIONLIST$4);
            return target;
        }
    }
    
    /**
     * Nils the "ServiceRestrictionList" element
     */
    public void setNilServiceRestrictionList()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceRestrictionListType target = null;
            target = (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceRestrictionListType)get_store().find_element_user(SERVICERESTRICTIONLIST$4, 0);
            if (target == null)
            {
                target = (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceRestrictionListType)get_store().add_element_user(SERVICERESTRICTIONLIST$4);
            }
            target.setNil();
        }
    }
    
    /**
     * Gets the "ServiceOptOutList" element
     */
    public arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceOptOutListType getServiceOptOutList()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceOptOutListType target = null;
            target = (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceOptOutListType)get_store().find_element_user(SERVICEOPTOUTLIST$6, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * Tests for nil "ServiceOptOutList" element
     */
    public boolean isNilServiceOptOutList()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceOptOutListType target = null;
            target = (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceOptOutListType)get_store().find_element_user(SERVICEOPTOUTLIST$6, 0);
            if (target == null) return false;
            return target.isNil();
        }
    }
    
    /**
     * Sets the "ServiceOptOutList" element
     */
    public void setServiceOptOutList(arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceOptOutListType serviceOptOutList)
    {
        generatedSetterHelperImpl(serviceOptOutList, SERVICEOPTOUTLIST$6, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
    }
    
    /**
     * Appends and returns a new empty "ServiceOptOutList" element
     */
    public arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceOptOutListType addNewServiceOptOutList()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceOptOutListType target = null;
            target = (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceOptOutListType)get_store().add_element_user(SERVICEOPTOUTLIST$6);
            return target;
        }
    }
    
    /**
     * Nils the "ServiceOptOutList" element
     */
    public void setNilServiceOptOutList()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceOptOutListType target = null;
            target = (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceOptOutListType)get_store().find_element_user(SERVICEOPTOUTLIST$6, 0);
            if (target == null)
            {
                target = (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceOptOutListType)get_store().add_element_user(SERVICEOPTOUTLIST$6);
            }
            target.setNil();
        }
    }
    
    /**
     * Gets the "ServiceDeletionList" element
     */
    public arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceDeletionListType getServiceDeletionList()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceDeletionListType target = null;
            target = (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceDeletionListType)get_store().find_element_user(SERVICEDELETIONLIST$8, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * Tests for nil "ServiceDeletionList" element
     */
    public boolean isNilServiceDeletionList()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceDeletionListType target = null;
            target = (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceDeletionListType)get_store().find_element_user(SERVICEDELETIONLIST$8, 0);
            if (target == null) return false;
            return target.isNil();
        }
    }
    
    /**
     * Sets the "ServiceDeletionList" element
     */
    public void setServiceDeletionList(arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceDeletionListType serviceDeletionList)
    {
        generatedSetterHelperImpl(serviceDeletionList, SERVICEDELETIONLIST$8, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
    }
    
    /**
     * Appends and returns a new empty "ServiceDeletionList" element
     */
    public arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceDeletionListType addNewServiceDeletionList()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceDeletionListType target = null;
            target = (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceDeletionListType)get_store().add_element_user(SERVICEDELETIONLIST$8);
            return target;
        }
    }
    
    /**
     * Nils the "ServiceDeletionList" element
     */
    public void setNilServiceDeletionList()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceDeletionListType target = null;
            target = (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceDeletionListType)get_store().find_element_user(SERVICEDELETIONLIST$8, 0);
            if (target == null)
            {
                target = (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceDeletionListType)get_store().add_element_user(SERVICEDELETIONLIST$8);
            }
            target.setNil();
        }
    }
    
    /**
     * Gets the "ProviderRestrictionList" element
     */
    public arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ProviderRestrictionListType getProviderRestrictionList()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ProviderRestrictionListType target = null;
            target = (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ProviderRestrictionListType)get_store().find_element_user(PROVIDERRESTRICTIONLIST$10, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * Tests for nil "ProviderRestrictionList" element
     */
    public boolean isNilProviderRestrictionList()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ProviderRestrictionListType target = null;
            target = (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ProviderRestrictionListType)get_store().find_element_user(PROVIDERRESTRICTIONLIST$10, 0);
            if (target == null) return false;
            return target.isNil();
        }
    }
    
    /**
     * Sets the "ProviderRestrictionList" element
     */
    public void setProviderRestrictionList(arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ProviderRestrictionListType providerRestrictionList)
    {
        generatedSetterHelperImpl(providerRestrictionList, PROVIDERRESTRICTIONLIST$10, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
    }
    
    /**
     * Appends and returns a new empty "ProviderRestrictionList" element
     */
    public arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ProviderRestrictionListType addNewProviderRestrictionList()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ProviderRestrictionListType target = null;
            target = (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ProviderRestrictionListType)get_store().add_element_user(PROVIDERRESTRICTIONLIST$10);
            return target;
        }
    }
    
    /**
     * Nils the "ProviderRestrictionList" element
     */
    public void setNilProviderRestrictionList()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ProviderRestrictionListType target = null;
            target = (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ProviderRestrictionListType)get_store().find_element_user(PROVIDERRESTRICTIONLIST$10, 0);
            if (target == null)
            {
                target = (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ProviderRestrictionListType)get_store().add_element_user(PROVIDERRESTRICTIONLIST$10);
            }
            target.setNil();
        }
    }
    
    /**
     * Gets the "DocumentRestrictionList" element
     */
    public arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.DocumentRestrictionListType getDocumentRestrictionList()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.DocumentRestrictionListType target = null;
            target = (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.DocumentRestrictionListType)get_store().find_element_user(DOCUMENTRESTRICTIONLIST$12, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * Tests for nil "DocumentRestrictionList" element
     */
    public boolean isNilDocumentRestrictionList()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.DocumentRestrictionListType target = null;
            target = (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.DocumentRestrictionListType)get_store().find_element_user(DOCUMENTRESTRICTIONLIST$12, 0);
            if (target == null) return false;
            return target.isNil();
        }
    }
    
    /**
     * Sets the "DocumentRestrictionList" element
     */
    public void setDocumentRestrictionList(arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.DocumentRestrictionListType documentRestrictionList)
    {
        generatedSetterHelperImpl(documentRestrictionList, DOCUMENTRESTRICTIONLIST$12, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
    }
    
    /**
     * Appends and returns a new empty "DocumentRestrictionList" element
     */
    public arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.DocumentRestrictionListType addNewDocumentRestrictionList()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.DocumentRestrictionListType target = null;
            target = (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.DocumentRestrictionListType)get_store().add_element_user(DOCUMENTRESTRICTIONLIST$12);
            return target;
        }
    }
    
    /**
     * Nils the "DocumentRestrictionList" element
     */
    public void setNilDocumentRestrictionList()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.DocumentRestrictionListType target = null;
            target = (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.DocumentRestrictionListType)get_store().find_element_user(DOCUMENTRESTRICTIONLIST$12, 0);
            if (target == null)
            {
                target = (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.DocumentRestrictionListType)get_store().add_element_user(DOCUMENTRESTRICTIONLIST$12);
            }
            target.setNil();
        }
    }
    
    /**
     * Gets the "DocumentDeletionList" element
     */
    public arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.DocumentDeletionListType getDocumentDeletionList()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.DocumentDeletionListType target = null;
            target = (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.DocumentDeletionListType)get_store().find_element_user(DOCUMENTDELETIONLIST$14, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * Tests for nil "DocumentDeletionList" element
     */
    public boolean isNilDocumentDeletionList()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.DocumentDeletionListType target = null;
            target = (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.DocumentDeletionListType)get_store().find_element_user(DOCUMENTDELETIONLIST$14, 0);
            if (target == null) return false;
            return target.isNil();
        }
    }
    
    /**
     * Sets the "DocumentDeletionList" element
     */
    public void setDocumentDeletionList(arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.DocumentDeletionListType documentDeletionList)
    {
        generatedSetterHelperImpl(documentDeletionList, DOCUMENTDELETIONLIST$14, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
    }
    
    /**
     * Appends and returns a new empty "DocumentDeletionList" element
     */
    public arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.DocumentDeletionListType addNewDocumentDeletionList()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.DocumentDeletionListType target = null;
            target = (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.DocumentDeletionListType)get_store().add_element_user(DOCUMENTDELETIONLIST$14);
            return target;
        }
    }
    
    /**
     * Nils the "DocumentDeletionList" element
     */
    public void setNilDocumentDeletionList()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.DocumentDeletionListType target = null;
            target = (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.DocumentDeletionListType)get_store().find_element_user(DOCUMENTDELETIONLIST$14, 0);
            if (target == null)
            {
                target = (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.DocumentDeletionListType)get_store().add_element_user(DOCUMENTDELETIONLIST$14);
            }
            target.setNil();
        }
    }
    
    /**
     * Gets the "SignedDocumentList" element
     */
    public arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.SignedDocumentListType getSignedDocumentList()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.SignedDocumentListType target = null;
            target = (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.SignedDocumentListType)get_store().find_element_user(SIGNEDDOCUMENTLIST$16, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * Tests for nil "SignedDocumentList" element
     */
    public boolean isNilSignedDocumentList()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.SignedDocumentListType target = null;
            target = (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.SignedDocumentListType)get_store().find_element_user(SIGNEDDOCUMENTLIST$16, 0);
            if (target == null) return false;
            return target.isNil();
        }
    }
    
    /**
     * Sets the "SignedDocumentList" element
     */
    public void setSignedDocumentList(arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.SignedDocumentListType signedDocumentList)
    {
        generatedSetterHelperImpl(signedDocumentList, SIGNEDDOCUMENTLIST$16, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
    }
    
    /**
     * Appends and returns a new empty "SignedDocumentList" element
     */
    public arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.SignedDocumentListType addNewSignedDocumentList()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.SignedDocumentListType target = null;
            target = (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.SignedDocumentListType)get_store().add_element_user(SIGNEDDOCUMENTLIST$16);
            return target;
        }
    }
    
    /**
     * Nils the "SignedDocumentList" element
     */
    public void setNilSignedDocumentList()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.SignedDocumentListType target = null;
            target = (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.SignedDocumentListType)get_store().find_element_user(SIGNEDDOCUMENTLIST$16, 0);
            if (target == null)
            {
                target = (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.SignedDocumentListType)get_store().add_element_user(SIGNEDDOCUMENTLIST$16);
            }
            target.setNil();
        }
    }
    
    /**
     * Gets the "SignedDocData" element
     */
    public byte[] getSignedDocData()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_element_user(SIGNEDDOCDATA$18, 0);
            if (target == null)
            {
                return null;
            }
            return target.getByteArrayValue();
        }
    }
    
    /**
     * Gets (as xml) the "SignedDocData" element
     */
    public org.apache.xmlbeans.XmlBase64Binary xgetSignedDocData()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.XmlBase64Binary target = null;
            target = (org.apache.xmlbeans.XmlBase64Binary)get_store().find_element_user(SIGNEDDOCDATA$18, 0);
            return target;
        }
    }
    
    /**
     * Tests for nil "SignedDocData" element
     */
    public boolean isNilSignedDocData()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.XmlBase64Binary target = null;
            target = (org.apache.xmlbeans.XmlBase64Binary)get_store().find_element_user(SIGNEDDOCDATA$18, 0);
            if (target == null) return false;
            return target.isNil();
        }
    }
    
    /**
     * Sets the "SignedDocData" element
     */
    public void setSignedDocData(byte[] signedDocData)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_element_user(SIGNEDDOCDATA$18, 0);
            if (target == null)
            {
                target = (org.apache.xmlbeans.SimpleValue)get_store().add_element_user(SIGNEDDOCDATA$18);
            }
            target.setByteArrayValue(signedDocData);
        }
    }
    
    /**
     * Sets (as xml) the "SignedDocData" element
     */
    public void xsetSignedDocData(org.apache.xmlbeans.XmlBase64Binary signedDocData)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.XmlBase64Binary target = null;
            target = (org.apache.xmlbeans.XmlBase64Binary)get_store().find_element_user(SIGNEDDOCDATA$18, 0);
            if (target == null)
            {
                target = (org.apache.xmlbeans.XmlBase64Binary)get_store().add_element_user(SIGNEDDOCDATA$18);
            }
            target.set(signedDocData);
        }
    }
    
    /**
     * Nils the "SignedDocData" element
     */
    public void setNilSignedDocData()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.XmlBase64Binary target = null;
            target = (org.apache.xmlbeans.XmlBase64Binary)get_store().find_element_user(SIGNEDDOCDATA$18, 0);
            if (target == null)
            {
                target = (org.apache.xmlbeans.XmlBase64Binary)get_store().add_element_user(SIGNEDDOCDATA$18);
            }
            target.setNil();
        }
    }
}

/*
 * XML Type:  ClaimTypeType
 * Namespace: urn:tiani-spirit:ts
 * Java type: arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ClaimTypeType
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.impl;
/**
 * An XML ClaimTypeType(@urn:tiani-spirit:ts).
 *
 * This is a complex type.
 */
public class ClaimTypeTypeImpl extends org.apache.xmlbeans.impl.values.XmlComplexContentImpl implements arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ClaimTypeType
{
    private static final long serialVersionUID = 1L;
    
    public ClaimTypeTypeImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName CLAIMVALUE$0 = 
        new javax.xml.namespace.QName("urn:tiani-spirit:ts", "ClaimValue");
    private static final javax.xml.namespace.QName SERVICERESTRICTIONLIST$2 = 
        new javax.xml.namespace.QName("urn:tiani-spirit:ts", "ServiceRestrictionList");
    private static final javax.xml.namespace.QName SERVICEOPTOUTLIST$4 = 
        new javax.xml.namespace.QName("urn:tiani-spirit:ts", "ServiceOptOutList");
    private static final javax.xml.namespace.QName SERVICEDELETIONLIST$6 = 
        new javax.xml.namespace.QName("urn:tiani-spirit:ts", "ServiceDeletionList");
    private static final javax.xml.namespace.QName PROVIDERRESTRICTIONLIST$8 = 
        new javax.xml.namespace.QName("urn:tiani-spirit:ts", "ProviderRestrictionList");
    private static final javax.xml.namespace.QName DOCUMENTRESTRICTIONLIST$10 = 
        new javax.xml.namespace.QName("urn:tiani-spirit:ts", "DocumentRestrictionList");
    private static final javax.xml.namespace.QName DOCUMENTDELETIONLIST$12 = 
        new javax.xml.namespace.QName("urn:tiani-spirit:ts", "DocumentDeletionList");
    private static final javax.xml.namespace.QName SIGNEDDOCUMENTLIST$14 = 
        new javax.xml.namespace.QName("urn:tiani-spirit:ts", "SignedDocumentList");
    private static final javax.xml.namespace.QName STATEID$16 = 
        new javax.xml.namespace.QName("urn:tiani-spirit:ts", "StateID");
    private static final javax.xml.namespace.QName GENERATEDPOLICIES$18 = 
        new javax.xml.namespace.QName("urn:tiani-spirit:ts", "GeneratedPolicies");
    private static final javax.xml.namespace.QName DATATYPE$20 = 
        new javax.xml.namespace.QName("", "DataType");
    private static final javax.xml.namespace.QName NAME$22 = 
        new javax.xml.namespace.QName("", "name");
    
    
    /**
     * Gets the "ClaimValue" element
     */
    public arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ClaimValue getClaimValue()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ClaimValue target = null;
            target = (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ClaimValue)get_store().find_element_user(CLAIMVALUE$0, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * True if has "ClaimValue" element
     */
    public boolean isSetClaimValue()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().count_elements(CLAIMVALUE$0) != 0;
        }
    }
    
    /**
     * Sets the "ClaimValue" element
     */
    public void setClaimValue(arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ClaimValue claimValue)
    {
        generatedSetterHelperImpl(claimValue, CLAIMVALUE$0, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
    }
    
    /**
     * Appends and returns a new empty "ClaimValue" element
     */
    public arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ClaimValue addNewClaimValue()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ClaimValue target = null;
            target = (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ClaimValue)get_store().add_element_user(CLAIMVALUE$0);
            return target;
        }
    }
    
    /**
     * Unsets the "ClaimValue" element
     */
    public void unsetClaimValue()
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_element(CLAIMVALUE$0, 0);
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
            target = (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceRestrictionListType)get_store().find_element_user(SERVICERESTRICTIONLIST$2, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * True if has "ServiceRestrictionList" element
     */
    public boolean isSetServiceRestrictionList()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().count_elements(SERVICERESTRICTIONLIST$2) != 0;
        }
    }
    
    /**
     * Sets the "ServiceRestrictionList" element
     */
    public void setServiceRestrictionList(arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceRestrictionListType serviceRestrictionList)
    {
        generatedSetterHelperImpl(serviceRestrictionList, SERVICERESTRICTIONLIST$2, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
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
            target = (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceRestrictionListType)get_store().add_element_user(SERVICERESTRICTIONLIST$2);
            return target;
        }
    }
    
    /**
     * Unsets the "ServiceRestrictionList" element
     */
    public void unsetServiceRestrictionList()
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_element(SERVICERESTRICTIONLIST$2, 0);
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
            target = (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceOptOutListType)get_store().find_element_user(SERVICEOPTOUTLIST$4, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * True if has "ServiceOptOutList" element
     */
    public boolean isSetServiceOptOutList()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().count_elements(SERVICEOPTOUTLIST$4) != 0;
        }
    }
    
    /**
     * Sets the "ServiceOptOutList" element
     */
    public void setServiceOptOutList(arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceOptOutListType serviceOptOutList)
    {
        generatedSetterHelperImpl(serviceOptOutList, SERVICEOPTOUTLIST$4, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
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
            target = (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceOptOutListType)get_store().add_element_user(SERVICEOPTOUTLIST$4);
            return target;
        }
    }
    
    /**
     * Unsets the "ServiceOptOutList" element
     */
    public void unsetServiceOptOutList()
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_element(SERVICEOPTOUTLIST$4, 0);
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
            target = (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceDeletionListType)get_store().find_element_user(SERVICEDELETIONLIST$6, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * True if has "ServiceDeletionList" element
     */
    public boolean isSetServiceDeletionList()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().count_elements(SERVICEDELETIONLIST$6) != 0;
        }
    }
    
    /**
     * Sets the "ServiceDeletionList" element
     */
    public void setServiceDeletionList(arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceDeletionListType serviceDeletionList)
    {
        generatedSetterHelperImpl(serviceDeletionList, SERVICEDELETIONLIST$6, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
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
            target = (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ServiceDeletionListType)get_store().add_element_user(SERVICEDELETIONLIST$6);
            return target;
        }
    }
    
    /**
     * Unsets the "ServiceDeletionList" element
     */
    public void unsetServiceDeletionList()
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_element(SERVICEDELETIONLIST$6, 0);
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
            target = (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ProviderRestrictionListType)get_store().find_element_user(PROVIDERRESTRICTIONLIST$8, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * True if has "ProviderRestrictionList" element
     */
    public boolean isSetProviderRestrictionList()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().count_elements(PROVIDERRESTRICTIONLIST$8) != 0;
        }
    }
    
    /**
     * Sets the "ProviderRestrictionList" element
     */
    public void setProviderRestrictionList(arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ProviderRestrictionListType providerRestrictionList)
    {
        generatedSetterHelperImpl(providerRestrictionList, PROVIDERRESTRICTIONLIST$8, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
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
            target = (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ProviderRestrictionListType)get_store().add_element_user(PROVIDERRESTRICTIONLIST$8);
            return target;
        }
    }
    
    /**
     * Unsets the "ProviderRestrictionList" element
     */
    public void unsetProviderRestrictionList()
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_element(PROVIDERRESTRICTIONLIST$8, 0);
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
            target = (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.DocumentRestrictionListType)get_store().find_element_user(DOCUMENTRESTRICTIONLIST$10, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * True if has "DocumentRestrictionList" element
     */
    public boolean isSetDocumentRestrictionList()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().count_elements(DOCUMENTRESTRICTIONLIST$10) != 0;
        }
    }
    
    /**
     * Sets the "DocumentRestrictionList" element
     */
    public void setDocumentRestrictionList(arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.DocumentRestrictionListType documentRestrictionList)
    {
        generatedSetterHelperImpl(documentRestrictionList, DOCUMENTRESTRICTIONLIST$10, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
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
            target = (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.DocumentRestrictionListType)get_store().add_element_user(DOCUMENTRESTRICTIONLIST$10);
            return target;
        }
    }
    
    /**
     * Unsets the "DocumentRestrictionList" element
     */
    public void unsetDocumentRestrictionList()
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_element(DOCUMENTRESTRICTIONLIST$10, 0);
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
            target = (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.DocumentDeletionListType)get_store().find_element_user(DOCUMENTDELETIONLIST$12, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * True if has "DocumentDeletionList" element
     */
    public boolean isSetDocumentDeletionList()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().count_elements(DOCUMENTDELETIONLIST$12) != 0;
        }
    }
    
    /**
     * Sets the "DocumentDeletionList" element
     */
    public void setDocumentDeletionList(arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.DocumentDeletionListType documentDeletionList)
    {
        generatedSetterHelperImpl(documentDeletionList, DOCUMENTDELETIONLIST$12, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
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
            target = (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.DocumentDeletionListType)get_store().add_element_user(DOCUMENTDELETIONLIST$12);
            return target;
        }
    }
    
    /**
     * Unsets the "DocumentDeletionList" element
     */
    public void unsetDocumentDeletionList()
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_element(DOCUMENTDELETIONLIST$12, 0);
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
            target = (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.SignedDocumentListType)get_store().find_element_user(SIGNEDDOCUMENTLIST$14, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * True if has "SignedDocumentList" element
     */
    public boolean isSetSignedDocumentList()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().count_elements(SIGNEDDOCUMENTLIST$14) != 0;
        }
    }
    
    /**
     * Sets the "SignedDocumentList" element
     */
    public void setSignedDocumentList(arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.SignedDocumentListType signedDocumentList)
    {
        generatedSetterHelperImpl(signedDocumentList, SIGNEDDOCUMENTLIST$14, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
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
            target = (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.SignedDocumentListType)get_store().add_element_user(SIGNEDDOCUMENTLIST$14);
            return target;
        }
    }
    
    /**
     * Unsets the "SignedDocumentList" element
     */
    public void unsetSignedDocumentList()
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_element(SIGNEDDOCUMENTLIST$14, 0);
        }
    }
    
    /**
     * Gets the "StateID" element
     */
    public java.lang.String getStateID()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_element_user(STATEID$16, 0);
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
            target = (org.apache.xmlbeans.XmlString)get_store().find_element_user(STATEID$16, 0);
            return target;
        }
    }
    
    /**
     * True if has "StateID" element
     */
    public boolean isSetStateID()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().count_elements(STATEID$16) != 0;
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
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_element_user(STATEID$16, 0);
            if (target == null)
            {
                target = (org.apache.xmlbeans.SimpleValue)get_store().add_element_user(STATEID$16);
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
            target = (org.apache.xmlbeans.XmlString)get_store().find_element_user(STATEID$16, 0);
            if (target == null)
            {
                target = (org.apache.xmlbeans.XmlString)get_store().add_element_user(STATEID$16);
            }
            target.set(stateID);
        }
    }
    
    /**
     * Unsets the "StateID" element
     */
    public void unsetStateID()
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_element(STATEID$16, 0);
        }
    }
    
    /**
     * Gets the "GeneratedPolicies" element
     */
    public arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.GeneratedPoliciesType getGeneratedPolicies()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.GeneratedPoliciesType target = null;
            target = (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.GeneratedPoliciesType)get_store().find_element_user(GENERATEDPOLICIES$18, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * True if has "GeneratedPolicies" element
     */
    public boolean isSetGeneratedPolicies()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().count_elements(GENERATEDPOLICIES$18) != 0;
        }
    }
    
    /**
     * Sets the "GeneratedPolicies" element
     */
    public void setGeneratedPolicies(arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.GeneratedPoliciesType generatedPolicies)
    {
        generatedSetterHelperImpl(generatedPolicies, GENERATEDPOLICIES$18, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
    }
    
    /**
     * Appends and returns a new empty "GeneratedPolicies" element
     */
    public arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.GeneratedPoliciesType addNewGeneratedPolicies()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.GeneratedPoliciesType target = null;
            target = (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.GeneratedPoliciesType)get_store().add_element_user(GENERATEDPOLICIES$18);
            return target;
        }
    }
    
    /**
     * Unsets the "GeneratedPolicies" element
     */
    public void unsetGeneratedPolicies()
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_element(GENERATEDPOLICIES$18, 0);
        }
    }
    
    /**
     * Gets the "DataType" attribute
     */
    public java.lang.String getDataType()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(DATATYPE$20);
            if (target == null)
            {
                return null;
            }
            return target.getStringValue();
        }
    }
    
    /**
     * Gets (as xml) the "DataType" attribute
     */
    public arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ClaimTypeDataType xgetDataType()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ClaimTypeDataType target = null;
            target = (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ClaimTypeDataType)get_store().find_attribute_user(DATATYPE$20);
            return target;
        }
    }
    
    /**
     * Sets the "DataType" attribute
     */
    public void setDataType(java.lang.String dataType)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(DATATYPE$20);
            if (target == null)
            {
                target = (org.apache.xmlbeans.SimpleValue)get_store().add_attribute_user(DATATYPE$20);
            }
            target.setStringValue(dataType);
        }
    }
    
    /**
     * Sets (as xml) the "DataType" attribute
     */
    public void xsetDataType(arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ClaimTypeDataType dataType)
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ClaimTypeDataType target = null;
            target = (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ClaimTypeDataType)get_store().find_attribute_user(DATATYPE$20);
            if (target == null)
            {
                target = (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ClaimTypeDataType)get_store().add_attribute_user(DATATYPE$20);
            }
            target.set(dataType);
        }
    }
    
    /**
     * Gets the "name" attribute
     */
    public java.lang.String getName()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(NAME$22);
            if (target == null)
            {
                return null;
            }
            return target.getStringValue();
        }
    }
    
    /**
     * Gets (as xml) the "name" attribute
     */
    public arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ClaimTypeName xgetName()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ClaimTypeName target = null;
            target = (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ClaimTypeName)get_store().find_attribute_user(NAME$22);
            return target;
        }
    }
    
    /**
     * Sets the "name" attribute
     */
    public void setName(java.lang.String name)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(NAME$22);
            if (target == null)
            {
                target = (org.apache.xmlbeans.SimpleValue)get_store().add_attribute_user(NAME$22);
            }
            target.setStringValue(name);
        }
    }
    
    /**
     * Sets (as xml) the "name" attribute
     */
    public void xsetName(arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ClaimTypeName name)
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ClaimTypeName target = null;
            target = (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ClaimTypeName)get_store().find_attribute_user(NAME$22);
            if (target == null)
            {
                target = (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ClaimTypeName)get_store().add_attribute_user(NAME$22);
            }
            target.set(name);
        }
    }
}

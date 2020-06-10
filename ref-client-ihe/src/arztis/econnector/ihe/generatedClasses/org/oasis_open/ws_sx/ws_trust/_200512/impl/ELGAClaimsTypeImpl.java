/*
 * XML Type:  ELGAClaimsType
 * Namespace: http://docs.oasis-open.org/ws-sx/ws-trust/200512
 * Java type: arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.ELGAClaimsType
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.impl;
/**
 * An XML ELGAClaimsType(@http://docs.oasis-open.org/ws-sx/ws-trust/200512).
 *
 * This is a complex type.
 */
public class ELGAClaimsTypeImpl extends org.apache.xmlbeans.impl.values.XmlComplexContentImpl implements arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.ELGAClaimsType
{
    private static final long serialVersionUID = 1L;
    
    public ELGAClaimsTypeImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName CLAIMTYPE$0 = 
        new javax.xml.namespace.QName("urn:tiani-spirit:ts", "ClaimType");
    private static final javax.xml.namespace.QName EMEDIDROOT$2 = 
        new javax.xml.namespace.QName("urn:elga.emedid.rst", "emedidRoot");
    private static final javax.xml.namespace.QName EMEDIDEXTENSION$4 = 
        new javax.xml.namespace.QName("urn:elga.emedid.rst", "emedidExtension");
    private static final javax.xml.namespace.QName PATIDROOT$6 = 
        new javax.xml.namespace.QName("urn:elga.emedid.rst", "patidRoot");
    private static final javax.xml.namespace.QName PATIDEXTENSION$8 = 
        new javax.xml.namespace.QName("urn:elga.emedid.rst", "patidExtension");
    private static final javax.xml.namespace.QName DIALECT$10 = 
        new javax.xml.namespace.QName("", "Dialect");
    
    
    /**
     * Gets array of all "ClaimType" elements
     */
    public arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ClaimTypeType[] getClaimTypeArray()
    {
        synchronized (monitor())
        {
            check_orphaned();
            java.util.List targetList = new java.util.ArrayList();
            get_store().find_all_element_users(CLAIMTYPE$0, targetList);
            arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ClaimTypeType[] result = new arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ClaimTypeType[targetList.size()];
            targetList.toArray(result);
            return result;
        }
    }
    
    /**
     * Gets ith "ClaimType" element
     */
    public arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ClaimTypeType getClaimTypeArray(int i)
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ClaimTypeType target = null;
            target = (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ClaimTypeType)get_store().find_element_user(CLAIMTYPE$0, i);
            if (target == null)
            {
                throw new IndexOutOfBoundsException();
            }
            return target;
        }
    }
    
    /**
     * Returns number of "ClaimType" element
     */
    public int sizeOfClaimTypeArray()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().count_elements(CLAIMTYPE$0);
        }
    }
    
    /**
     * Sets array of all "ClaimType" element  WARNING: This method is not atomicaly synchronized.
     */
    public void setClaimTypeArray(arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ClaimTypeType[] claimTypeArray)
    {
        check_orphaned();
        arraySetterHelper(claimTypeArray, CLAIMTYPE$0);
    }
    
    /**
     * Sets ith "ClaimType" element
     */
    public void setClaimTypeArray(int i, arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ClaimTypeType claimType)
    {
        generatedSetterHelperImpl(claimType, CLAIMTYPE$0, i, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_ARRAYITEM);
    }
    
    /**
     * Inserts and returns a new empty value (as xml) as the ith "ClaimType" element
     */
    public arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ClaimTypeType insertNewClaimType(int i)
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ClaimTypeType target = null;
            target = (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ClaimTypeType)get_store().insert_element_user(CLAIMTYPE$0, i);
            return target;
        }
    }
    
    /**
     * Appends and returns a new empty value (as xml) as the last "ClaimType" element
     */
    public arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ClaimTypeType addNewClaimType()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ClaimTypeType target = null;
            target = (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ClaimTypeType)get_store().add_element_user(CLAIMTYPE$0);
            return target;
        }
    }
    
    /**
     * Removes the ith "ClaimType" element
     */
    public void removeClaimType(int i)
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_element(CLAIMTYPE$0, i);
        }
    }
    
    /**
     * Gets the "emedidRoot" element
     */
    public java.lang.String getEmedidRoot()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_element_user(EMEDIDROOT$2, 0);
            if (target == null)
            {
                return null;
            }
            return target.getStringValue();
        }
    }
    
    /**
     * Gets (as xml) the "emedidRoot" element
     */
    public org.apache.xmlbeans.XmlString xgetEmedidRoot()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.XmlString target = null;
            target = (org.apache.xmlbeans.XmlString)get_store().find_element_user(EMEDIDROOT$2, 0);
            return target;
        }
    }
    
    /**
     * True if has "emedidRoot" element
     */
    public boolean isSetEmedidRoot()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().count_elements(EMEDIDROOT$2) != 0;
        }
    }
    
    /**
     * Sets the "emedidRoot" element
     */
    public void setEmedidRoot(java.lang.String emedidRoot)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_element_user(EMEDIDROOT$2, 0);
            if (target == null)
            {
                target = (org.apache.xmlbeans.SimpleValue)get_store().add_element_user(EMEDIDROOT$2);
            }
            target.setStringValue(emedidRoot);
        }
    }
    
    /**
     * Sets (as xml) the "emedidRoot" element
     */
    public void xsetEmedidRoot(org.apache.xmlbeans.XmlString emedidRoot)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.XmlString target = null;
            target = (org.apache.xmlbeans.XmlString)get_store().find_element_user(EMEDIDROOT$2, 0);
            if (target == null)
            {
                target = (org.apache.xmlbeans.XmlString)get_store().add_element_user(EMEDIDROOT$2);
            }
            target.set(emedidRoot);
        }
    }
    
    /**
     * Unsets the "emedidRoot" element
     */
    public void unsetEmedidRoot()
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_element(EMEDIDROOT$2, 0);
        }
    }
    
    /**
     * Gets the "emedidExtension" element
     */
    public java.lang.String getEmedidExtension()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_element_user(EMEDIDEXTENSION$4, 0);
            if (target == null)
            {
                return null;
            }
            return target.getStringValue();
        }
    }
    
    /**
     * Gets (as xml) the "emedidExtension" element
     */
    public org.apache.xmlbeans.XmlString xgetEmedidExtension()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.XmlString target = null;
            target = (org.apache.xmlbeans.XmlString)get_store().find_element_user(EMEDIDEXTENSION$4, 0);
            return target;
        }
    }
    
    /**
     * True if has "emedidExtension" element
     */
    public boolean isSetEmedidExtension()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().count_elements(EMEDIDEXTENSION$4) != 0;
        }
    }
    
    /**
     * Sets the "emedidExtension" element
     */
    public void setEmedidExtension(java.lang.String emedidExtension)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_element_user(EMEDIDEXTENSION$4, 0);
            if (target == null)
            {
                target = (org.apache.xmlbeans.SimpleValue)get_store().add_element_user(EMEDIDEXTENSION$4);
            }
            target.setStringValue(emedidExtension);
        }
    }
    
    /**
     * Sets (as xml) the "emedidExtension" element
     */
    public void xsetEmedidExtension(org.apache.xmlbeans.XmlString emedidExtension)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.XmlString target = null;
            target = (org.apache.xmlbeans.XmlString)get_store().find_element_user(EMEDIDEXTENSION$4, 0);
            if (target == null)
            {
                target = (org.apache.xmlbeans.XmlString)get_store().add_element_user(EMEDIDEXTENSION$4);
            }
            target.set(emedidExtension);
        }
    }
    
    /**
     * Unsets the "emedidExtension" element
     */
    public void unsetEmedidExtension()
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_element(EMEDIDEXTENSION$4, 0);
        }
    }
    
    /**
     * Gets the "patidRoot" element
     */
    public java.lang.String getPatidRoot()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_element_user(PATIDROOT$6, 0);
            if (target == null)
            {
                return null;
            }
            return target.getStringValue();
        }
    }
    
    /**
     * Gets (as xml) the "patidRoot" element
     */
    public org.apache.xmlbeans.XmlString xgetPatidRoot()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.XmlString target = null;
            target = (org.apache.xmlbeans.XmlString)get_store().find_element_user(PATIDROOT$6, 0);
            return target;
        }
    }
    
    /**
     * True if has "patidRoot" element
     */
    public boolean isSetPatidRoot()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().count_elements(PATIDROOT$6) != 0;
        }
    }
    
    /**
     * Sets the "patidRoot" element
     */
    public void setPatidRoot(java.lang.String patidRoot)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_element_user(PATIDROOT$6, 0);
            if (target == null)
            {
                target = (org.apache.xmlbeans.SimpleValue)get_store().add_element_user(PATIDROOT$6);
            }
            target.setStringValue(patidRoot);
        }
    }
    
    /**
     * Sets (as xml) the "patidRoot" element
     */
    public void xsetPatidRoot(org.apache.xmlbeans.XmlString patidRoot)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.XmlString target = null;
            target = (org.apache.xmlbeans.XmlString)get_store().find_element_user(PATIDROOT$6, 0);
            if (target == null)
            {
                target = (org.apache.xmlbeans.XmlString)get_store().add_element_user(PATIDROOT$6);
            }
            target.set(patidRoot);
        }
    }
    
    /**
     * Unsets the "patidRoot" element
     */
    public void unsetPatidRoot()
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_element(PATIDROOT$6, 0);
        }
    }
    
    /**
     * Gets the "patidExtension" element
     */
    public java.lang.String getPatidExtension()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_element_user(PATIDEXTENSION$8, 0);
            if (target == null)
            {
                return null;
            }
            return target.getStringValue();
        }
    }
    
    /**
     * Gets (as xml) the "patidExtension" element
     */
    public org.apache.xmlbeans.XmlString xgetPatidExtension()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.XmlString target = null;
            target = (org.apache.xmlbeans.XmlString)get_store().find_element_user(PATIDEXTENSION$8, 0);
            return target;
        }
    }
    
    /**
     * True if has "patidExtension" element
     */
    public boolean isSetPatidExtension()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().count_elements(PATIDEXTENSION$8) != 0;
        }
    }
    
    /**
     * Sets the "patidExtension" element
     */
    public void setPatidExtension(java.lang.String patidExtension)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_element_user(PATIDEXTENSION$8, 0);
            if (target == null)
            {
                target = (org.apache.xmlbeans.SimpleValue)get_store().add_element_user(PATIDEXTENSION$8);
            }
            target.setStringValue(patidExtension);
        }
    }
    
    /**
     * Sets (as xml) the "patidExtension" element
     */
    public void xsetPatidExtension(org.apache.xmlbeans.XmlString patidExtension)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.XmlString target = null;
            target = (org.apache.xmlbeans.XmlString)get_store().find_element_user(PATIDEXTENSION$8, 0);
            if (target == null)
            {
                target = (org.apache.xmlbeans.XmlString)get_store().add_element_user(PATIDEXTENSION$8);
            }
            target.set(patidExtension);
        }
    }
    
    /**
     * Unsets the "patidExtension" element
     */
    public void unsetPatidExtension()
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_element(PATIDEXTENSION$8, 0);
        }
    }
    
    /**
     * Gets the "Dialect" attribute
     */
    public java.lang.String getDialect()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(DIALECT$10);
            if (target == null)
            {
                return null;
            }
            return target.getStringValue();
        }
    }
    
    /**
     * Gets (as xml) the "Dialect" attribute
     */
    public arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.ELGAClaimsDialect xgetDialect()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.ELGAClaimsDialect target = null;
            target = (arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.ELGAClaimsDialect)get_store().find_attribute_user(DIALECT$10);
            return target;
        }
    }
    
    /**
     * Sets the "Dialect" attribute
     */
    public void setDialect(java.lang.String dialect)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(DIALECT$10);
            if (target == null)
            {
                target = (org.apache.xmlbeans.SimpleValue)get_store().add_attribute_user(DIALECT$10);
            }
            target.setStringValue(dialect);
        }
    }
    
    /**
     * Sets (as xml) the "Dialect" attribute
     */
    public void xsetDialect(arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.ELGAClaimsDialect dialect)
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.ELGAClaimsDialect target = null;
            target = (arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.ELGAClaimsDialect)get_store().find_attribute_user(DIALECT$10);
            if (target == null)
            {
                target = (arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.ELGAClaimsDialect)get_store().add_attribute_user(DIALECT$10);
            }
            target.set(dialect);
        }
    }
}

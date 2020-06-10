/*
 * XML Type:  RegistryType
 * Namespace: urn:oasis:names:tc:ebxml-regrep:xsd:rim:3.0
 * Java type: arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.RegistryType
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.impl;
/**
 * An XML RegistryType(@urn:oasis:names:tc:ebxml-regrep:xsd:rim:3.0).
 *
 * This is a complex type.
 */
public class RegistryTypeImpl extends arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.impl.RegistryObjectTypeImpl implements arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.RegistryType
{
    private static final long serialVersionUID = 1L;
    
    public RegistryTypeImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName OPERATOR$0 = 
        new javax.xml.namespace.QName("", "operator");
    private static final javax.xml.namespace.QName SPECIFICATIONVERSION$2 = 
        new javax.xml.namespace.QName("", "specificationVersion");
    private static final javax.xml.namespace.QName REPLICATIONSYNCLATENCY$4 = 
        new javax.xml.namespace.QName("", "replicationSyncLatency");
    private static final javax.xml.namespace.QName CATALOGINGLATENCY$6 = 
        new javax.xml.namespace.QName("", "catalogingLatency");
    private static final javax.xml.namespace.QName CONFORMANCEPROFILE$8 = 
        new javax.xml.namespace.QName("", "conformanceProfile");
    
    
    /**
     * Gets the "operator" attribute
     */
    public java.lang.String getOperator()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(OPERATOR$0);
            if (target == null)
            {
                return null;
            }
            return target.getStringValue();
        }
    }
    
    /**
     * Gets (as xml) the "operator" attribute
     */
    public arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI xgetOperator()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI target = null;
            target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI)get_store().find_attribute_user(OPERATOR$0);
            return target;
        }
    }
    
    /**
     * Sets the "operator" attribute
     */
    public void setOperator(java.lang.String operator)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(OPERATOR$0);
            if (target == null)
            {
                target = (org.apache.xmlbeans.SimpleValue)get_store().add_attribute_user(OPERATOR$0);
            }
            target.setStringValue(operator);
        }
    }
    
    /**
     * Sets (as xml) the "operator" attribute
     */
    public void xsetOperator(arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI operator)
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI target = null;
            target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI)get_store().find_attribute_user(OPERATOR$0);
            if (target == null)
            {
                target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI)get_store().add_attribute_user(OPERATOR$0);
            }
            target.set(operator);
        }
    }
    
    /**
     * Gets the "specificationVersion" attribute
     */
    public java.lang.String getSpecificationVersion()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(SPECIFICATIONVERSION$2);
            if (target == null)
            {
                return null;
            }
            return target.getStringValue();
        }
    }
    
    /**
     * Gets (as xml) the "specificationVersion" attribute
     */
    public org.apache.xmlbeans.XmlString xgetSpecificationVersion()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.XmlString target = null;
            target = (org.apache.xmlbeans.XmlString)get_store().find_attribute_user(SPECIFICATIONVERSION$2);
            return target;
        }
    }
    
    /**
     * Sets the "specificationVersion" attribute
     */
    public void setSpecificationVersion(java.lang.String specificationVersion)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(SPECIFICATIONVERSION$2);
            if (target == null)
            {
                target = (org.apache.xmlbeans.SimpleValue)get_store().add_attribute_user(SPECIFICATIONVERSION$2);
            }
            target.setStringValue(specificationVersion);
        }
    }
    
    /**
     * Sets (as xml) the "specificationVersion" attribute
     */
    public void xsetSpecificationVersion(org.apache.xmlbeans.XmlString specificationVersion)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.XmlString target = null;
            target = (org.apache.xmlbeans.XmlString)get_store().find_attribute_user(SPECIFICATIONVERSION$2);
            if (target == null)
            {
                target = (org.apache.xmlbeans.XmlString)get_store().add_attribute_user(SPECIFICATIONVERSION$2);
            }
            target.set(specificationVersion);
        }
    }
    
    /**
     * Gets the "replicationSyncLatency" attribute
     */
    public org.apache.xmlbeans.GDuration getReplicationSyncLatency()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(REPLICATIONSYNCLATENCY$4);
            if (target == null)
            {
                target = (org.apache.xmlbeans.SimpleValue)get_default_attribute_value(REPLICATIONSYNCLATENCY$4);
            }
            if (target == null)
            {
                return null;
            }
            return target.getGDurationValue();
        }
    }
    
    /**
     * Gets (as xml) the "replicationSyncLatency" attribute
     */
    public org.apache.xmlbeans.XmlDuration xgetReplicationSyncLatency()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.XmlDuration target = null;
            target = (org.apache.xmlbeans.XmlDuration)get_store().find_attribute_user(REPLICATIONSYNCLATENCY$4);
            if (target == null)
            {
                target = (org.apache.xmlbeans.XmlDuration)get_default_attribute_value(REPLICATIONSYNCLATENCY$4);
            }
            return target;
        }
    }
    
    /**
     * True if has "replicationSyncLatency" attribute
     */
    public boolean isSetReplicationSyncLatency()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().find_attribute_user(REPLICATIONSYNCLATENCY$4) != null;
        }
    }
    
    /**
     * Sets the "replicationSyncLatency" attribute
     */
    public void setReplicationSyncLatency(org.apache.xmlbeans.GDuration replicationSyncLatency)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(REPLICATIONSYNCLATENCY$4);
            if (target == null)
            {
                target = (org.apache.xmlbeans.SimpleValue)get_store().add_attribute_user(REPLICATIONSYNCLATENCY$4);
            }
            target.setGDurationValue(replicationSyncLatency);
        }
    }
    
    /**
     * Sets (as xml) the "replicationSyncLatency" attribute
     */
    public void xsetReplicationSyncLatency(org.apache.xmlbeans.XmlDuration replicationSyncLatency)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.XmlDuration target = null;
            target = (org.apache.xmlbeans.XmlDuration)get_store().find_attribute_user(REPLICATIONSYNCLATENCY$4);
            if (target == null)
            {
                target = (org.apache.xmlbeans.XmlDuration)get_store().add_attribute_user(REPLICATIONSYNCLATENCY$4);
            }
            target.set(replicationSyncLatency);
        }
    }
    
    /**
     * Unsets the "replicationSyncLatency" attribute
     */
    public void unsetReplicationSyncLatency()
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_attribute(REPLICATIONSYNCLATENCY$4);
        }
    }
    
    /**
     * Gets the "catalogingLatency" attribute
     */
    public org.apache.xmlbeans.GDuration getCatalogingLatency()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(CATALOGINGLATENCY$6);
            if (target == null)
            {
                target = (org.apache.xmlbeans.SimpleValue)get_default_attribute_value(CATALOGINGLATENCY$6);
            }
            if (target == null)
            {
                return null;
            }
            return target.getGDurationValue();
        }
    }
    
    /**
     * Gets (as xml) the "catalogingLatency" attribute
     */
    public org.apache.xmlbeans.XmlDuration xgetCatalogingLatency()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.XmlDuration target = null;
            target = (org.apache.xmlbeans.XmlDuration)get_store().find_attribute_user(CATALOGINGLATENCY$6);
            if (target == null)
            {
                target = (org.apache.xmlbeans.XmlDuration)get_default_attribute_value(CATALOGINGLATENCY$6);
            }
            return target;
        }
    }
    
    /**
     * True if has "catalogingLatency" attribute
     */
    public boolean isSetCatalogingLatency()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().find_attribute_user(CATALOGINGLATENCY$6) != null;
        }
    }
    
    /**
     * Sets the "catalogingLatency" attribute
     */
    public void setCatalogingLatency(org.apache.xmlbeans.GDuration catalogingLatency)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(CATALOGINGLATENCY$6);
            if (target == null)
            {
                target = (org.apache.xmlbeans.SimpleValue)get_store().add_attribute_user(CATALOGINGLATENCY$6);
            }
            target.setGDurationValue(catalogingLatency);
        }
    }
    
    /**
     * Sets (as xml) the "catalogingLatency" attribute
     */
    public void xsetCatalogingLatency(org.apache.xmlbeans.XmlDuration catalogingLatency)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.XmlDuration target = null;
            target = (org.apache.xmlbeans.XmlDuration)get_store().find_attribute_user(CATALOGINGLATENCY$6);
            if (target == null)
            {
                target = (org.apache.xmlbeans.XmlDuration)get_store().add_attribute_user(CATALOGINGLATENCY$6);
            }
            target.set(catalogingLatency);
        }
    }
    
    /**
     * Unsets the "catalogingLatency" attribute
     */
    public void unsetCatalogingLatency()
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_attribute(CATALOGINGLATENCY$6);
        }
    }
    
    /**
     * Gets the "conformanceProfile" attribute
     */
    public arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.RegistryType.ConformanceProfile.Enum getConformanceProfile()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(CONFORMANCEPROFILE$8);
            if (target == null)
            {
                target = (org.apache.xmlbeans.SimpleValue)get_default_attribute_value(CONFORMANCEPROFILE$8);
            }
            if (target == null)
            {
                return null;
            }
            return (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.RegistryType.ConformanceProfile.Enum)target.getEnumValue();
        }
    }
    
    /**
     * Gets (as xml) the "conformanceProfile" attribute
     */
    public arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.RegistryType.ConformanceProfile xgetConformanceProfile()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.RegistryType.ConformanceProfile target = null;
            target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.RegistryType.ConformanceProfile)get_store().find_attribute_user(CONFORMANCEPROFILE$8);
            if (target == null)
            {
                target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.RegistryType.ConformanceProfile)get_default_attribute_value(CONFORMANCEPROFILE$8);
            }
            return target;
        }
    }
    
    /**
     * True if has "conformanceProfile" attribute
     */
    public boolean isSetConformanceProfile()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().find_attribute_user(CONFORMANCEPROFILE$8) != null;
        }
    }
    
    /**
     * Sets the "conformanceProfile" attribute
     */
    public void setConformanceProfile(arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.RegistryType.ConformanceProfile.Enum conformanceProfile)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(CONFORMANCEPROFILE$8);
            if (target == null)
            {
                target = (org.apache.xmlbeans.SimpleValue)get_store().add_attribute_user(CONFORMANCEPROFILE$8);
            }
            target.setEnumValue(conformanceProfile);
        }
    }
    
    /**
     * Sets (as xml) the "conformanceProfile" attribute
     */
    public void xsetConformanceProfile(arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.RegistryType.ConformanceProfile conformanceProfile)
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.RegistryType.ConformanceProfile target = null;
            target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.RegistryType.ConformanceProfile)get_store().find_attribute_user(CONFORMANCEPROFILE$8);
            if (target == null)
            {
                target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.RegistryType.ConformanceProfile)get_store().add_attribute_user(CONFORMANCEPROFILE$8);
            }
            target.set(conformanceProfile);
        }
    }
    
    /**
     * Unsets the "conformanceProfile" attribute
     */
    public void unsetConformanceProfile()
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_attribute(CONFORMANCEPROFILE$8);
        }
    }
    /**
     * An XML conformanceProfile(@).
     *
     * This is an atomic type that is a restriction of arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.RegistryType$ConformanceProfile.
     */
    public static class ConformanceProfileImpl extends org.apache.xmlbeans.impl.values.JavaStringEnumerationHolderEx implements arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.RegistryType.ConformanceProfile
    {
        private static final long serialVersionUID = 1L;
        
        public ConformanceProfileImpl(org.apache.xmlbeans.SchemaType sType)
        {
            super(sType, false);
        }
        
        protected ConformanceProfileImpl(org.apache.xmlbeans.SchemaType sType, boolean b)
        {
            super(sType, b);
        }
    }
}

/*
 * XML Type:  FederationType
 * Namespace: urn:oasis:names:tc:ebxml-regrep:xsd:rim:3.0
 * Java type: arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.FederationType
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.impl;
/**
 * An XML FederationType(@urn:oasis:names:tc:ebxml-regrep:xsd:rim:3.0).
 *
 * This is a complex type.
 */
public class FederationTypeImpl extends arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.impl.RegistryObjectTypeImpl implements arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.FederationType
{
    private static final long serialVersionUID = 1L;
    
    public FederationTypeImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName REPLICATIONSYNCLATENCY$0 = 
        new javax.xml.namespace.QName("", "replicationSyncLatency");
    
    
    /**
     * Gets the "replicationSyncLatency" attribute
     */
    public org.apache.xmlbeans.GDuration getReplicationSyncLatency()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(REPLICATIONSYNCLATENCY$0);
            if (target == null)
            {
                target = (org.apache.xmlbeans.SimpleValue)get_default_attribute_value(REPLICATIONSYNCLATENCY$0);
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
            target = (org.apache.xmlbeans.XmlDuration)get_store().find_attribute_user(REPLICATIONSYNCLATENCY$0);
            if (target == null)
            {
                target = (org.apache.xmlbeans.XmlDuration)get_default_attribute_value(REPLICATIONSYNCLATENCY$0);
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
            return get_store().find_attribute_user(REPLICATIONSYNCLATENCY$0) != null;
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
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(REPLICATIONSYNCLATENCY$0);
            if (target == null)
            {
                target = (org.apache.xmlbeans.SimpleValue)get_store().add_attribute_user(REPLICATIONSYNCLATENCY$0);
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
            target = (org.apache.xmlbeans.XmlDuration)get_store().find_attribute_user(REPLICATIONSYNCLATENCY$0);
            if (target == null)
            {
                target = (org.apache.xmlbeans.XmlDuration)get_store().add_attribute_user(REPLICATIONSYNCLATENCY$0);
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
            get_store().remove_attribute(REPLICATIONSYNCLATENCY$0);
        }
    }
}

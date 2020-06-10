/*
 * XML Type:  ObjectRefType
 * Namespace: urn:oasis:names:tc:ebxml-regrep:xsd:rim:3.0
 * Java type: arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ObjectRefType
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.impl;
/**
 * An XML ObjectRefType(@urn:oasis:names:tc:ebxml-regrep:xsd:rim:3.0).
 *
 * This is a complex type.
 */
public class ObjectRefTypeImpl extends arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.impl.IdentifiableTypeImpl implements arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ObjectRefType
{
    private static final long serialVersionUID = 1L;
    
    public ObjectRefTypeImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName CREATEREPLICA$0 = 
        new javax.xml.namespace.QName("", "createReplica");
    
    
    /**
     * Gets the "createReplica" attribute
     */
    public boolean getCreateReplica()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(CREATEREPLICA$0);
            if (target == null)
            {
                target = (org.apache.xmlbeans.SimpleValue)get_default_attribute_value(CREATEREPLICA$0);
            }
            if (target == null)
            {
                return false;
            }
            return target.getBooleanValue();
        }
    }
    
    /**
     * Gets (as xml) the "createReplica" attribute
     */
    public org.apache.xmlbeans.XmlBoolean xgetCreateReplica()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.XmlBoolean target = null;
            target = (org.apache.xmlbeans.XmlBoolean)get_store().find_attribute_user(CREATEREPLICA$0);
            if (target == null)
            {
                target = (org.apache.xmlbeans.XmlBoolean)get_default_attribute_value(CREATEREPLICA$0);
            }
            return target;
        }
    }
    
    /**
     * True if has "createReplica" attribute
     */
    public boolean isSetCreateReplica()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().find_attribute_user(CREATEREPLICA$0) != null;
        }
    }
    
    /**
     * Sets the "createReplica" attribute
     */
    public void setCreateReplica(boolean createReplica)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(CREATEREPLICA$0);
            if (target == null)
            {
                target = (org.apache.xmlbeans.SimpleValue)get_store().add_attribute_user(CREATEREPLICA$0);
            }
            target.setBooleanValue(createReplica);
        }
    }
    
    /**
     * Sets (as xml) the "createReplica" attribute
     */
    public void xsetCreateReplica(org.apache.xmlbeans.XmlBoolean createReplica)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.XmlBoolean target = null;
            target = (org.apache.xmlbeans.XmlBoolean)get_store().find_attribute_user(CREATEREPLICA$0);
            if (target == null)
            {
                target = (org.apache.xmlbeans.XmlBoolean)get_store().add_attribute_user(CREATEREPLICA$0);
            }
            target.set(createReplica);
        }
    }
    
    /**
     * Unsets the "createReplica" attribute
     */
    public void unsetCreateReplica()
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_attribute(CREATEREPLICA$0);
        }
    }
}

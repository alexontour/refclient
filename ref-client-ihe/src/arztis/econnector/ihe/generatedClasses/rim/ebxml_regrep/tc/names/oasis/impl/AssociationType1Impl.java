/*
 * XML Type:  AssociationType1
 * Namespace: urn:oasis:names:tc:ebxml-regrep:xsd:rim:3.0
 * Java type: arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.AssociationType1
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.impl;
/**
 * An XML AssociationType1(@urn:oasis:names:tc:ebxml-regrep:xsd:rim:3.0).
 *
 * This is a complex type.
 */
public class AssociationType1Impl extends arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.impl.RegistryObjectTypeImpl implements arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.AssociationType1
{
    private static final long serialVersionUID = 1L;
    
    public AssociationType1Impl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName ASSOCIATIONTYPE$0 = 
        new javax.xml.namespace.QName("", "associationType");
    private static final javax.xml.namespace.QName SOURCEOBJECT$2 = 
        new javax.xml.namespace.QName("", "sourceObject");
    private static final javax.xml.namespace.QName TARGETOBJECT$4 = 
        new javax.xml.namespace.QName("", "targetObject");
    
    
    /**
     * Gets the "associationType" attribute
     */
    public java.lang.String getAssociationType()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(ASSOCIATIONTYPE$0);
            if (target == null)
            {
                return null;
            }
            return target.getStringValue();
        }
    }
    
    /**
     * Gets (as xml) the "associationType" attribute
     */
    public arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ELGAAssociationType xgetAssociationType()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ELGAAssociationType target = null;
            target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ELGAAssociationType)get_store().find_attribute_user(ASSOCIATIONTYPE$0);
            return target;
        }
    }
    
    /**
     * True if has "associationType" attribute
     */
    public boolean isSetAssociationType()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().find_attribute_user(ASSOCIATIONTYPE$0) != null;
        }
    }
    
    /**
     * Sets the "associationType" attribute
     */
    public void setAssociationType(java.lang.String associationType)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(ASSOCIATIONTYPE$0);
            if (target == null)
            {
                target = (org.apache.xmlbeans.SimpleValue)get_store().add_attribute_user(ASSOCIATIONTYPE$0);
            }
            target.setStringValue(associationType);
        }
    }
    
    /**
     * Sets (as xml) the "associationType" attribute
     */
    public void xsetAssociationType(arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ELGAAssociationType associationType)
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ELGAAssociationType target = null;
            target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ELGAAssociationType)get_store().find_attribute_user(ASSOCIATIONTYPE$0);
            if (target == null)
            {
                target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ELGAAssociationType)get_store().add_attribute_user(ASSOCIATIONTYPE$0);
            }
            target.set(associationType);
        }
    }
    
    /**
     * Unsets the "associationType" attribute
     */
    public void unsetAssociationType()
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_attribute(ASSOCIATIONTYPE$0);
        }
    }
    
    /**
     * Gets the "sourceObject" attribute
     */
    public java.lang.String getSourceObject()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(SOURCEOBJECT$2);
            if (target == null)
            {
                return null;
            }
            return target.getStringValue();
        }
    }
    
    /**
     * Gets (as xml) the "sourceObject" attribute
     */
    public arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI xgetSourceObject()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI target = null;
            target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI)get_store().find_attribute_user(SOURCEOBJECT$2);
            return target;
        }
    }
    
    /**
     * Sets the "sourceObject" attribute
     */
    public void setSourceObject(java.lang.String sourceObject)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(SOURCEOBJECT$2);
            if (target == null)
            {
                target = (org.apache.xmlbeans.SimpleValue)get_store().add_attribute_user(SOURCEOBJECT$2);
            }
            target.setStringValue(sourceObject);
        }
    }
    
    /**
     * Sets (as xml) the "sourceObject" attribute
     */
    public void xsetSourceObject(arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI sourceObject)
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI target = null;
            target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI)get_store().find_attribute_user(SOURCEOBJECT$2);
            if (target == null)
            {
                target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI)get_store().add_attribute_user(SOURCEOBJECT$2);
            }
            target.set(sourceObject);
        }
    }
    
    /**
     * Gets the "targetObject" attribute
     */
    public java.lang.String getTargetObject()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(TARGETOBJECT$4);
            if (target == null)
            {
                return null;
            }
            return target.getStringValue();
        }
    }
    
    /**
     * Gets (as xml) the "targetObject" attribute
     */
    public arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI xgetTargetObject()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI target = null;
            target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI)get_store().find_attribute_user(TARGETOBJECT$4);
            return target;
        }
    }
    
    /**
     * Sets the "targetObject" attribute
     */
    public void setTargetObject(java.lang.String targetObject)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(TARGETOBJECT$4);
            if (target == null)
            {
                target = (org.apache.xmlbeans.SimpleValue)get_store().add_attribute_user(TARGETOBJECT$4);
            }
            target.setStringValue(targetObject);
        }
    }
    
    /**
     * Sets (as xml) the "targetObject" attribute
     */
    public void xsetTargetObject(arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI targetObject)
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI target = null;
            target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI)get_store().find_attribute_user(TARGETOBJECT$4);
            if (target == null)
            {
                target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI)get_store().add_attribute_user(TARGETOBJECT$4);
            }
            target.set(targetObject);
        }
    }
}

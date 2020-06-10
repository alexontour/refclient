/*
 * XML Type:  ServiceBindingType
 * Namespace: urn:oasis:names:tc:ebxml-regrep:xsd:rim:3.0
 * Java type: arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ServiceBindingType
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.impl;
/**
 * An XML ServiceBindingType(@urn:oasis:names:tc:ebxml-regrep:xsd:rim:3.0).
 *
 * This is a complex type.
 */
public class ServiceBindingTypeImpl extends arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.impl.RegistryObjectTypeImpl implements arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ServiceBindingType
{
    private static final long serialVersionUID = 1L;
    
    public ServiceBindingTypeImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName SPECIFICATIONLINK$0 = 
        new javax.xml.namespace.QName("urn:oasis:names:tc:ebxml-regrep:xsd:rim:3.0", "SpecificationLink");
    private static final javax.xml.namespace.QName SERVICE$2 = 
        new javax.xml.namespace.QName("", "service");
    private static final javax.xml.namespace.QName ACCESSURI$4 = 
        new javax.xml.namespace.QName("", "accessURI");
    private static final javax.xml.namespace.QName TARGETBINDING$6 = 
        new javax.xml.namespace.QName("", "targetBinding");
    
    
    /**
     * Gets array of all "SpecificationLink" elements
     */
    public arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.SpecificationLinkType[] getSpecificationLinkArray()
    {
        synchronized (monitor())
        {
            check_orphaned();
            java.util.List targetList = new java.util.ArrayList();
            get_store().find_all_element_users(SPECIFICATIONLINK$0, targetList);
            arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.SpecificationLinkType[] result = new arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.SpecificationLinkType[targetList.size()];
            targetList.toArray(result);
            return result;
        }
    }
    
    /**
     * Gets ith "SpecificationLink" element
     */
    public arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.SpecificationLinkType getSpecificationLinkArray(int i)
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.SpecificationLinkType target = null;
            target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.SpecificationLinkType)get_store().find_element_user(SPECIFICATIONLINK$0, i);
            if (target == null)
            {
                throw new IndexOutOfBoundsException();
            }
            return target;
        }
    }
    
    /**
     * Returns number of "SpecificationLink" element
     */
    public int sizeOfSpecificationLinkArray()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().count_elements(SPECIFICATIONLINK$0);
        }
    }
    
    /**
     * Sets array of all "SpecificationLink" element  WARNING: This method is not atomicaly synchronized.
     */
    public void setSpecificationLinkArray(arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.SpecificationLinkType[] specificationLinkArray)
    {
        check_orphaned();
        arraySetterHelper(specificationLinkArray, SPECIFICATIONLINK$0);
    }
    
    /**
     * Sets ith "SpecificationLink" element
     */
    public void setSpecificationLinkArray(int i, arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.SpecificationLinkType specificationLink)
    {
        generatedSetterHelperImpl(specificationLink, SPECIFICATIONLINK$0, i, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_ARRAYITEM);
    }
    
    /**
     * Inserts and returns a new empty value (as xml) as the ith "SpecificationLink" element
     */
    public arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.SpecificationLinkType insertNewSpecificationLink(int i)
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.SpecificationLinkType target = null;
            target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.SpecificationLinkType)get_store().insert_element_user(SPECIFICATIONLINK$0, i);
            return target;
        }
    }
    
    /**
     * Appends and returns a new empty value (as xml) as the last "SpecificationLink" element
     */
    public arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.SpecificationLinkType addNewSpecificationLink()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.SpecificationLinkType target = null;
            target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.SpecificationLinkType)get_store().add_element_user(SPECIFICATIONLINK$0);
            return target;
        }
    }
    
    /**
     * Removes the ith "SpecificationLink" element
     */
    public void removeSpecificationLink(int i)
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_element(SPECIFICATIONLINK$0, i);
        }
    }
    
    /**
     * Gets the "service" attribute
     */
    public java.lang.String getService()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(SERVICE$2);
            if (target == null)
            {
                return null;
            }
            return target.getStringValue();
        }
    }
    
    /**
     * Gets (as xml) the "service" attribute
     */
    public arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI xgetService()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI target = null;
            target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI)get_store().find_attribute_user(SERVICE$2);
            return target;
        }
    }
    
    /**
     * Sets the "service" attribute
     */
    public void setService(java.lang.String service)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(SERVICE$2);
            if (target == null)
            {
                target = (org.apache.xmlbeans.SimpleValue)get_store().add_attribute_user(SERVICE$2);
            }
            target.setStringValue(service);
        }
    }
    
    /**
     * Sets (as xml) the "service" attribute
     */
    public void xsetService(arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI service)
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI target = null;
            target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI)get_store().find_attribute_user(SERVICE$2);
            if (target == null)
            {
                target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI)get_store().add_attribute_user(SERVICE$2);
            }
            target.set(service);
        }
    }
    
    /**
     * Gets the "accessURI" attribute
     */
    public java.lang.String getAccessURI()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(ACCESSURI$4);
            if (target == null)
            {
                return null;
            }
            return target.getStringValue();
        }
    }
    
    /**
     * Gets (as xml) the "accessURI" attribute
     */
    public org.apache.xmlbeans.XmlAnyURI xgetAccessURI()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.XmlAnyURI target = null;
            target = (org.apache.xmlbeans.XmlAnyURI)get_store().find_attribute_user(ACCESSURI$4);
            return target;
        }
    }
    
    /**
     * True if has "accessURI" attribute
     */
    public boolean isSetAccessURI()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().find_attribute_user(ACCESSURI$4) != null;
        }
    }
    
    /**
     * Sets the "accessURI" attribute
     */
    public void setAccessURI(java.lang.String accessURI)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(ACCESSURI$4);
            if (target == null)
            {
                target = (org.apache.xmlbeans.SimpleValue)get_store().add_attribute_user(ACCESSURI$4);
            }
            target.setStringValue(accessURI);
        }
    }
    
    /**
     * Sets (as xml) the "accessURI" attribute
     */
    public void xsetAccessURI(org.apache.xmlbeans.XmlAnyURI accessURI)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.XmlAnyURI target = null;
            target = (org.apache.xmlbeans.XmlAnyURI)get_store().find_attribute_user(ACCESSURI$4);
            if (target == null)
            {
                target = (org.apache.xmlbeans.XmlAnyURI)get_store().add_attribute_user(ACCESSURI$4);
            }
            target.set(accessURI);
        }
    }
    
    /**
     * Unsets the "accessURI" attribute
     */
    public void unsetAccessURI()
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_attribute(ACCESSURI$4);
        }
    }
    
    /**
     * Gets the "targetBinding" attribute
     */
    public java.lang.String getTargetBinding()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(TARGETBINDING$6);
            if (target == null)
            {
                return null;
            }
            return target.getStringValue();
        }
    }
    
    /**
     * Gets (as xml) the "targetBinding" attribute
     */
    public arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI xgetTargetBinding()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI target = null;
            target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI)get_store().find_attribute_user(TARGETBINDING$6);
            return target;
        }
    }
    
    /**
     * True if has "targetBinding" attribute
     */
    public boolean isSetTargetBinding()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().find_attribute_user(TARGETBINDING$6) != null;
        }
    }
    
    /**
     * Sets the "targetBinding" attribute
     */
    public void setTargetBinding(java.lang.String targetBinding)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(TARGETBINDING$6);
            if (target == null)
            {
                target = (org.apache.xmlbeans.SimpleValue)get_store().add_attribute_user(TARGETBINDING$6);
            }
            target.setStringValue(targetBinding);
        }
    }
    
    /**
     * Sets (as xml) the "targetBinding" attribute
     */
    public void xsetTargetBinding(arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI targetBinding)
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI target = null;
            target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI)get_store().find_attribute_user(TARGETBINDING$6);
            if (target == null)
            {
                target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI)get_store().add_attribute_user(TARGETBINDING$6);
            }
            target.set(targetBinding);
        }
    }
    
    /**
     * Unsets the "targetBinding" attribute
     */
    public void unsetTargetBinding()
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_attribute(TARGETBINDING$6);
        }
    }
}

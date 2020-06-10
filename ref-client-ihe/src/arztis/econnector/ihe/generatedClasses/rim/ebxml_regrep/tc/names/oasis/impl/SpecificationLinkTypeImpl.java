/*
 * XML Type:  SpecificationLinkType
 * Namespace: urn:oasis:names:tc:ebxml-regrep:xsd:rim:3.0
 * Java type: arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.SpecificationLinkType
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.impl;
/**
 * An XML SpecificationLinkType(@urn:oasis:names:tc:ebxml-regrep:xsd:rim:3.0).
 *
 * This is a complex type.
 */
public class SpecificationLinkTypeImpl extends arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.impl.RegistryObjectTypeImpl implements arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.SpecificationLinkType
{
    private static final long serialVersionUID = 1L;
    
    public SpecificationLinkTypeImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName USAGEDESCRIPTION$0 = 
        new javax.xml.namespace.QName("urn:oasis:names:tc:ebxml-regrep:xsd:rim:3.0", "UsageDescription");
    private static final javax.xml.namespace.QName USAGEPARAMETER$2 = 
        new javax.xml.namespace.QName("urn:oasis:names:tc:ebxml-regrep:xsd:rim:3.0", "UsageParameter");
    private static final javax.xml.namespace.QName SERVICEBINDING$4 = 
        new javax.xml.namespace.QName("", "serviceBinding");
    private static final javax.xml.namespace.QName SPECIFICATIONOBJECT$6 = 
        new javax.xml.namespace.QName("", "specificationObject");
    
    
    /**
     * Gets the "UsageDescription" element
     */
    public arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.InternationalStringType getUsageDescription()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.InternationalStringType target = null;
            target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.InternationalStringType)get_store().find_element_user(USAGEDESCRIPTION$0, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * True if has "UsageDescription" element
     */
    public boolean isSetUsageDescription()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().count_elements(USAGEDESCRIPTION$0) != 0;
        }
    }
    
    /**
     * Sets the "UsageDescription" element
     */
    public void setUsageDescription(arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.InternationalStringType usageDescription)
    {
        generatedSetterHelperImpl(usageDescription, USAGEDESCRIPTION$0, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
    }
    
    /**
     * Appends and returns a new empty "UsageDescription" element
     */
    public arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.InternationalStringType addNewUsageDescription()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.InternationalStringType target = null;
            target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.InternationalStringType)get_store().add_element_user(USAGEDESCRIPTION$0);
            return target;
        }
    }
    
    /**
     * Unsets the "UsageDescription" element
     */
    public void unsetUsageDescription()
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_element(USAGEDESCRIPTION$0, 0);
        }
    }
    
    /**
     * Gets array of all "UsageParameter" elements
     */
    public java.lang.String[] getUsageParameterArray()
    {
        synchronized (monitor())
        {
            check_orphaned();
            java.util.List targetList = new java.util.ArrayList();
            get_store().find_all_element_users(USAGEPARAMETER$2, targetList);
            java.lang.String[] result = new java.lang.String[targetList.size()];
            for (int i = 0, len = targetList.size() ; i < len ; i++)
                result[i] = ((org.apache.xmlbeans.SimpleValue)targetList.get(i)).getStringValue();
            return result;
        }
    }
    
    /**
     * Gets ith "UsageParameter" element
     */
    public java.lang.String getUsageParameterArray(int i)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_element_user(USAGEPARAMETER$2, i);
            if (target == null)
            {
                throw new IndexOutOfBoundsException();
            }
            return target.getStringValue();
        }
    }
    
    /**
     * Gets (as xml) array of all "UsageParameter" elements
     */
    public arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.FreeFormText[] xgetUsageParameterArray()
    {
        synchronized (monitor())
        {
            check_orphaned();
            java.util.List targetList = new java.util.ArrayList();
            get_store().find_all_element_users(USAGEPARAMETER$2, targetList);
            arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.FreeFormText[] result = new arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.FreeFormText[targetList.size()];
            targetList.toArray(result);
            return result;
        }
    }
    
    /**
     * Gets (as xml) ith "UsageParameter" element
     */
    public arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.FreeFormText xgetUsageParameterArray(int i)
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.FreeFormText target = null;
            target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.FreeFormText)get_store().find_element_user(USAGEPARAMETER$2, i);
            if (target == null)
            {
                throw new IndexOutOfBoundsException();
            }
            return target;
        }
    }
    
    /**
     * Returns number of "UsageParameter" element
     */
    public int sizeOfUsageParameterArray()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().count_elements(USAGEPARAMETER$2);
        }
    }
    
    /**
     * Sets array of all "UsageParameter" element
     */
    public void setUsageParameterArray(java.lang.String[] usageParameterArray)
    {
        synchronized (monitor())
        {
            check_orphaned();
            arraySetterHelper(usageParameterArray, USAGEPARAMETER$2);
        }
    }
    
    /**
     * Sets ith "UsageParameter" element
     */
    public void setUsageParameterArray(int i, java.lang.String usageParameter)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_element_user(USAGEPARAMETER$2, i);
            if (target == null)
            {
                throw new IndexOutOfBoundsException();
            }
            target.setStringValue(usageParameter);
        }
    }
    
    /**
     * Sets (as xml) array of all "UsageParameter" element
     */
    public void xsetUsageParameterArray(arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.FreeFormText[]usageParameterArray)
    {
        synchronized (monitor())
        {
            check_orphaned();
            arraySetterHelper(usageParameterArray, USAGEPARAMETER$2);
        }
    }
    
    /**
     * Sets (as xml) ith "UsageParameter" element
     */
    public void xsetUsageParameterArray(int i, arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.FreeFormText usageParameter)
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.FreeFormText target = null;
            target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.FreeFormText)get_store().find_element_user(USAGEPARAMETER$2, i);
            if (target == null)
            {
                throw new IndexOutOfBoundsException();
            }
            target.set(usageParameter);
        }
    }
    
    /**
     * Inserts the value as the ith "UsageParameter" element
     */
    public void insertUsageParameter(int i, java.lang.String usageParameter)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = 
                (org.apache.xmlbeans.SimpleValue)get_store().insert_element_user(USAGEPARAMETER$2, i);
            target.setStringValue(usageParameter);
        }
    }
    
    /**
     * Appends the value as the last "UsageParameter" element
     */
    public void addUsageParameter(java.lang.String usageParameter)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().add_element_user(USAGEPARAMETER$2);
            target.setStringValue(usageParameter);
        }
    }
    
    /**
     * Inserts and returns a new empty value (as xml) as the ith "UsageParameter" element
     */
    public arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.FreeFormText insertNewUsageParameter(int i)
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.FreeFormText target = null;
            target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.FreeFormText)get_store().insert_element_user(USAGEPARAMETER$2, i);
            return target;
        }
    }
    
    /**
     * Appends and returns a new empty value (as xml) as the last "UsageParameter" element
     */
    public arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.FreeFormText addNewUsageParameter()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.FreeFormText target = null;
            target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.FreeFormText)get_store().add_element_user(USAGEPARAMETER$2);
            return target;
        }
    }
    
    /**
     * Removes the ith "UsageParameter" element
     */
    public void removeUsageParameter(int i)
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_element(USAGEPARAMETER$2, i);
        }
    }
    
    /**
     * Gets the "serviceBinding" attribute
     */
    public java.lang.String getServiceBinding()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(SERVICEBINDING$4);
            if (target == null)
            {
                return null;
            }
            return target.getStringValue();
        }
    }
    
    /**
     * Gets (as xml) the "serviceBinding" attribute
     */
    public arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI xgetServiceBinding()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI target = null;
            target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI)get_store().find_attribute_user(SERVICEBINDING$4);
            return target;
        }
    }
    
    /**
     * Sets the "serviceBinding" attribute
     */
    public void setServiceBinding(java.lang.String serviceBinding)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(SERVICEBINDING$4);
            if (target == null)
            {
                target = (org.apache.xmlbeans.SimpleValue)get_store().add_attribute_user(SERVICEBINDING$4);
            }
            target.setStringValue(serviceBinding);
        }
    }
    
    /**
     * Sets (as xml) the "serviceBinding" attribute
     */
    public void xsetServiceBinding(arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI serviceBinding)
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI target = null;
            target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI)get_store().find_attribute_user(SERVICEBINDING$4);
            if (target == null)
            {
                target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI)get_store().add_attribute_user(SERVICEBINDING$4);
            }
            target.set(serviceBinding);
        }
    }
    
    /**
     * Gets the "specificationObject" attribute
     */
    public java.lang.String getSpecificationObject()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(SPECIFICATIONOBJECT$6);
            if (target == null)
            {
                return null;
            }
            return target.getStringValue();
        }
    }
    
    /**
     * Gets (as xml) the "specificationObject" attribute
     */
    public arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI xgetSpecificationObject()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI target = null;
            target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI)get_store().find_attribute_user(SPECIFICATIONOBJECT$6);
            return target;
        }
    }
    
    /**
     * Sets the "specificationObject" attribute
     */
    public void setSpecificationObject(java.lang.String specificationObject)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(SPECIFICATIONOBJECT$6);
            if (target == null)
            {
                target = (org.apache.xmlbeans.SimpleValue)get_store().add_attribute_user(SPECIFICATIONOBJECT$6);
            }
            target.setStringValue(specificationObject);
        }
    }
    
    /**
     * Sets (as xml) the "specificationObject" attribute
     */
    public void xsetSpecificationObject(arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI specificationObject)
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI target = null;
            target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI)get_store().find_attribute_user(SPECIFICATIONOBJECT$6);
            if (target == null)
            {
                target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI)get_store().add_attribute_user(SPECIFICATIONOBJECT$6);
            }
            target.set(specificationObject);
        }
    }
}

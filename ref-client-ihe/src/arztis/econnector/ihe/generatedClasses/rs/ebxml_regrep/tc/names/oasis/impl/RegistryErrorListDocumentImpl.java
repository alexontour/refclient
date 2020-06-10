/*
 * An XML document type.
 * Localname: RegistryErrorList
 * Namespace: urn:oasis:names:tc:ebxml-regrep:xsd:rs:3.0
 * Java type: arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryErrorListDocument
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.impl;
/**
 * A document containing one RegistryErrorList(@urn:oasis:names:tc:ebxml-regrep:xsd:rs:3.0) element.
 *
 * This is a complex type.
 */
public class RegistryErrorListDocumentImpl extends org.apache.xmlbeans.impl.values.XmlComplexContentImpl implements arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryErrorListDocument
{
    private static final long serialVersionUID = 1L;
    
    public RegistryErrorListDocumentImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName REGISTRYERRORLIST$0 = 
        new javax.xml.namespace.QName("urn:oasis:names:tc:ebxml-regrep:xsd:rs:3.0", "RegistryErrorList");
    
    
    /**
     * Gets the "RegistryErrorList" element
     */
    public arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryErrorListDocument.RegistryErrorList getRegistryErrorList()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryErrorListDocument.RegistryErrorList target = null;
            target = (arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryErrorListDocument.RegistryErrorList)get_store().find_element_user(REGISTRYERRORLIST$0, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * Sets the "RegistryErrorList" element
     */
    public void setRegistryErrorList(arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryErrorListDocument.RegistryErrorList registryErrorList)
    {
        generatedSetterHelperImpl(registryErrorList, REGISTRYERRORLIST$0, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
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
            target = (arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryErrorListDocument.RegistryErrorList)get_store().add_element_user(REGISTRYERRORLIST$0);
            return target;
        }
    }
    /**
     * An XML RegistryErrorList(@urn:oasis:names:tc:ebxml-regrep:xsd:rs:3.0).
     *
     * This is a complex type.
     */
    public static class RegistryErrorListImpl extends org.apache.xmlbeans.impl.values.XmlComplexContentImpl implements arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryErrorListDocument.RegistryErrorList
    {
        private static final long serialVersionUID = 1L;
        
        public RegistryErrorListImpl(org.apache.xmlbeans.SchemaType sType)
        {
            super(sType);
        }
        
        private static final javax.xml.namespace.QName REGISTRYERROR$0 = 
            new javax.xml.namespace.QName("urn:oasis:names:tc:ebxml-regrep:xsd:rs:3.0", "RegistryError");
        private static final javax.xml.namespace.QName HIGHESTSEVERITY$2 = 
            new javax.xml.namespace.QName("", "highestSeverity");
        
        
        /**
         * Gets array of all "RegistryError" elements
         */
        public arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryErrorDocument.RegistryError[] getRegistryErrorArray()
        {
            synchronized (monitor())
            {
                check_orphaned();
                java.util.List targetList = new java.util.ArrayList();
                get_store().find_all_element_users(REGISTRYERROR$0, targetList);
                arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryErrorDocument.RegistryError[] result = new arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryErrorDocument.RegistryError[targetList.size()];
                targetList.toArray(result);
                return result;
            }
        }
        
        /**
         * Gets ith "RegistryError" element
         */
        public arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryErrorDocument.RegistryError getRegistryErrorArray(int i)
        {
            synchronized (monitor())
            {
                check_orphaned();
                arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryErrorDocument.RegistryError target = null;
                target = (arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryErrorDocument.RegistryError)get_store().find_element_user(REGISTRYERROR$0, i);
                if (target == null)
                {
                    throw new IndexOutOfBoundsException();
                }
                return target;
            }
        }
        
        /**
         * Returns number of "RegistryError" element
         */
        public int sizeOfRegistryErrorArray()
        {
            synchronized (monitor())
            {
                check_orphaned();
                return get_store().count_elements(REGISTRYERROR$0);
            }
        }
        
        /**
         * Sets array of all "RegistryError" element  WARNING: This method is not atomicaly synchronized.
         */
        public void setRegistryErrorArray(arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryErrorDocument.RegistryError[] registryErrorArray)
        {
            check_orphaned();
            arraySetterHelper(registryErrorArray, REGISTRYERROR$0);
        }
        
        /**
         * Sets ith "RegistryError" element
         */
        public void setRegistryErrorArray(int i, arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryErrorDocument.RegistryError registryError)
        {
            generatedSetterHelperImpl(registryError, REGISTRYERROR$0, i, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_ARRAYITEM);
        }
        
        /**
         * Inserts and returns a new empty value (as xml) as the ith "RegistryError" element
         */
        public arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryErrorDocument.RegistryError insertNewRegistryError(int i)
        {
            synchronized (monitor())
            {
                check_orphaned();
                arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryErrorDocument.RegistryError target = null;
                target = (arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryErrorDocument.RegistryError)get_store().insert_element_user(REGISTRYERROR$0, i);
                return target;
            }
        }
        
        /**
         * Appends and returns a new empty value (as xml) as the last "RegistryError" element
         */
        public arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryErrorDocument.RegistryError addNewRegistryError()
        {
            synchronized (monitor())
            {
                check_orphaned();
                arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryErrorDocument.RegistryError target = null;
                target = (arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryErrorDocument.RegistryError)get_store().add_element_user(REGISTRYERROR$0);
                return target;
            }
        }
        
        /**
         * Removes the ith "RegistryError" element
         */
        public void removeRegistryError(int i)
        {
            synchronized (monitor())
            {
                check_orphaned();
                get_store().remove_element(REGISTRYERROR$0, i);
            }
        }
        
        /**
         * Gets the "highestSeverity" attribute
         */
        public java.lang.String getHighestSeverity()
        {
            synchronized (monitor())
            {
                check_orphaned();
                org.apache.xmlbeans.SimpleValue target = null;
                target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(HIGHESTSEVERITY$2);
                if (target == null)
                {
                    return null;
                }
                return target.getStringValue();
            }
        }
        
        /**
         * Gets (as xml) the "highestSeverity" attribute
         */
        public arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI xgetHighestSeverity()
        {
            synchronized (monitor())
            {
                check_orphaned();
                arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI target = null;
                target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI)get_store().find_attribute_user(HIGHESTSEVERITY$2);
                return target;
            }
        }
        
        /**
         * True if has "highestSeverity" attribute
         */
        public boolean isSetHighestSeverity()
        {
            synchronized (monitor())
            {
                check_orphaned();
                return get_store().find_attribute_user(HIGHESTSEVERITY$2) != null;
            }
        }
        
        /**
         * Sets the "highestSeverity" attribute
         */
        public void setHighestSeverity(java.lang.String highestSeverity)
        {
            synchronized (monitor())
            {
                check_orphaned();
                org.apache.xmlbeans.SimpleValue target = null;
                target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(HIGHESTSEVERITY$2);
                if (target == null)
                {
                    target = (org.apache.xmlbeans.SimpleValue)get_store().add_attribute_user(HIGHESTSEVERITY$2);
                }
                target.setStringValue(highestSeverity);
            }
        }
        
        /**
         * Sets (as xml) the "highestSeverity" attribute
         */
        public void xsetHighestSeverity(arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI highestSeverity)
        {
            synchronized (monitor())
            {
                check_orphaned();
                arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI target = null;
                target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI)get_store().find_attribute_user(HIGHESTSEVERITY$2);
                if (target == null)
                {
                    target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI)get_store().add_attribute_user(HIGHESTSEVERITY$2);
                }
                target.set(highestSeverity);
            }
        }
        
        /**
         * Unsets the "highestSeverity" attribute
         */
        public void unsetHighestSeverity()
        {
            synchronized (monitor())
            {
                check_orphaned();
                get_store().remove_attribute(HIGHESTSEVERITY$2);
            }
        }
    }
}

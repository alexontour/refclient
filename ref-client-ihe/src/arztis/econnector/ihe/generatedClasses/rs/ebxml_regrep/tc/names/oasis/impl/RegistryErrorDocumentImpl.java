/*
 * An XML document type.
 * Localname: RegistryError
 * Namespace: urn:oasis:names:tc:ebxml-regrep:xsd:rs:3.0
 * Java type: arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryErrorDocument
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.impl;
/**
 * A document containing one RegistryError(@urn:oasis:names:tc:ebxml-regrep:xsd:rs:3.0) element.
 *
 * This is a complex type.
 */
public class RegistryErrorDocumentImpl extends org.apache.xmlbeans.impl.values.XmlComplexContentImpl implements arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryErrorDocument
{
    private static final long serialVersionUID = 1L;
    
    public RegistryErrorDocumentImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName REGISTRYERROR$0 = 
        new javax.xml.namespace.QName("urn:oasis:names:tc:ebxml-regrep:xsd:rs:3.0", "RegistryError");
    
    
    /**
     * Gets the "RegistryError" element
     */
    public arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryErrorDocument.RegistryError getRegistryError()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryErrorDocument.RegistryError target = null;
            target = (arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryErrorDocument.RegistryError)get_store().find_element_user(REGISTRYERROR$0, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * Sets the "RegistryError" element
     */
    public void setRegistryError(arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryErrorDocument.RegistryError registryError)
    {
        generatedSetterHelperImpl(registryError, REGISTRYERROR$0, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
    }
    
    /**
     * Appends and returns a new empty "RegistryError" element
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
     * An XML RegistryError(@urn:oasis:names:tc:ebxml-regrep:xsd:rs:3.0).
     *
     * This is an atomic type that is a restriction of arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryErrorDocument$RegistryError.
     */
    public static class RegistryErrorImpl extends org.apache.xmlbeans.impl.values.JavaStringHolderEx implements arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryErrorDocument.RegistryError
    {
        private static final long serialVersionUID = 1L;
        
        public RegistryErrorImpl(org.apache.xmlbeans.SchemaType sType)
        {
            super(sType, true);
        }
        
        protected RegistryErrorImpl(org.apache.xmlbeans.SchemaType sType, boolean b)
        {
            super(sType, b);
        }
        
        private static final javax.xml.namespace.QName CODECONTEXT$0 = 
            new javax.xml.namespace.QName("", "codeContext");
        private static final javax.xml.namespace.QName ERRORCODE$2 = 
            new javax.xml.namespace.QName("", "errorCode");
        private static final javax.xml.namespace.QName SEVERITY$4 = 
            new javax.xml.namespace.QName("", "severity");
        private static final javax.xml.namespace.QName LOCATION$6 = 
            new javax.xml.namespace.QName("", "location");
        
        
        /**
         * Gets the "codeContext" attribute
         */
        public java.lang.String getCodeContext()
        {
            synchronized (monitor())
            {
                check_orphaned();
                org.apache.xmlbeans.SimpleValue target = null;
                target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(CODECONTEXT$0);
                if (target == null)
                {
                    return null;
                }
                return target.getStringValue();
            }
        }
        
        /**
         * Gets (as xml) the "codeContext" attribute
         */
        public org.apache.xmlbeans.XmlString xgetCodeContext()
        {
            synchronized (monitor())
            {
                check_orphaned();
                org.apache.xmlbeans.XmlString target = null;
                target = (org.apache.xmlbeans.XmlString)get_store().find_attribute_user(CODECONTEXT$0);
                return target;
            }
        }
        
        /**
         * Sets the "codeContext" attribute
         */
        public void setCodeContext(java.lang.String codeContext)
        {
            synchronized (monitor())
            {
                check_orphaned();
                org.apache.xmlbeans.SimpleValue target = null;
                target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(CODECONTEXT$0);
                if (target == null)
                {
                    target = (org.apache.xmlbeans.SimpleValue)get_store().add_attribute_user(CODECONTEXT$0);
                }
                target.setStringValue(codeContext);
            }
        }
        
        /**
         * Sets (as xml) the "codeContext" attribute
         */
        public void xsetCodeContext(org.apache.xmlbeans.XmlString codeContext)
        {
            synchronized (monitor())
            {
                check_orphaned();
                org.apache.xmlbeans.XmlString target = null;
                target = (org.apache.xmlbeans.XmlString)get_store().find_attribute_user(CODECONTEXT$0);
                if (target == null)
                {
                    target = (org.apache.xmlbeans.XmlString)get_store().add_attribute_user(CODECONTEXT$0);
                }
                target.set(codeContext);
            }
        }
        
        /**
         * Gets the "errorCode" attribute
         */
        public java.lang.String getErrorCode()
        {
            synchronized (monitor())
            {
                check_orphaned();
                org.apache.xmlbeans.SimpleValue target = null;
                target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(ERRORCODE$2);
                if (target == null)
                {
                    return null;
                }
                return target.getStringValue();
            }
        }
        
        /**
         * Gets (as xml) the "errorCode" attribute
         */
        public org.apache.xmlbeans.XmlString xgetErrorCode()
        {
            synchronized (monitor())
            {
                check_orphaned();
                org.apache.xmlbeans.XmlString target = null;
                target = (org.apache.xmlbeans.XmlString)get_store().find_attribute_user(ERRORCODE$2);
                return target;
            }
        }
        
        /**
         * Sets the "errorCode" attribute
         */
        public void setErrorCode(java.lang.String errorCode)
        {
            synchronized (monitor())
            {
                check_orphaned();
                org.apache.xmlbeans.SimpleValue target = null;
                target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(ERRORCODE$2);
                if (target == null)
                {
                    target = (org.apache.xmlbeans.SimpleValue)get_store().add_attribute_user(ERRORCODE$2);
                }
                target.setStringValue(errorCode);
            }
        }
        
        /**
         * Sets (as xml) the "errorCode" attribute
         */
        public void xsetErrorCode(org.apache.xmlbeans.XmlString errorCode)
        {
            synchronized (monitor())
            {
                check_orphaned();
                org.apache.xmlbeans.XmlString target = null;
                target = (org.apache.xmlbeans.XmlString)get_store().find_attribute_user(ERRORCODE$2);
                if (target == null)
                {
                    target = (org.apache.xmlbeans.XmlString)get_store().add_attribute_user(ERRORCODE$2);
                }
                target.set(errorCode);
            }
        }
        
        /**
         * Gets the "severity" attribute
         */
        public java.lang.String getSeverity()
        {
            synchronized (monitor())
            {
                check_orphaned();
                org.apache.xmlbeans.SimpleValue target = null;
                target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(SEVERITY$4);
                if (target == null)
                {
                    target = (org.apache.xmlbeans.SimpleValue)get_default_attribute_value(SEVERITY$4);
                }
                if (target == null)
                {
                    return null;
                }
                return target.getStringValue();
            }
        }
        
        /**
         * Gets (as xml) the "severity" attribute
         */
        public arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI xgetSeverity()
        {
            synchronized (monitor())
            {
                check_orphaned();
                arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI target = null;
                target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI)get_store().find_attribute_user(SEVERITY$4);
                if (target == null)
                {
                    target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI)get_default_attribute_value(SEVERITY$4);
                }
                return target;
            }
        }
        
        /**
         * True if has "severity" attribute
         */
        public boolean isSetSeverity()
        {
            synchronized (monitor())
            {
                check_orphaned();
                return get_store().find_attribute_user(SEVERITY$4) != null;
            }
        }
        
        /**
         * Sets the "severity" attribute
         */
        public void setSeverity(java.lang.String severity)
        {
            synchronized (monitor())
            {
                check_orphaned();
                org.apache.xmlbeans.SimpleValue target = null;
                target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(SEVERITY$4);
                if (target == null)
                {
                    target = (org.apache.xmlbeans.SimpleValue)get_store().add_attribute_user(SEVERITY$4);
                }
                target.setStringValue(severity);
            }
        }
        
        /**
         * Sets (as xml) the "severity" attribute
         */
        public void xsetSeverity(arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI severity)
        {
            synchronized (monitor())
            {
                check_orphaned();
                arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI target = null;
                target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI)get_store().find_attribute_user(SEVERITY$4);
                if (target == null)
                {
                    target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI)get_store().add_attribute_user(SEVERITY$4);
                }
                target.set(severity);
            }
        }
        
        /**
         * Unsets the "severity" attribute
         */
        public void unsetSeverity()
        {
            synchronized (monitor())
            {
                check_orphaned();
                get_store().remove_attribute(SEVERITY$4);
            }
        }
        
        /**
         * Gets the "location" attribute
         */
        public java.lang.String getLocation()
        {
            synchronized (monitor())
            {
                check_orphaned();
                org.apache.xmlbeans.SimpleValue target = null;
                target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(LOCATION$6);
                if (target == null)
                {
                    return null;
                }
                return target.getStringValue();
            }
        }
        
        /**
         * Gets (as xml) the "location" attribute
         */
        public org.apache.xmlbeans.XmlString xgetLocation()
        {
            synchronized (monitor())
            {
                check_orphaned();
                org.apache.xmlbeans.XmlString target = null;
                target = (org.apache.xmlbeans.XmlString)get_store().find_attribute_user(LOCATION$6);
                return target;
            }
        }
        
        /**
         * True if has "location" attribute
         */
        public boolean isSetLocation()
        {
            synchronized (monitor())
            {
                check_orphaned();
                return get_store().find_attribute_user(LOCATION$6) != null;
            }
        }
        
        /**
         * Sets the "location" attribute
         */
        public void setLocation(java.lang.String location)
        {
            synchronized (monitor())
            {
                check_orphaned();
                org.apache.xmlbeans.SimpleValue target = null;
                target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(LOCATION$6);
                if (target == null)
                {
                    target = (org.apache.xmlbeans.SimpleValue)get_store().add_attribute_user(LOCATION$6);
                }
                target.setStringValue(location);
            }
        }
        
        /**
         * Sets (as xml) the "location" attribute
         */
        public void xsetLocation(org.apache.xmlbeans.XmlString location)
        {
            synchronized (monitor())
            {
                check_orphaned();
                org.apache.xmlbeans.XmlString target = null;
                target = (org.apache.xmlbeans.XmlString)get_store().find_attribute_user(LOCATION$6);
                if (target == null)
                {
                    target = (org.apache.xmlbeans.XmlString)get_store().add_attribute_user(LOCATION$6);
                }
                target.set(location);
            }
        }
        
        /**
         * Unsets the "location" attribute
         */
        public void unsetLocation()
        {
            synchronized (monitor())
            {
                check_orphaned();
                get_store().remove_attribute(LOCATION$6);
            }
        }
    }
}

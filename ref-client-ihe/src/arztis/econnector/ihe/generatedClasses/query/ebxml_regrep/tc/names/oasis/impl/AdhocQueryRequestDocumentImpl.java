/*
 * An XML document type.
 * Localname: AdhocQueryRequest
 * Namespace: urn:oasis:names:tc:ebxml-regrep:xsd:query:3.0
 * Java type: arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AdhocQueryRequestDocument
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.impl;
/**
 * A document containing one AdhocQueryRequest(@urn:oasis:names:tc:ebxml-regrep:xsd:query:3.0) element.
 *
 * This is a complex type.
 */
public class AdhocQueryRequestDocumentImpl extends org.apache.xmlbeans.impl.values.XmlComplexContentImpl implements arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AdhocQueryRequestDocument
{
    private static final long serialVersionUID = 1L;
    
    public AdhocQueryRequestDocumentImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName ADHOCQUERYREQUEST$0 = 
        new javax.xml.namespace.QName("urn:oasis:names:tc:ebxml-regrep:xsd:query:3.0", "AdhocQueryRequest");
    
    
    /**
     * Gets the "AdhocQueryRequest" element
     */
    public arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AdhocQueryRequestDocument.AdhocQueryRequest getAdhocQueryRequest()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AdhocQueryRequestDocument.AdhocQueryRequest target = null;
            target = (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AdhocQueryRequestDocument.AdhocQueryRequest)get_store().find_element_user(ADHOCQUERYREQUEST$0, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * Sets the "AdhocQueryRequest" element
     */
    public void setAdhocQueryRequest(arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AdhocQueryRequestDocument.AdhocQueryRequest adhocQueryRequest)
    {
        generatedSetterHelperImpl(adhocQueryRequest, ADHOCQUERYREQUEST$0, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
    }
    
    /**
     * Appends and returns a new empty "AdhocQueryRequest" element
     */
    public arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AdhocQueryRequestDocument.AdhocQueryRequest addNewAdhocQueryRequest()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AdhocQueryRequestDocument.AdhocQueryRequest target = null;
            target = (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AdhocQueryRequestDocument.AdhocQueryRequest)get_store().add_element_user(ADHOCQUERYREQUEST$0);
            return target;
        }
    }
    /**
     * An XML AdhocQueryRequest(@urn:oasis:names:tc:ebxml-regrep:xsd:query:3.0).
     *
     * This is a complex type.
     */
    public static class AdhocQueryRequestImpl extends arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.impl.RegistryRequestTypeImpl implements arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AdhocQueryRequestDocument.AdhocQueryRequest
    {
        private static final long serialVersionUID = 1L;
        
        public AdhocQueryRequestImpl(org.apache.xmlbeans.SchemaType sType)
        {
            super(sType);
        }
        
        private static final javax.xml.namespace.QName RESPONSEOPTION$0 = 
            new javax.xml.namespace.QName("urn:oasis:names:tc:ebxml-regrep:xsd:query:3.0", "ResponseOption");
        private static final javax.xml.namespace.QName ADHOCQUERY$2 = 
            new javax.xml.namespace.QName("urn:oasis:names:tc:ebxml-regrep:xsd:rim:3.0", "AdhocQuery");
        private static final javax.xml.namespace.QName FEDERATED$4 = 
            new javax.xml.namespace.QName("", "federated");
        private static final javax.xml.namespace.QName FEDERATION$6 = 
            new javax.xml.namespace.QName("", "federation");
        private static final javax.xml.namespace.QName STARTINDEX$8 = 
            new javax.xml.namespace.QName("", "startIndex");
        private static final javax.xml.namespace.QName MAXRESULTS$10 = 
            new javax.xml.namespace.QName("", "maxResults");
        
        
        /**
         * Gets the "ResponseOption" element
         */
        public arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ResponseOptionType getResponseOption()
        {
            synchronized (monitor())
            {
                check_orphaned();
                arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ResponseOptionType target = null;
                target = (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ResponseOptionType)get_store().find_element_user(RESPONSEOPTION$0, 0);
                if (target == null)
                {
                    return null;
                }
                return target;
            }
        }
        
        /**
         * Sets the "ResponseOption" element
         */
        public void setResponseOption(arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ResponseOptionType responseOption)
        {
            generatedSetterHelperImpl(responseOption, RESPONSEOPTION$0, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
        }
        
        /**
         * Appends and returns a new empty "ResponseOption" element
         */
        public arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ResponseOptionType addNewResponseOption()
        {
            synchronized (monitor())
            {
                check_orphaned();
                arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ResponseOptionType target = null;
                target = (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ResponseOptionType)get_store().add_element_user(RESPONSEOPTION$0);
                return target;
            }
        }
        
        /**
         * Gets the "AdhocQuery" element
         */
        public arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.AdhocQueryType getAdhocQuery()
        {
            synchronized (monitor())
            {
                check_orphaned();
                arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.AdhocQueryType target = null;
                target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.AdhocQueryType)get_store().find_element_user(ADHOCQUERY$2, 0);
                if (target == null)
                {
                    return null;
                }
                return target;
            }
        }
        
        /**
         * Sets the "AdhocQuery" element
         */
        public void setAdhocQuery(arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.AdhocQueryType adhocQuery)
        {
            generatedSetterHelperImpl(adhocQuery, ADHOCQUERY$2, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
        }
        
        /**
         * Appends and returns a new empty "AdhocQuery" element
         */
        public arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.AdhocQueryType addNewAdhocQuery()
        {
            synchronized (monitor())
            {
                check_orphaned();
                arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.AdhocQueryType target = null;
                target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.AdhocQueryType)get_store().add_element_user(ADHOCQUERY$2);
                return target;
            }
        }
        
        /**
         * Gets the "federated" attribute
         */
        public boolean getFederated()
        {
            synchronized (monitor())
            {
                check_orphaned();
                org.apache.xmlbeans.SimpleValue target = null;
                target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(FEDERATED$4);
                if (target == null)
                {
                    target = (org.apache.xmlbeans.SimpleValue)get_default_attribute_value(FEDERATED$4);
                }
                if (target == null)
                {
                    return false;
                }
                return target.getBooleanValue();
            }
        }
        
        /**
         * Gets (as xml) the "federated" attribute
         */
        public org.apache.xmlbeans.XmlBoolean xgetFederated()
        {
            synchronized (monitor())
            {
                check_orphaned();
                org.apache.xmlbeans.XmlBoolean target = null;
                target = (org.apache.xmlbeans.XmlBoolean)get_store().find_attribute_user(FEDERATED$4);
                if (target == null)
                {
                    target = (org.apache.xmlbeans.XmlBoolean)get_default_attribute_value(FEDERATED$4);
                }
                return target;
            }
        }
        
        /**
         * True if has "federated" attribute
         */
        public boolean isSetFederated()
        {
            synchronized (monitor())
            {
                check_orphaned();
                return get_store().find_attribute_user(FEDERATED$4) != null;
            }
        }
        
        /**
         * Sets the "federated" attribute
         */
        public void setFederated(boolean federated)
        {
            synchronized (monitor())
            {
                check_orphaned();
                org.apache.xmlbeans.SimpleValue target = null;
                target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(FEDERATED$4);
                if (target == null)
                {
                    target = (org.apache.xmlbeans.SimpleValue)get_store().add_attribute_user(FEDERATED$4);
                }
                target.setBooleanValue(federated);
            }
        }
        
        /**
         * Sets (as xml) the "federated" attribute
         */
        public void xsetFederated(org.apache.xmlbeans.XmlBoolean federated)
        {
            synchronized (monitor())
            {
                check_orphaned();
                org.apache.xmlbeans.XmlBoolean target = null;
                target = (org.apache.xmlbeans.XmlBoolean)get_store().find_attribute_user(FEDERATED$4);
                if (target == null)
                {
                    target = (org.apache.xmlbeans.XmlBoolean)get_store().add_attribute_user(FEDERATED$4);
                }
                target.set(federated);
            }
        }
        
        /**
         * Unsets the "federated" attribute
         */
        public void unsetFederated()
        {
            synchronized (monitor())
            {
                check_orphaned();
                get_store().remove_attribute(FEDERATED$4);
            }
        }
        
        /**
         * Gets the "federation" attribute
         */
        public java.lang.String getFederation()
        {
            synchronized (monitor())
            {
                check_orphaned();
                org.apache.xmlbeans.SimpleValue target = null;
                target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(FEDERATION$6);
                if (target == null)
                {
                    return null;
                }
                return target.getStringValue();
            }
        }
        
        /**
         * Gets (as xml) the "federation" attribute
         */
        public org.apache.xmlbeans.XmlAnyURI xgetFederation()
        {
            synchronized (monitor())
            {
                check_orphaned();
                org.apache.xmlbeans.XmlAnyURI target = null;
                target = (org.apache.xmlbeans.XmlAnyURI)get_store().find_attribute_user(FEDERATION$6);
                return target;
            }
        }
        
        /**
         * True if has "federation" attribute
         */
        public boolean isSetFederation()
        {
            synchronized (monitor())
            {
                check_orphaned();
                return get_store().find_attribute_user(FEDERATION$6) != null;
            }
        }
        
        /**
         * Sets the "federation" attribute
         */
        public void setFederation(java.lang.String federation)
        {
            synchronized (monitor())
            {
                check_orphaned();
                org.apache.xmlbeans.SimpleValue target = null;
                target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(FEDERATION$6);
                if (target == null)
                {
                    target = (org.apache.xmlbeans.SimpleValue)get_store().add_attribute_user(FEDERATION$6);
                }
                target.setStringValue(federation);
            }
        }
        
        /**
         * Sets (as xml) the "federation" attribute
         */
        public void xsetFederation(org.apache.xmlbeans.XmlAnyURI federation)
        {
            synchronized (monitor())
            {
                check_orphaned();
                org.apache.xmlbeans.XmlAnyURI target = null;
                target = (org.apache.xmlbeans.XmlAnyURI)get_store().find_attribute_user(FEDERATION$6);
                if (target == null)
                {
                    target = (org.apache.xmlbeans.XmlAnyURI)get_store().add_attribute_user(FEDERATION$6);
                }
                target.set(federation);
            }
        }
        
        /**
         * Unsets the "federation" attribute
         */
        public void unsetFederation()
        {
            synchronized (monitor())
            {
                check_orphaned();
                get_store().remove_attribute(FEDERATION$6);
            }
        }
        
        /**
         * Gets the "startIndex" attribute
         */
        public java.math.BigInteger getStartIndex()
        {
            synchronized (monitor())
            {
                check_orphaned();
                org.apache.xmlbeans.SimpleValue target = null;
                target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(STARTINDEX$8);
                if (target == null)
                {
                    target = (org.apache.xmlbeans.SimpleValue)get_default_attribute_value(STARTINDEX$8);
                }
                if (target == null)
                {
                    return null;
                }
                return target.getBigIntegerValue();
            }
        }
        
        /**
         * Gets (as xml) the "startIndex" attribute
         */
        public org.apache.xmlbeans.XmlInteger xgetStartIndex()
        {
            synchronized (monitor())
            {
                check_orphaned();
                org.apache.xmlbeans.XmlInteger target = null;
                target = (org.apache.xmlbeans.XmlInteger)get_store().find_attribute_user(STARTINDEX$8);
                if (target == null)
                {
                    target = (org.apache.xmlbeans.XmlInteger)get_default_attribute_value(STARTINDEX$8);
                }
                return target;
            }
        }
        
        /**
         * True if has "startIndex" attribute
         */
        public boolean isSetStartIndex()
        {
            synchronized (monitor())
            {
                check_orphaned();
                return get_store().find_attribute_user(STARTINDEX$8) != null;
            }
        }
        
        /**
         * Sets the "startIndex" attribute
         */
        public void setStartIndex(java.math.BigInteger startIndex)
        {
            synchronized (monitor())
            {
                check_orphaned();
                org.apache.xmlbeans.SimpleValue target = null;
                target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(STARTINDEX$8);
                if (target == null)
                {
                    target = (org.apache.xmlbeans.SimpleValue)get_store().add_attribute_user(STARTINDEX$8);
                }
                target.setBigIntegerValue(startIndex);
            }
        }
        
        /**
         * Sets (as xml) the "startIndex" attribute
         */
        public void xsetStartIndex(org.apache.xmlbeans.XmlInteger startIndex)
        {
            synchronized (monitor())
            {
                check_orphaned();
                org.apache.xmlbeans.XmlInteger target = null;
                target = (org.apache.xmlbeans.XmlInteger)get_store().find_attribute_user(STARTINDEX$8);
                if (target == null)
                {
                    target = (org.apache.xmlbeans.XmlInteger)get_store().add_attribute_user(STARTINDEX$8);
                }
                target.set(startIndex);
            }
        }
        
        /**
         * Unsets the "startIndex" attribute
         */
        public void unsetStartIndex()
        {
            synchronized (monitor())
            {
                check_orphaned();
                get_store().remove_attribute(STARTINDEX$8);
            }
        }
        
        /**
         * Gets the "maxResults" attribute
         */
        public java.math.BigInteger getMaxResults()
        {
            synchronized (monitor())
            {
                check_orphaned();
                org.apache.xmlbeans.SimpleValue target = null;
                target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(MAXRESULTS$10);
                if (target == null)
                {
                    target = (org.apache.xmlbeans.SimpleValue)get_default_attribute_value(MAXRESULTS$10);
                }
                if (target == null)
                {
                    return null;
                }
                return target.getBigIntegerValue();
            }
        }
        
        /**
         * Gets (as xml) the "maxResults" attribute
         */
        public org.apache.xmlbeans.XmlInteger xgetMaxResults()
        {
            synchronized (monitor())
            {
                check_orphaned();
                org.apache.xmlbeans.XmlInteger target = null;
                target = (org.apache.xmlbeans.XmlInteger)get_store().find_attribute_user(MAXRESULTS$10);
                if (target == null)
                {
                    target = (org.apache.xmlbeans.XmlInteger)get_default_attribute_value(MAXRESULTS$10);
                }
                return target;
            }
        }
        
        /**
         * True if has "maxResults" attribute
         */
        public boolean isSetMaxResults()
        {
            synchronized (monitor())
            {
                check_orphaned();
                return get_store().find_attribute_user(MAXRESULTS$10) != null;
            }
        }
        
        /**
         * Sets the "maxResults" attribute
         */
        public void setMaxResults(java.math.BigInteger maxResults)
        {
            synchronized (monitor())
            {
                check_orphaned();
                org.apache.xmlbeans.SimpleValue target = null;
                target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(MAXRESULTS$10);
                if (target == null)
                {
                    target = (org.apache.xmlbeans.SimpleValue)get_store().add_attribute_user(MAXRESULTS$10);
                }
                target.setBigIntegerValue(maxResults);
            }
        }
        
        /**
         * Sets (as xml) the "maxResults" attribute
         */
        public void xsetMaxResults(org.apache.xmlbeans.XmlInteger maxResults)
        {
            synchronized (monitor())
            {
                check_orphaned();
                org.apache.xmlbeans.XmlInteger target = null;
                target = (org.apache.xmlbeans.XmlInteger)get_store().find_attribute_user(MAXRESULTS$10);
                if (target == null)
                {
                    target = (org.apache.xmlbeans.XmlInteger)get_store().add_attribute_user(MAXRESULTS$10);
                }
                target.set(maxResults);
            }
        }
        
        /**
         * Unsets the "maxResults" attribute
         */
        public void unsetMaxResults()
        {
            synchronized (monitor())
            {
                check_orphaned();
                get_store().remove_attribute(MAXRESULTS$10);
            }
        }
    }
}

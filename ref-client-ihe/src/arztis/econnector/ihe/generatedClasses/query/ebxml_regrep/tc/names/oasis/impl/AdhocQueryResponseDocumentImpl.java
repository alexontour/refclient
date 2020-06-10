/*
 * An XML document type.
 * Localname: AdhocQueryResponse
 * Namespace: urn:oasis:names:tc:ebxml-regrep:xsd:query:3.0
 * Java type: arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AdhocQueryResponseDocument
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.impl;
/**
 * A document containing one AdhocQueryResponse(@urn:oasis:names:tc:ebxml-regrep:xsd:query:3.0) element.
 *
 * This is a complex type.
 */
public class AdhocQueryResponseDocumentImpl extends org.apache.xmlbeans.impl.values.XmlComplexContentImpl implements arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AdhocQueryResponseDocument
{
    private static final long serialVersionUID = 1L;
    
    public AdhocQueryResponseDocumentImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName ADHOCQUERYRESPONSE$0 = 
        new javax.xml.namespace.QName("urn:oasis:names:tc:ebxml-regrep:xsd:query:3.0", "AdhocQueryResponse");
    
    
    /**
     * Gets the "AdhocQueryResponse" element
     */
    public arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AdhocQueryResponseDocument.AdhocQueryResponse getAdhocQueryResponse()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AdhocQueryResponseDocument.AdhocQueryResponse target = null;
            target = (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AdhocQueryResponseDocument.AdhocQueryResponse)get_store().find_element_user(ADHOCQUERYRESPONSE$0, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * Sets the "AdhocQueryResponse" element
     */
    public void setAdhocQueryResponse(arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AdhocQueryResponseDocument.AdhocQueryResponse adhocQueryResponse)
    {
        generatedSetterHelperImpl(adhocQueryResponse, ADHOCQUERYRESPONSE$0, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
    }
    
    /**
     * Appends and returns a new empty "AdhocQueryResponse" element
     */
    public arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AdhocQueryResponseDocument.AdhocQueryResponse addNewAdhocQueryResponse()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AdhocQueryResponseDocument.AdhocQueryResponse target = null;
            target = (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AdhocQueryResponseDocument.AdhocQueryResponse)get_store().add_element_user(ADHOCQUERYRESPONSE$0);
            return target;
        }
    }
    /**
     * An XML AdhocQueryResponse(@urn:oasis:names:tc:ebxml-regrep:xsd:query:3.0).
     *
     * This is a complex type.
     */
    public static class AdhocQueryResponseImpl extends arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.impl.RegistryResponseTypeImpl implements arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AdhocQueryResponseDocument.AdhocQueryResponse
    {
        private static final long serialVersionUID = 1L;
        
        public AdhocQueryResponseImpl(org.apache.xmlbeans.SchemaType sType)
        {
            super(sType);
        }
        
        private static final javax.xml.namespace.QName REGISTRYOBJECTLIST$0 = 
            new javax.xml.namespace.QName("urn:oasis:names:tc:ebxml-regrep:xsd:rim:3.0", "RegistryObjectList");
        private static final javax.xml.namespace.QName STARTINDEX$2 = 
            new javax.xml.namespace.QName("", "startIndex");
        private static final javax.xml.namespace.QName TOTALRESULTCOUNT$4 = 
            new javax.xml.namespace.QName("", "totalResultCount");
        
        
        /**
         * Gets the "RegistryObjectList" element
         */
        public arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.RegistryObjectListType getRegistryObjectList()
        {
            synchronized (monitor())
            {
                check_orphaned();
                arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.RegistryObjectListType target = null;
                target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.RegistryObjectListType)get_store().find_element_user(REGISTRYOBJECTLIST$0, 0);
                if (target == null)
                {
                    return null;
                }
                return target;
            }
        }
        
        /**
         * Sets the "RegistryObjectList" element
         */
        public void setRegistryObjectList(arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.RegistryObjectListType registryObjectList)
        {
            generatedSetterHelperImpl(registryObjectList, REGISTRYOBJECTLIST$0, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
        }
        
        /**
         * Appends and returns a new empty "RegistryObjectList" element
         */
        public arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.RegistryObjectListType addNewRegistryObjectList()
        {
            synchronized (monitor())
            {
                check_orphaned();
                arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.RegistryObjectListType target = null;
                target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.RegistryObjectListType)get_store().add_element_user(REGISTRYOBJECTLIST$0);
                return target;
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
                target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(STARTINDEX$2);
                if (target == null)
                {
                    target = (org.apache.xmlbeans.SimpleValue)get_default_attribute_value(STARTINDEX$2);
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
                target = (org.apache.xmlbeans.XmlInteger)get_store().find_attribute_user(STARTINDEX$2);
                if (target == null)
                {
                    target = (org.apache.xmlbeans.XmlInteger)get_default_attribute_value(STARTINDEX$2);
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
                return get_store().find_attribute_user(STARTINDEX$2) != null;
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
                target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(STARTINDEX$2);
                if (target == null)
                {
                    target = (org.apache.xmlbeans.SimpleValue)get_store().add_attribute_user(STARTINDEX$2);
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
                target = (org.apache.xmlbeans.XmlInteger)get_store().find_attribute_user(STARTINDEX$2);
                if (target == null)
                {
                    target = (org.apache.xmlbeans.XmlInteger)get_store().add_attribute_user(STARTINDEX$2);
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
                get_store().remove_attribute(STARTINDEX$2);
            }
        }
        
        /**
         * Gets the "totalResultCount" attribute
         */
        public java.math.BigInteger getTotalResultCount()
        {
            synchronized (monitor())
            {
                check_orphaned();
                org.apache.xmlbeans.SimpleValue target = null;
                target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(TOTALRESULTCOUNT$4);
                if (target == null)
                {
                    return null;
                }
                return target.getBigIntegerValue();
            }
        }
        
        /**
         * Gets (as xml) the "totalResultCount" attribute
         */
        public org.apache.xmlbeans.XmlInteger xgetTotalResultCount()
        {
            synchronized (monitor())
            {
                check_orphaned();
                org.apache.xmlbeans.XmlInteger target = null;
                target = (org.apache.xmlbeans.XmlInteger)get_store().find_attribute_user(TOTALRESULTCOUNT$4);
                return target;
            }
        }
        
        /**
         * True if has "totalResultCount" attribute
         */
        public boolean isSetTotalResultCount()
        {
            synchronized (monitor())
            {
                check_orphaned();
                return get_store().find_attribute_user(TOTALRESULTCOUNT$4) != null;
            }
        }
        
        /**
         * Sets the "totalResultCount" attribute
         */
        public void setTotalResultCount(java.math.BigInteger totalResultCount)
        {
            synchronized (monitor())
            {
                check_orphaned();
                org.apache.xmlbeans.SimpleValue target = null;
                target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(TOTALRESULTCOUNT$4);
                if (target == null)
                {
                    target = (org.apache.xmlbeans.SimpleValue)get_store().add_attribute_user(TOTALRESULTCOUNT$4);
                }
                target.setBigIntegerValue(totalResultCount);
            }
        }
        
        /**
         * Sets (as xml) the "totalResultCount" attribute
         */
        public void xsetTotalResultCount(org.apache.xmlbeans.XmlInteger totalResultCount)
        {
            synchronized (monitor())
            {
                check_orphaned();
                org.apache.xmlbeans.XmlInteger target = null;
                target = (org.apache.xmlbeans.XmlInteger)get_store().find_attribute_user(TOTALRESULTCOUNT$4);
                if (target == null)
                {
                    target = (org.apache.xmlbeans.XmlInteger)get_store().add_attribute_user(TOTALRESULTCOUNT$4);
                }
                target.set(totalResultCount);
            }
        }
        
        /**
         * Unsets the "totalResultCount" attribute
         */
        public void unsetTotalResultCount()
        {
            synchronized (monitor())
            {
                check_orphaned();
                get_store().remove_attribute(TOTALRESULTCOUNT$4);
            }
        }
    }
}

/*
 * XML Type:  RetrieveDocumentSetRequestType
 * Namespace: urn:ihe:iti:xds-b:2007
 * Java type: arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetRequestType
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.impl;
/**
 * An XML RetrieveDocumentSetRequestType(@urn:ihe:iti:xds-b:2007).
 *
 * This is a complex type.
 */
public class RetrieveDocumentSetRequestTypeImpl extends org.apache.xmlbeans.impl.values.XmlComplexContentImpl implements arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetRequestType
{
    private static final long serialVersionUID = 1L;
    
    public RetrieveDocumentSetRequestTypeImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName DOCUMENTREQUEST$0 = 
        new javax.xml.namespace.QName("urn:ihe:iti:xds-b:2007", "DocumentRequest");
    
    
    /**
     * Gets array of all "DocumentRequest" elements
     */
    public arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetRequestType.DocumentRequest[] getDocumentRequestArray()
    {
        synchronized (monitor())
        {
            check_orphaned();
            java.util.List targetList = new java.util.ArrayList();
            get_store().find_all_element_users(DOCUMENTREQUEST$0, targetList);
            arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetRequestType.DocumentRequest[] result = new arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetRequestType.DocumentRequest[targetList.size()];
            targetList.toArray(result);
            return result;
        }
    }
    
    /**
     * Gets ith "DocumentRequest" element
     */
    public arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetRequestType.DocumentRequest getDocumentRequestArray(int i)
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetRequestType.DocumentRequest target = null;
            target = (arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetRequestType.DocumentRequest)get_store().find_element_user(DOCUMENTREQUEST$0, i);
            if (target == null)
            {
                throw new IndexOutOfBoundsException();
            }
            return target;
        }
    }
    
    /**
     * Returns number of "DocumentRequest" element
     */
    public int sizeOfDocumentRequestArray()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().count_elements(DOCUMENTREQUEST$0);
        }
    }
    
    /**
     * Sets array of all "DocumentRequest" element  WARNING: This method is not atomicaly synchronized.
     */
    public void setDocumentRequestArray(arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetRequestType.DocumentRequest[] documentRequestArray)
    {
        check_orphaned();
        arraySetterHelper(documentRequestArray, DOCUMENTREQUEST$0);
    }
    
    /**
     * Sets ith "DocumentRequest" element
     */
    public void setDocumentRequestArray(int i, arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetRequestType.DocumentRequest documentRequest)
    {
        generatedSetterHelperImpl(documentRequest, DOCUMENTREQUEST$0, i, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_ARRAYITEM);
    }
    
    /**
     * Inserts and returns a new empty value (as xml) as the ith "DocumentRequest" element
     */
    public arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetRequestType.DocumentRequest insertNewDocumentRequest(int i)
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetRequestType.DocumentRequest target = null;
            target = (arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetRequestType.DocumentRequest)get_store().insert_element_user(DOCUMENTREQUEST$0, i);
            return target;
        }
    }
    
    /**
     * Appends and returns a new empty value (as xml) as the last "DocumentRequest" element
     */
    public arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetRequestType.DocumentRequest addNewDocumentRequest()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetRequestType.DocumentRequest target = null;
            target = (arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetRequestType.DocumentRequest)get_store().add_element_user(DOCUMENTREQUEST$0);
            return target;
        }
    }
    
    /**
     * Removes the ith "DocumentRequest" element
     */
    public void removeDocumentRequest(int i)
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_element(DOCUMENTREQUEST$0, i);
        }
    }
    /**
     * An XML DocumentRequest(@urn:ihe:iti:xds-b:2007).
     *
     * This is a complex type.
     */
    public static class DocumentRequestImpl extends org.apache.xmlbeans.impl.values.XmlComplexContentImpl implements arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetRequestType.DocumentRequest
    {
        private static final long serialVersionUID = 1L;
        
        public DocumentRequestImpl(org.apache.xmlbeans.SchemaType sType)
        {
            super(sType);
        }
        
        private static final javax.xml.namespace.QName HOMECOMMUNITYID$0 = 
            new javax.xml.namespace.QName("urn:ihe:iti:xds-b:2007", "HomeCommunityId");
        private static final javax.xml.namespace.QName REPOSITORYUNIQUEID$2 = 
            new javax.xml.namespace.QName("urn:ihe:iti:xds-b:2007", "RepositoryUniqueId");
        private static final javax.xml.namespace.QName DOCUMENTUNIQUEID$4 = 
            new javax.xml.namespace.QName("urn:ihe:iti:xds-b:2007", "DocumentUniqueId");
        
        
        /**
         * Gets the "HomeCommunityId" element
         */
        public java.lang.String getHomeCommunityId()
        {
            synchronized (monitor())
            {
                check_orphaned();
                org.apache.xmlbeans.SimpleValue target = null;
                target = (org.apache.xmlbeans.SimpleValue)get_store().find_element_user(HOMECOMMUNITYID$0, 0);
                if (target == null)
                {
                    return null;
                }
                return target.getStringValue();
            }
        }
        
        /**
         * Gets (as xml) the "HomeCommunityId" element
         */
        public arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.LongName xgetHomeCommunityId()
        {
            synchronized (monitor())
            {
                check_orphaned();
                arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.LongName target = null;
                target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.LongName)get_store().find_element_user(HOMECOMMUNITYID$0, 0);
                return target;
            }
        }
        
        /**
         * True if has "HomeCommunityId" element
         */
        public boolean isSetHomeCommunityId()
        {
            synchronized (monitor())
            {
                check_orphaned();
                return get_store().count_elements(HOMECOMMUNITYID$0) != 0;
            }
        }
        
        /**
         * Sets the "HomeCommunityId" element
         */
        public void setHomeCommunityId(java.lang.String homeCommunityId)
        {
            synchronized (monitor())
            {
                check_orphaned();
                org.apache.xmlbeans.SimpleValue target = null;
                target = (org.apache.xmlbeans.SimpleValue)get_store().find_element_user(HOMECOMMUNITYID$0, 0);
                if (target == null)
                {
                    target = (org.apache.xmlbeans.SimpleValue)get_store().add_element_user(HOMECOMMUNITYID$0);
                }
                target.setStringValue(homeCommunityId);
            }
        }
        
        /**
         * Sets (as xml) the "HomeCommunityId" element
         */
        public void xsetHomeCommunityId(arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.LongName homeCommunityId)
        {
            synchronized (monitor())
            {
                check_orphaned();
                arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.LongName target = null;
                target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.LongName)get_store().find_element_user(HOMECOMMUNITYID$0, 0);
                if (target == null)
                {
                    target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.LongName)get_store().add_element_user(HOMECOMMUNITYID$0);
                }
                target.set(homeCommunityId);
            }
        }
        
        /**
         * Unsets the "HomeCommunityId" element
         */
        public void unsetHomeCommunityId()
        {
            synchronized (monitor())
            {
                check_orphaned();
                get_store().remove_element(HOMECOMMUNITYID$0, 0);
            }
        }
        
        /**
         * Gets the "RepositoryUniqueId" element
         */
        public java.lang.String getRepositoryUniqueId()
        {
            synchronized (monitor())
            {
                check_orphaned();
                org.apache.xmlbeans.SimpleValue target = null;
                target = (org.apache.xmlbeans.SimpleValue)get_store().find_element_user(REPOSITORYUNIQUEID$2, 0);
                if (target == null)
                {
                    return null;
                }
                return target.getStringValue();
            }
        }
        
        /**
         * Gets (as xml) the "RepositoryUniqueId" element
         */
        public arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.LongName xgetRepositoryUniqueId()
        {
            synchronized (monitor())
            {
                check_orphaned();
                arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.LongName target = null;
                target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.LongName)get_store().find_element_user(REPOSITORYUNIQUEID$2, 0);
                return target;
            }
        }
        
        /**
         * Sets the "RepositoryUniqueId" element
         */
        public void setRepositoryUniqueId(java.lang.String repositoryUniqueId)
        {
            synchronized (monitor())
            {
                check_orphaned();
                org.apache.xmlbeans.SimpleValue target = null;
                target = (org.apache.xmlbeans.SimpleValue)get_store().find_element_user(REPOSITORYUNIQUEID$2, 0);
                if (target == null)
                {
                    target = (org.apache.xmlbeans.SimpleValue)get_store().add_element_user(REPOSITORYUNIQUEID$2);
                }
                target.setStringValue(repositoryUniqueId);
            }
        }
        
        /**
         * Sets (as xml) the "RepositoryUniqueId" element
         */
        public void xsetRepositoryUniqueId(arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.LongName repositoryUniqueId)
        {
            synchronized (monitor())
            {
                check_orphaned();
                arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.LongName target = null;
                target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.LongName)get_store().find_element_user(REPOSITORYUNIQUEID$2, 0);
                if (target == null)
                {
                    target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.LongName)get_store().add_element_user(REPOSITORYUNIQUEID$2);
                }
                target.set(repositoryUniqueId);
            }
        }
        
        /**
         * Gets the "DocumentUniqueId" element
         */
        public java.lang.String getDocumentUniqueId()
        {
            synchronized (monitor())
            {
                check_orphaned();
                org.apache.xmlbeans.SimpleValue target = null;
                target = (org.apache.xmlbeans.SimpleValue)get_store().find_element_user(DOCUMENTUNIQUEID$4, 0);
                if (target == null)
                {
                    return null;
                }
                return target.getStringValue();
            }
        }
        
        /**
         * Gets (as xml) the "DocumentUniqueId" element
         */
        public arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.LongName xgetDocumentUniqueId()
        {
            synchronized (monitor())
            {
                check_orphaned();
                arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.LongName target = null;
                target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.LongName)get_store().find_element_user(DOCUMENTUNIQUEID$4, 0);
                return target;
            }
        }
        
        /**
         * Sets the "DocumentUniqueId" element
         */
        public void setDocumentUniqueId(java.lang.String documentUniqueId)
        {
            synchronized (monitor())
            {
                check_orphaned();
                org.apache.xmlbeans.SimpleValue target = null;
                target = (org.apache.xmlbeans.SimpleValue)get_store().find_element_user(DOCUMENTUNIQUEID$4, 0);
                if (target == null)
                {
                    target = (org.apache.xmlbeans.SimpleValue)get_store().add_element_user(DOCUMENTUNIQUEID$4);
                }
                target.setStringValue(documentUniqueId);
            }
        }
        
        /**
         * Sets (as xml) the "DocumentUniqueId" element
         */
        public void xsetDocumentUniqueId(arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.LongName documentUniqueId)
        {
            synchronized (monitor())
            {
                check_orphaned();
                arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.LongName target = null;
                target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.LongName)get_store().find_element_user(DOCUMENTUNIQUEID$4, 0);
                if (target == null)
                {
                    target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.LongName)get_store().add_element_user(DOCUMENTUNIQUEID$4);
                }
                target.set(documentUniqueId);
            }
        }
    }
}

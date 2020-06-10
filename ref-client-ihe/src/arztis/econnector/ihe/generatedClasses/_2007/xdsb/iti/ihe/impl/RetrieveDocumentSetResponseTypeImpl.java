/*
 * XML Type:  RetrieveDocumentSetResponseType
 * Namespace: urn:ihe:iti:xds-b:2007
 * Java type: arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetResponseType
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.impl;
/**
 * An XML RetrieveDocumentSetResponseType(@urn:ihe:iti:xds-b:2007).
 *
 * This is a complex type.
 */
public class RetrieveDocumentSetResponseTypeImpl extends org.apache.xmlbeans.impl.values.XmlComplexContentImpl implements arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetResponseType
{
    private static final long serialVersionUID = 1L;
    
    public RetrieveDocumentSetResponseTypeImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName REGISTRYRESPONSE$0 = 
        new javax.xml.namespace.QName("urn:oasis:names:tc:ebxml-regrep:xsd:rs:3.0", "RegistryResponse");
    private static final javax.xml.namespace.QName DOCUMENTRESPONSE$2 = 
        new javax.xml.namespace.QName("urn:ihe:iti:xds-b:2007", "DocumentResponse");
    
    
    /**
     * Gets the "RegistryResponse" element
     */
    public arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryResponseType getRegistryResponse()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryResponseType target = null;
            target = (arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryResponseType)get_store().find_element_user(REGISTRYRESPONSE$0, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * Sets the "RegistryResponse" element
     */
    public void setRegistryResponse(arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryResponseType registryResponse)
    {
        generatedSetterHelperImpl(registryResponse, REGISTRYRESPONSE$0, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
    }
    
    /**
     * Appends and returns a new empty "RegistryResponse" element
     */
    public arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryResponseType addNewRegistryResponse()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryResponseType target = null;
            target = (arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.RegistryResponseType)get_store().add_element_user(REGISTRYRESPONSE$0);
            return target;
        }
    }
    
    /**
     * Gets array of all "DocumentResponse" elements
     */
    public arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetResponseType.DocumentResponse[] getDocumentResponseArray()
    {
        synchronized (monitor())
        {
            check_orphaned();
            java.util.List targetList = new java.util.ArrayList();
            get_store().find_all_element_users(DOCUMENTRESPONSE$2, targetList);
            arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetResponseType.DocumentResponse[] result = new arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetResponseType.DocumentResponse[targetList.size()];
            targetList.toArray(result);
            return result;
        }
    }
    
    /**
     * Gets ith "DocumentResponse" element
     */
    public arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetResponseType.DocumentResponse getDocumentResponseArray(int i)
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetResponseType.DocumentResponse target = null;
            target = (arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetResponseType.DocumentResponse)get_store().find_element_user(DOCUMENTRESPONSE$2, i);
            if (target == null)
            {
                throw new IndexOutOfBoundsException();
            }
            return target;
        }
    }
    
    /**
     * Returns number of "DocumentResponse" element
     */
    public int sizeOfDocumentResponseArray()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().count_elements(DOCUMENTRESPONSE$2);
        }
    }
    
    /**
     * Sets array of all "DocumentResponse" element  WARNING: This method is not atomicaly synchronized.
     */
    public void setDocumentResponseArray(arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetResponseType.DocumentResponse[] documentResponseArray)
    {
        check_orphaned();
        arraySetterHelper(documentResponseArray, DOCUMENTRESPONSE$2);
    }
    
    /**
     * Sets ith "DocumentResponse" element
     */
    public void setDocumentResponseArray(int i, arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetResponseType.DocumentResponse documentResponse)
    {
        generatedSetterHelperImpl(documentResponse, DOCUMENTRESPONSE$2, i, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_ARRAYITEM);
    }
    
    /**
     * Inserts and returns a new empty value (as xml) as the ith "DocumentResponse" element
     */
    public arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetResponseType.DocumentResponse insertNewDocumentResponse(int i)
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetResponseType.DocumentResponse target = null;
            target = (arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetResponseType.DocumentResponse)get_store().insert_element_user(DOCUMENTRESPONSE$2, i);
            return target;
        }
    }
    
    /**
     * Appends and returns a new empty value (as xml) as the last "DocumentResponse" element
     */
    public arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetResponseType.DocumentResponse addNewDocumentResponse()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetResponseType.DocumentResponse target = null;
            target = (arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetResponseType.DocumentResponse)get_store().add_element_user(DOCUMENTRESPONSE$2);
            return target;
        }
    }
    
    /**
     * Removes the ith "DocumentResponse" element
     */
    public void removeDocumentResponse(int i)
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_element(DOCUMENTRESPONSE$2, i);
        }
    }
    /**
     * An XML DocumentResponse(@urn:ihe:iti:xds-b:2007).
     *
     * This is a complex type.
     */
    public static class DocumentResponseImpl extends org.apache.xmlbeans.impl.values.XmlComplexContentImpl implements arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.RetrieveDocumentSetResponseType.DocumentResponse
    {
        private static final long serialVersionUID = 1L;
        
        public DocumentResponseImpl(org.apache.xmlbeans.SchemaType sType)
        {
            super(sType);
        }
        
        private static final javax.xml.namespace.QName HOMECOMMUNITYID$0 = 
            new javax.xml.namespace.QName("urn:ihe:iti:xds-b:2007", "HomeCommunityId");
        private static final javax.xml.namespace.QName REPOSITORYUNIQUEID$2 = 
            new javax.xml.namespace.QName("urn:ihe:iti:xds-b:2007", "RepositoryUniqueId");
        private static final javax.xml.namespace.QName DOCUMENTUNIQUEID$4 = 
            new javax.xml.namespace.QName("urn:ihe:iti:xds-b:2007", "DocumentUniqueId");
        private static final javax.xml.namespace.QName NEWREPOSITORYUNIQUEID$6 = 
            new javax.xml.namespace.QName("urn:ihe:iti:xds-b:2007", "NewRepositoryUniqueId");
        private static final javax.xml.namespace.QName NEWDOCUMENTUNIQUEID$8 = 
            new javax.xml.namespace.QName("urn:ihe:iti:xds-b:2007", "NewDocumentUniqueId");
        private static final javax.xml.namespace.QName MIMETYPE$10 = 
            new javax.xml.namespace.QName("urn:ihe:iti:xds-b:2007", "mimeType");
        private static final javax.xml.namespace.QName DOCUMENT$12 = 
            new javax.xml.namespace.QName("urn:ihe:iti:xds-b:2007", "Document");
        
        
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
        
        /**
         * Gets the "NewRepositoryUniqueId" element
         */
        public java.lang.String getNewRepositoryUniqueId()
        {
            synchronized (monitor())
            {
                check_orphaned();
                org.apache.xmlbeans.SimpleValue target = null;
                target = (org.apache.xmlbeans.SimpleValue)get_store().find_element_user(NEWREPOSITORYUNIQUEID$6, 0);
                if (target == null)
                {
                    return null;
                }
                return target.getStringValue();
            }
        }
        
        /**
         * Gets (as xml) the "NewRepositoryUniqueId" element
         */
        public arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.LongName xgetNewRepositoryUniqueId()
        {
            synchronized (monitor())
            {
                check_orphaned();
                arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.LongName target = null;
                target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.LongName)get_store().find_element_user(NEWREPOSITORYUNIQUEID$6, 0);
                return target;
            }
        }
        
        /**
         * True if has "NewRepositoryUniqueId" element
         */
        public boolean isSetNewRepositoryUniqueId()
        {
            synchronized (monitor())
            {
                check_orphaned();
                return get_store().count_elements(NEWREPOSITORYUNIQUEID$6) != 0;
            }
        }
        
        /**
         * Sets the "NewRepositoryUniqueId" element
         */
        public void setNewRepositoryUniqueId(java.lang.String newRepositoryUniqueId)
        {
            synchronized (monitor())
            {
                check_orphaned();
                org.apache.xmlbeans.SimpleValue target = null;
                target = (org.apache.xmlbeans.SimpleValue)get_store().find_element_user(NEWREPOSITORYUNIQUEID$6, 0);
                if (target == null)
                {
                    target = (org.apache.xmlbeans.SimpleValue)get_store().add_element_user(NEWREPOSITORYUNIQUEID$6);
                }
                target.setStringValue(newRepositoryUniqueId);
            }
        }
        
        /**
         * Sets (as xml) the "NewRepositoryUniqueId" element
         */
        public void xsetNewRepositoryUniqueId(arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.LongName newRepositoryUniqueId)
        {
            synchronized (monitor())
            {
                check_orphaned();
                arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.LongName target = null;
                target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.LongName)get_store().find_element_user(NEWREPOSITORYUNIQUEID$6, 0);
                if (target == null)
                {
                    target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.LongName)get_store().add_element_user(NEWREPOSITORYUNIQUEID$6);
                }
                target.set(newRepositoryUniqueId);
            }
        }
        
        /**
         * Unsets the "NewRepositoryUniqueId" element
         */
        public void unsetNewRepositoryUniqueId()
        {
            synchronized (monitor())
            {
                check_orphaned();
                get_store().remove_element(NEWREPOSITORYUNIQUEID$6, 0);
            }
        }
        
        /**
         * Gets the "NewDocumentUniqueId" element
         */
        public java.lang.String getNewDocumentUniqueId()
        {
            synchronized (monitor())
            {
                check_orphaned();
                org.apache.xmlbeans.SimpleValue target = null;
                target = (org.apache.xmlbeans.SimpleValue)get_store().find_element_user(NEWDOCUMENTUNIQUEID$8, 0);
                if (target == null)
                {
                    return null;
                }
                return target.getStringValue();
            }
        }
        
        /**
         * Gets (as xml) the "NewDocumentUniqueId" element
         */
        public arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.LongName xgetNewDocumentUniqueId()
        {
            synchronized (monitor())
            {
                check_orphaned();
                arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.LongName target = null;
                target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.LongName)get_store().find_element_user(NEWDOCUMENTUNIQUEID$8, 0);
                return target;
            }
        }
        
        /**
         * True if has "NewDocumentUniqueId" element
         */
        public boolean isSetNewDocumentUniqueId()
        {
            synchronized (monitor())
            {
                check_orphaned();
                return get_store().count_elements(NEWDOCUMENTUNIQUEID$8) != 0;
            }
        }
        
        /**
         * Sets the "NewDocumentUniqueId" element
         */
        public void setNewDocumentUniqueId(java.lang.String newDocumentUniqueId)
        {
            synchronized (monitor())
            {
                check_orphaned();
                org.apache.xmlbeans.SimpleValue target = null;
                target = (org.apache.xmlbeans.SimpleValue)get_store().find_element_user(NEWDOCUMENTUNIQUEID$8, 0);
                if (target == null)
                {
                    target = (org.apache.xmlbeans.SimpleValue)get_store().add_element_user(NEWDOCUMENTUNIQUEID$8);
                }
                target.setStringValue(newDocumentUniqueId);
            }
        }
        
        /**
         * Sets (as xml) the "NewDocumentUniqueId" element
         */
        public void xsetNewDocumentUniqueId(arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.LongName newDocumentUniqueId)
        {
            synchronized (monitor())
            {
                check_orphaned();
                arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.LongName target = null;
                target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.LongName)get_store().find_element_user(NEWDOCUMENTUNIQUEID$8, 0);
                if (target == null)
                {
                    target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.LongName)get_store().add_element_user(NEWDOCUMENTUNIQUEID$8);
                }
                target.set(newDocumentUniqueId);
            }
        }
        
        /**
         * Unsets the "NewDocumentUniqueId" element
         */
        public void unsetNewDocumentUniqueId()
        {
            synchronized (monitor())
            {
                check_orphaned();
                get_store().remove_element(NEWDOCUMENTUNIQUEID$8, 0);
            }
        }
        
        /**
         * Gets the "mimeType" element
         */
        public java.lang.String getMimeType()
        {
            synchronized (monitor())
            {
                check_orphaned();
                org.apache.xmlbeans.SimpleValue target = null;
                target = (org.apache.xmlbeans.SimpleValue)get_store().find_element_user(MIMETYPE$10, 0);
                if (target == null)
                {
                    return null;
                }
                return target.getStringValue();
            }
        }
        
        /**
         * Gets (as xml) the "mimeType" element
         */
        public arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.LongName xgetMimeType()
        {
            synchronized (monitor())
            {
                check_orphaned();
                arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.LongName target = null;
                target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.LongName)get_store().find_element_user(MIMETYPE$10, 0);
                return target;
            }
        }
        
        /**
         * Sets the "mimeType" element
         */
        public void setMimeType(java.lang.String mimeType)
        {
            synchronized (monitor())
            {
                check_orphaned();
                org.apache.xmlbeans.SimpleValue target = null;
                target = (org.apache.xmlbeans.SimpleValue)get_store().find_element_user(MIMETYPE$10, 0);
                if (target == null)
                {
                    target = (org.apache.xmlbeans.SimpleValue)get_store().add_element_user(MIMETYPE$10);
                }
                target.setStringValue(mimeType);
            }
        }
        
        /**
         * Sets (as xml) the "mimeType" element
         */
        public void xsetMimeType(arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.LongName mimeType)
        {
            synchronized (monitor())
            {
                check_orphaned();
                arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.LongName target = null;
                target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.LongName)get_store().find_element_user(MIMETYPE$10, 0);
                if (target == null)
                {
                    target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.LongName)get_store().add_element_user(MIMETYPE$10);
                }
                target.set(mimeType);
            }
        }
        
        /**
         * Gets the "Document" element
         */
        public arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.DocumentType getDocument()
        {
            synchronized (monitor())
            {
                check_orphaned();
                arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.DocumentType target = null;
                target = (arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.DocumentType)get_store().find_element_user(DOCUMENT$12, 0);
                if (target == null)
                {
                    return null;
                }
                return target;
            }
        }
        
        /**
         * Sets the "Document" element
         */
        public void setDocument(arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.DocumentType document)
        {
            generatedSetterHelperImpl(document, DOCUMENT$12, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
        }
        
        /**
         * Appends and returns a new empty "Document" element
         */
        public arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.DocumentType addNewDocument()
        {
            synchronized (monitor())
            {
                check_orphaned();
                arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.DocumentType target = null;
                target = (arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.DocumentType)get_store().add_element_user(DOCUMENT$12);
                return target;
            }
        }
    }
}

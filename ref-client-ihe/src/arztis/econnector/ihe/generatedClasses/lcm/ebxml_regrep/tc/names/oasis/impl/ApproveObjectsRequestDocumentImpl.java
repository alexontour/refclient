/*
 * An XML document type.
 * Localname: ApproveObjectsRequest
 * Namespace: urn:oasis:names:tc:ebxml-regrep:xsd:lcm:3.0
 * Java type: arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.ApproveObjectsRequestDocument
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.impl;
/**
 * A document containing one ApproveObjectsRequest(@urn:oasis:names:tc:ebxml-regrep:xsd:lcm:3.0) element.
 *
 * This is a complex type.
 */
public class ApproveObjectsRequestDocumentImpl extends org.apache.xmlbeans.impl.values.XmlComplexContentImpl implements arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.ApproveObjectsRequestDocument
{
    private static final long serialVersionUID = 1L;
    
    public ApproveObjectsRequestDocumentImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName APPROVEOBJECTSREQUEST$0 = 
        new javax.xml.namespace.QName("urn:oasis:names:tc:ebxml-regrep:xsd:lcm:3.0", "ApproveObjectsRequest");
    
    
    /**
     * Gets the "ApproveObjectsRequest" element
     */
    public arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.ApproveObjectsRequestDocument.ApproveObjectsRequest getApproveObjectsRequest()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.ApproveObjectsRequestDocument.ApproveObjectsRequest target = null;
            target = (arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.ApproveObjectsRequestDocument.ApproveObjectsRequest)get_store().find_element_user(APPROVEOBJECTSREQUEST$0, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * Sets the "ApproveObjectsRequest" element
     */
    public void setApproveObjectsRequest(arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.ApproveObjectsRequestDocument.ApproveObjectsRequest approveObjectsRequest)
    {
        generatedSetterHelperImpl(approveObjectsRequest, APPROVEOBJECTSREQUEST$0, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
    }
    
    /**
     * Appends and returns a new empty "ApproveObjectsRequest" element
     */
    public arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.ApproveObjectsRequestDocument.ApproveObjectsRequest addNewApproveObjectsRequest()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.ApproveObjectsRequestDocument.ApproveObjectsRequest target = null;
            target = (arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.ApproveObjectsRequestDocument.ApproveObjectsRequest)get_store().add_element_user(APPROVEOBJECTSREQUEST$0);
            return target;
        }
    }
    /**
     * An XML ApproveObjectsRequest(@urn:oasis:names:tc:ebxml-regrep:xsd:lcm:3.0).
     *
     * This is a complex type.
     */
    public static class ApproveObjectsRequestImpl extends arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.impl.RegistryRequestTypeImpl implements arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.ApproveObjectsRequestDocument.ApproveObjectsRequest
    {
        private static final long serialVersionUID = 1L;
        
        public ApproveObjectsRequestImpl(org.apache.xmlbeans.SchemaType sType)
        {
            super(sType);
        }
        
        private static final javax.xml.namespace.QName ADHOCQUERY$0 = 
            new javax.xml.namespace.QName("urn:oasis:names:tc:ebxml-regrep:xsd:rim:3.0", "AdhocQuery");
        private static final javax.xml.namespace.QName OBJECTREFLIST$2 = 
            new javax.xml.namespace.QName("urn:oasis:names:tc:ebxml-regrep:xsd:rim:3.0", "ObjectRefList");
        
        
        /**
         * Gets the "AdhocQuery" element
         */
        public arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.AdhocQueryType getAdhocQuery()
        {
            synchronized (monitor())
            {
                check_orphaned();
                arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.AdhocQueryType target = null;
                target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.AdhocQueryType)get_store().find_element_user(ADHOCQUERY$0, 0);
                if (target == null)
                {
                    return null;
                }
                return target;
            }
        }
        
        /**
         * True if has "AdhocQuery" element
         */
        public boolean isSetAdhocQuery()
        {
            synchronized (monitor())
            {
                check_orphaned();
                return get_store().count_elements(ADHOCQUERY$0) != 0;
            }
        }
        
        /**
         * Sets the "AdhocQuery" element
         */
        public void setAdhocQuery(arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.AdhocQueryType adhocQuery)
        {
            generatedSetterHelperImpl(adhocQuery, ADHOCQUERY$0, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
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
                target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.AdhocQueryType)get_store().add_element_user(ADHOCQUERY$0);
                return target;
            }
        }
        
        /**
         * Unsets the "AdhocQuery" element
         */
        public void unsetAdhocQuery()
        {
            synchronized (monitor())
            {
                check_orphaned();
                get_store().remove_element(ADHOCQUERY$0, 0);
            }
        }
        
        /**
         * Gets the "ObjectRefList" element
         */
        public arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ObjectRefListType getObjectRefList()
        {
            synchronized (monitor())
            {
                check_orphaned();
                arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ObjectRefListType target = null;
                target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ObjectRefListType)get_store().find_element_user(OBJECTREFLIST$2, 0);
                if (target == null)
                {
                    return null;
                }
                return target;
            }
        }
        
        /**
         * True if has "ObjectRefList" element
         */
        public boolean isSetObjectRefList()
        {
            synchronized (monitor())
            {
                check_orphaned();
                return get_store().count_elements(OBJECTREFLIST$2) != 0;
            }
        }
        
        /**
         * Sets the "ObjectRefList" element
         */
        public void setObjectRefList(arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ObjectRefListType objectRefList)
        {
            generatedSetterHelperImpl(objectRefList, OBJECTREFLIST$2, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
        }
        
        /**
         * Appends and returns a new empty "ObjectRefList" element
         */
        public arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ObjectRefListType addNewObjectRefList()
        {
            synchronized (monitor())
            {
                check_orphaned();
                arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ObjectRefListType target = null;
                target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ObjectRefListType)get_store().add_element_user(OBJECTREFLIST$2);
                return target;
            }
        }
        
        /**
         * Unsets the "ObjectRefList" element
         */
        public void unsetObjectRefList()
        {
            synchronized (monitor())
            {
                check_orphaned();
                get_store().remove_element(OBJECTREFLIST$2, 0);
            }
        }
    }
}

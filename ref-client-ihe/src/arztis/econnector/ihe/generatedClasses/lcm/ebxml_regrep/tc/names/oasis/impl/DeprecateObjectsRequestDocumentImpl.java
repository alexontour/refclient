/*
 * An XML document type.
 * Localname: DeprecateObjectsRequest
 * Namespace: urn:oasis:names:tc:ebxml-regrep:xsd:lcm:3.0
 * Java type: arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.DeprecateObjectsRequestDocument
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.impl;
/**
 * A document containing one DeprecateObjectsRequest(@urn:oasis:names:tc:ebxml-regrep:xsd:lcm:3.0) element.
 *
 * This is a complex type.
 */
public class DeprecateObjectsRequestDocumentImpl extends org.apache.xmlbeans.impl.values.XmlComplexContentImpl implements arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.DeprecateObjectsRequestDocument
{
    private static final long serialVersionUID = 1L;
    
    public DeprecateObjectsRequestDocumentImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName DEPRECATEOBJECTSREQUEST$0 = 
        new javax.xml.namespace.QName("urn:oasis:names:tc:ebxml-regrep:xsd:lcm:3.0", "DeprecateObjectsRequest");
    
    
    /**
     * Gets the "DeprecateObjectsRequest" element
     */
    public arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.DeprecateObjectsRequestDocument.DeprecateObjectsRequest getDeprecateObjectsRequest()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.DeprecateObjectsRequestDocument.DeprecateObjectsRequest target = null;
            target = (arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.DeprecateObjectsRequestDocument.DeprecateObjectsRequest)get_store().find_element_user(DEPRECATEOBJECTSREQUEST$0, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * Sets the "DeprecateObjectsRequest" element
     */
    public void setDeprecateObjectsRequest(arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.DeprecateObjectsRequestDocument.DeprecateObjectsRequest deprecateObjectsRequest)
    {
        generatedSetterHelperImpl(deprecateObjectsRequest, DEPRECATEOBJECTSREQUEST$0, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
    }
    
    /**
     * Appends and returns a new empty "DeprecateObjectsRequest" element
     */
    public arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.DeprecateObjectsRequestDocument.DeprecateObjectsRequest addNewDeprecateObjectsRequest()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.DeprecateObjectsRequestDocument.DeprecateObjectsRequest target = null;
            target = (arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.DeprecateObjectsRequestDocument.DeprecateObjectsRequest)get_store().add_element_user(DEPRECATEOBJECTSREQUEST$0);
            return target;
        }
    }
    /**
     * An XML DeprecateObjectsRequest(@urn:oasis:names:tc:ebxml-regrep:xsd:lcm:3.0).
     *
     * This is a complex type.
     */
    public static class DeprecateObjectsRequestImpl extends arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.impl.RegistryRequestTypeImpl implements arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.DeprecateObjectsRequestDocument.DeprecateObjectsRequest
    {
        private static final long serialVersionUID = 1L;
        
        public DeprecateObjectsRequestImpl(org.apache.xmlbeans.SchemaType sType)
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

/*
 * An XML document type.
 * Localname: RemoveObjectsRequest
 * Namespace: urn:oasis:names:tc:ebxml-regrep:xsd:lcm:3.0
 * Java type: arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.RemoveObjectsRequestDocument
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.impl;
/**
 * A document containing one RemoveObjectsRequest(@urn:oasis:names:tc:ebxml-regrep:xsd:lcm:3.0) element.
 *
 * This is a complex type.
 */
public class RemoveObjectsRequestDocumentImpl extends org.apache.xmlbeans.impl.values.XmlComplexContentImpl implements arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.RemoveObjectsRequestDocument
{
    private static final long serialVersionUID = 1L;
    
    public RemoveObjectsRequestDocumentImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName REMOVEOBJECTSREQUEST$0 = 
        new javax.xml.namespace.QName("urn:oasis:names:tc:ebxml-regrep:xsd:lcm:3.0", "RemoveObjectsRequest");
    
    
    /**
     * Gets the "RemoveObjectsRequest" element
     */
    public arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.RemoveObjectsRequestDocument.RemoveObjectsRequest getRemoveObjectsRequest()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.RemoveObjectsRequestDocument.RemoveObjectsRequest target = null;
            target = (arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.RemoveObjectsRequestDocument.RemoveObjectsRequest)get_store().find_element_user(REMOVEOBJECTSREQUEST$0, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * Sets the "RemoveObjectsRequest" element
     */
    public void setRemoveObjectsRequest(arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.RemoveObjectsRequestDocument.RemoveObjectsRequest removeObjectsRequest)
    {
        generatedSetterHelperImpl(removeObjectsRequest, REMOVEOBJECTSREQUEST$0, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
    }
    
    /**
     * Appends and returns a new empty "RemoveObjectsRequest" element
     */
    public arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.RemoveObjectsRequestDocument.RemoveObjectsRequest addNewRemoveObjectsRequest()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.RemoveObjectsRequestDocument.RemoveObjectsRequest target = null;
            target = (arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.RemoveObjectsRequestDocument.RemoveObjectsRequest)get_store().add_element_user(REMOVEOBJECTSREQUEST$0);
            return target;
        }
    }
    /**
     * An XML RemoveObjectsRequest(@urn:oasis:names:tc:ebxml-regrep:xsd:lcm:3.0).
     *
     * This is a complex type.
     */
    public static class RemoveObjectsRequestImpl extends arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.impl.RegistryRequestTypeImpl implements arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.RemoveObjectsRequestDocument.RemoveObjectsRequest
    {
        private static final long serialVersionUID = 1L;
        
        public RemoveObjectsRequestImpl(org.apache.xmlbeans.SchemaType sType)
        {
            super(sType);
        }
        
        private static final javax.xml.namespace.QName ADHOCQUERY$0 = 
            new javax.xml.namespace.QName("urn:oasis:names:tc:ebxml-regrep:xsd:rim:3.0", "AdhocQuery");
        private static final javax.xml.namespace.QName OBJECTREFLIST$2 = 
            new javax.xml.namespace.QName("urn:oasis:names:tc:ebxml-regrep:xsd:rim:3.0", "ObjectRefList");
        private static final javax.xml.namespace.QName DELETIONSCOPE$4 = 
            new javax.xml.namespace.QName("", "deletionScope");
        
        
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
        
        /**
         * Gets the "deletionScope" attribute
         */
        public java.lang.String getDeletionScope()
        {
            synchronized (monitor())
            {
                check_orphaned();
                org.apache.xmlbeans.SimpleValue target = null;
                target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(DELETIONSCOPE$4);
                if (target == null)
                {
                    target = (org.apache.xmlbeans.SimpleValue)get_default_attribute_value(DELETIONSCOPE$4);
                }
                if (target == null)
                {
                    return null;
                }
                return target.getStringValue();
            }
        }
        
        /**
         * Gets (as xml) the "deletionScope" attribute
         */
        public arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI xgetDeletionScope()
        {
            synchronized (monitor())
            {
                check_orphaned();
                arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI target = null;
                target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI)get_store().find_attribute_user(DELETIONSCOPE$4);
                if (target == null)
                {
                    target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI)get_default_attribute_value(DELETIONSCOPE$4);
                }
                return target;
            }
        }
        
        /**
         * True if has "deletionScope" attribute
         */
        public boolean isSetDeletionScope()
        {
            synchronized (monitor())
            {
                check_orphaned();
                return get_store().find_attribute_user(DELETIONSCOPE$4) != null;
            }
        }
        
        /**
         * Sets the "deletionScope" attribute
         */
        public void setDeletionScope(java.lang.String deletionScope)
        {
            synchronized (monitor())
            {
                check_orphaned();
                org.apache.xmlbeans.SimpleValue target = null;
                target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(DELETIONSCOPE$4);
                if (target == null)
                {
                    target = (org.apache.xmlbeans.SimpleValue)get_store().add_attribute_user(DELETIONSCOPE$4);
                }
                target.setStringValue(deletionScope);
            }
        }
        
        /**
         * Sets (as xml) the "deletionScope" attribute
         */
        public void xsetDeletionScope(arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI deletionScope)
        {
            synchronized (monitor())
            {
                check_orphaned();
                arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI target = null;
                target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI)get_store().find_attribute_user(DELETIONSCOPE$4);
                if (target == null)
                {
                    target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI)get_store().add_attribute_user(DELETIONSCOPE$4);
                }
                target.set(deletionScope);
            }
        }
        
        /**
         * Unsets the "deletionScope" attribute
         */
        public void unsetDeletionScope()
        {
            synchronized (monitor())
            {
                check_orphaned();
                get_store().remove_attribute(DELETIONSCOPE$4);
            }
        }
    }
}

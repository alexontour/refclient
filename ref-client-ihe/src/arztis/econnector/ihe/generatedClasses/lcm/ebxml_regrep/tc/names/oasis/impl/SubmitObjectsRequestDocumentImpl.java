/*
 * An XML document type.
 * Localname: SubmitObjectsRequest
 * Namespace: urn:oasis:names:tc:ebxml-regrep:xsd:lcm:3.0
 * Java type: arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.SubmitObjectsRequestDocument
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.impl;
/**
 * A document containing one SubmitObjectsRequest(@urn:oasis:names:tc:ebxml-regrep:xsd:lcm:3.0) element.
 *
 * This is a complex type.
 */
public class SubmitObjectsRequestDocumentImpl extends org.apache.xmlbeans.impl.values.XmlComplexContentImpl implements arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.SubmitObjectsRequestDocument
{
    private static final long serialVersionUID = 1L;
    
    public SubmitObjectsRequestDocumentImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName SUBMITOBJECTSREQUEST$0 = 
        new javax.xml.namespace.QName("urn:oasis:names:tc:ebxml-regrep:xsd:lcm:3.0", "SubmitObjectsRequest");
    
    
    /**
     * Gets the "SubmitObjectsRequest" element
     */
    public arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.SubmitObjectsRequestDocument.SubmitObjectsRequest getSubmitObjectsRequest()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.SubmitObjectsRequestDocument.SubmitObjectsRequest target = null;
            target = (arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.SubmitObjectsRequestDocument.SubmitObjectsRequest)get_store().find_element_user(SUBMITOBJECTSREQUEST$0, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * Sets the "SubmitObjectsRequest" element
     */
    public void setSubmitObjectsRequest(arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.SubmitObjectsRequestDocument.SubmitObjectsRequest submitObjectsRequest)
    {
        generatedSetterHelperImpl(submitObjectsRequest, SUBMITOBJECTSREQUEST$0, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
    }
    
    /**
     * Appends and returns a new empty "SubmitObjectsRequest" element
     */
    public arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.SubmitObjectsRequestDocument.SubmitObjectsRequest addNewSubmitObjectsRequest()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.SubmitObjectsRequestDocument.SubmitObjectsRequest target = null;
            target = (arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.SubmitObjectsRequestDocument.SubmitObjectsRequest)get_store().add_element_user(SUBMITOBJECTSREQUEST$0);
            return target;
        }
    }
    /**
     * An XML SubmitObjectsRequest(@urn:oasis:names:tc:ebxml-regrep:xsd:lcm:3.0).
     *
     * This is a complex type.
     */
    public static class SubmitObjectsRequestImpl extends arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.impl.RegistryRequestTypeImpl implements arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.SubmitObjectsRequestDocument.SubmitObjectsRequest
    {
        private static final long serialVersionUID = 1L;
        
        public SubmitObjectsRequestImpl(org.apache.xmlbeans.SchemaType sType)
        {
            super(sType);
        }
        
        private static final javax.xml.namespace.QName REGISTRYOBJECTLIST$0 = 
            new javax.xml.namespace.QName("urn:oasis:names:tc:ebxml-regrep:xsd:rim:3.0", "RegistryObjectList");
        
        
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
    }
}

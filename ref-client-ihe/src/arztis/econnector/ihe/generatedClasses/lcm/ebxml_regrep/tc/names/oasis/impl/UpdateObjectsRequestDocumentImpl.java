/*
 * An XML document type.
 * Localname: UpdateObjectsRequest
 * Namespace: urn:oasis:names:tc:ebxml-regrep:xsd:lcm:3.0
 * Java type: arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.UpdateObjectsRequestDocument
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.impl;
/**
 * A document containing one UpdateObjectsRequest(@urn:oasis:names:tc:ebxml-regrep:xsd:lcm:3.0) element.
 *
 * This is a complex type.
 */
public class UpdateObjectsRequestDocumentImpl extends org.apache.xmlbeans.impl.values.XmlComplexContentImpl implements arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.UpdateObjectsRequestDocument
{
    private static final long serialVersionUID = 1L;
    
    public UpdateObjectsRequestDocumentImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName UPDATEOBJECTSREQUEST$0 = 
        new javax.xml.namespace.QName("urn:oasis:names:tc:ebxml-regrep:xsd:lcm:3.0", "UpdateObjectsRequest");
    
    
    /**
     * Gets the "UpdateObjectsRequest" element
     */
    public arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.UpdateObjectsRequestDocument.UpdateObjectsRequest getUpdateObjectsRequest()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.UpdateObjectsRequestDocument.UpdateObjectsRequest target = null;
            target = (arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.UpdateObjectsRequestDocument.UpdateObjectsRequest)get_store().find_element_user(UPDATEOBJECTSREQUEST$0, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * Sets the "UpdateObjectsRequest" element
     */
    public void setUpdateObjectsRequest(arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.UpdateObjectsRequestDocument.UpdateObjectsRequest updateObjectsRequest)
    {
        generatedSetterHelperImpl(updateObjectsRequest, UPDATEOBJECTSREQUEST$0, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
    }
    
    /**
     * Appends and returns a new empty "UpdateObjectsRequest" element
     */
    public arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.UpdateObjectsRequestDocument.UpdateObjectsRequest addNewUpdateObjectsRequest()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.UpdateObjectsRequestDocument.UpdateObjectsRequest target = null;
            target = (arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.UpdateObjectsRequestDocument.UpdateObjectsRequest)get_store().add_element_user(UPDATEOBJECTSREQUEST$0);
            return target;
        }
    }
    /**
     * An XML UpdateObjectsRequest(@urn:oasis:names:tc:ebxml-regrep:xsd:lcm:3.0).
     *
     * This is a complex type.
     */
    public static class UpdateObjectsRequestImpl extends arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.impl.RegistryRequestTypeImpl implements arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.UpdateObjectsRequestDocument.UpdateObjectsRequest
    {
        private static final long serialVersionUID = 1L;
        
        public UpdateObjectsRequestImpl(org.apache.xmlbeans.SchemaType sType)
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

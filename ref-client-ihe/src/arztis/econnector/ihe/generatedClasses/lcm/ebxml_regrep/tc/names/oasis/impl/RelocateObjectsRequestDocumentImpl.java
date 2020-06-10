/*
 * An XML document type.
 * Localname: RelocateObjectsRequest
 * Namespace: urn:oasis:names:tc:ebxml-regrep:xsd:lcm:3.0
 * Java type: arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.RelocateObjectsRequestDocument
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.impl;
/**
 * A document containing one RelocateObjectsRequest(@urn:oasis:names:tc:ebxml-regrep:xsd:lcm:3.0) element.
 *
 * This is a complex type.
 */
public class RelocateObjectsRequestDocumentImpl extends org.apache.xmlbeans.impl.values.XmlComplexContentImpl implements arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.RelocateObjectsRequestDocument
{
    private static final long serialVersionUID = 1L;
    
    public RelocateObjectsRequestDocumentImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName RELOCATEOBJECTSREQUEST$0 = 
        new javax.xml.namespace.QName("urn:oasis:names:tc:ebxml-regrep:xsd:lcm:3.0", "RelocateObjectsRequest");
    
    
    /**
     * Gets the "RelocateObjectsRequest" element
     */
    public arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.RelocateObjectsRequestDocument.RelocateObjectsRequest getRelocateObjectsRequest()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.RelocateObjectsRequestDocument.RelocateObjectsRequest target = null;
            target = (arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.RelocateObjectsRequestDocument.RelocateObjectsRequest)get_store().find_element_user(RELOCATEOBJECTSREQUEST$0, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * Sets the "RelocateObjectsRequest" element
     */
    public void setRelocateObjectsRequest(arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.RelocateObjectsRequestDocument.RelocateObjectsRequest relocateObjectsRequest)
    {
        generatedSetterHelperImpl(relocateObjectsRequest, RELOCATEOBJECTSREQUEST$0, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
    }
    
    /**
     * Appends and returns a new empty "RelocateObjectsRequest" element
     */
    public arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.RelocateObjectsRequestDocument.RelocateObjectsRequest addNewRelocateObjectsRequest()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.RelocateObjectsRequestDocument.RelocateObjectsRequest target = null;
            target = (arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.RelocateObjectsRequestDocument.RelocateObjectsRequest)get_store().add_element_user(RELOCATEOBJECTSREQUEST$0);
            return target;
        }
    }
    /**
     * An XML RelocateObjectsRequest(@urn:oasis:names:tc:ebxml-regrep:xsd:lcm:3.0).
     *
     * This is a complex type.
     */
    public static class RelocateObjectsRequestImpl extends arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.impl.RegistryRequestTypeImpl implements arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.RelocateObjectsRequestDocument.RelocateObjectsRequest
    {
        private static final long serialVersionUID = 1L;
        
        public RelocateObjectsRequestImpl(org.apache.xmlbeans.SchemaType sType)
        {
            super(sType);
        }
        
        private static final javax.xml.namespace.QName ADHOCQUERY$0 = 
            new javax.xml.namespace.QName("urn:oasis:names:tc:ebxml-regrep:xsd:rim:3.0", "AdhocQuery");
        private static final javax.xml.namespace.QName SOURCEREGISTRY$2 = 
            new javax.xml.namespace.QName("urn:oasis:names:tc:ebxml-regrep:xsd:lcm:3.0", "SourceRegistry");
        private static final javax.xml.namespace.QName DESTINATIONREGISTRY$4 = 
            new javax.xml.namespace.QName("urn:oasis:names:tc:ebxml-regrep:xsd:lcm:3.0", "DestinationRegistry");
        private static final javax.xml.namespace.QName OWNERATSOURCE$6 = 
            new javax.xml.namespace.QName("urn:oasis:names:tc:ebxml-regrep:xsd:lcm:3.0", "OwnerAtSource");
        private static final javax.xml.namespace.QName OWNERATDESTINATION$8 = 
            new javax.xml.namespace.QName("urn:oasis:names:tc:ebxml-regrep:xsd:lcm:3.0", "OwnerAtDestination");
        
        
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
         * Gets the "SourceRegistry" element
         */
        public arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ObjectRefType getSourceRegistry()
        {
            synchronized (monitor())
            {
                check_orphaned();
                arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ObjectRefType target = null;
                target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ObjectRefType)get_store().find_element_user(SOURCEREGISTRY$2, 0);
                if (target == null)
                {
                    return null;
                }
                return target;
            }
        }
        
        /**
         * Sets the "SourceRegistry" element
         */
        public void setSourceRegistry(arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ObjectRefType sourceRegistry)
        {
            generatedSetterHelperImpl(sourceRegistry, SOURCEREGISTRY$2, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
        }
        
        /**
         * Appends and returns a new empty "SourceRegistry" element
         */
        public arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ObjectRefType addNewSourceRegistry()
        {
            synchronized (monitor())
            {
                check_orphaned();
                arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ObjectRefType target = null;
                target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ObjectRefType)get_store().add_element_user(SOURCEREGISTRY$2);
                return target;
            }
        }
        
        /**
         * Gets the "DestinationRegistry" element
         */
        public arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ObjectRefType getDestinationRegistry()
        {
            synchronized (monitor())
            {
                check_orphaned();
                arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ObjectRefType target = null;
                target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ObjectRefType)get_store().find_element_user(DESTINATIONREGISTRY$4, 0);
                if (target == null)
                {
                    return null;
                }
                return target;
            }
        }
        
        /**
         * Sets the "DestinationRegistry" element
         */
        public void setDestinationRegistry(arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ObjectRefType destinationRegistry)
        {
            generatedSetterHelperImpl(destinationRegistry, DESTINATIONREGISTRY$4, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
        }
        
        /**
         * Appends and returns a new empty "DestinationRegistry" element
         */
        public arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ObjectRefType addNewDestinationRegistry()
        {
            synchronized (monitor())
            {
                check_orphaned();
                arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ObjectRefType target = null;
                target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ObjectRefType)get_store().add_element_user(DESTINATIONREGISTRY$4);
                return target;
            }
        }
        
        /**
         * Gets the "OwnerAtSource" element
         */
        public arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ObjectRefType getOwnerAtSource()
        {
            synchronized (monitor())
            {
                check_orphaned();
                arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ObjectRefType target = null;
                target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ObjectRefType)get_store().find_element_user(OWNERATSOURCE$6, 0);
                if (target == null)
                {
                    return null;
                }
                return target;
            }
        }
        
        /**
         * Sets the "OwnerAtSource" element
         */
        public void setOwnerAtSource(arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ObjectRefType ownerAtSource)
        {
            generatedSetterHelperImpl(ownerAtSource, OWNERATSOURCE$6, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
        }
        
        /**
         * Appends and returns a new empty "OwnerAtSource" element
         */
        public arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ObjectRefType addNewOwnerAtSource()
        {
            synchronized (monitor())
            {
                check_orphaned();
                arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ObjectRefType target = null;
                target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ObjectRefType)get_store().add_element_user(OWNERATSOURCE$6);
                return target;
            }
        }
        
        /**
         * Gets the "OwnerAtDestination" element
         */
        public arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ObjectRefType getOwnerAtDestination()
        {
            synchronized (monitor())
            {
                check_orphaned();
                arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ObjectRefType target = null;
                target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ObjectRefType)get_store().find_element_user(OWNERATDESTINATION$8, 0);
                if (target == null)
                {
                    return null;
                }
                return target;
            }
        }
        
        /**
         * Sets the "OwnerAtDestination" element
         */
        public void setOwnerAtDestination(arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ObjectRefType ownerAtDestination)
        {
            generatedSetterHelperImpl(ownerAtDestination, OWNERATDESTINATION$8, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
        }
        
        /**
         * Appends and returns a new empty "OwnerAtDestination" element
         */
        public arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ObjectRefType addNewOwnerAtDestination()
        {
            synchronized (monitor())
            {
                check_orphaned();
                arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ObjectRefType target = null;
                target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ObjectRefType)get_store().add_element_user(OWNERATDESTINATION$8);
                return target;
            }
        }
    }
}

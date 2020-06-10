/*
 * An XML document type.
 * Localname: AcceptObjectsRequest
 * Namespace: urn:oasis:names:tc:ebxml-regrep:xsd:lcm:3.0
 * Java type: arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.AcceptObjectsRequestDocument
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.impl;
/**
 * A document containing one AcceptObjectsRequest(@urn:oasis:names:tc:ebxml-regrep:xsd:lcm:3.0) element.
 *
 * This is a complex type.
 */
public class AcceptObjectsRequestDocumentImpl extends org.apache.xmlbeans.impl.values.XmlComplexContentImpl implements arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.AcceptObjectsRequestDocument
{
    private static final long serialVersionUID = 1L;
    
    public AcceptObjectsRequestDocumentImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName ACCEPTOBJECTSREQUEST$0 = 
        new javax.xml.namespace.QName("urn:oasis:names:tc:ebxml-regrep:xsd:lcm:3.0", "AcceptObjectsRequest");
    
    
    /**
     * Gets the "AcceptObjectsRequest" element
     */
    public arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.AcceptObjectsRequestDocument.AcceptObjectsRequest getAcceptObjectsRequest()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.AcceptObjectsRequestDocument.AcceptObjectsRequest target = null;
            target = (arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.AcceptObjectsRequestDocument.AcceptObjectsRequest)get_store().find_element_user(ACCEPTOBJECTSREQUEST$0, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * Sets the "AcceptObjectsRequest" element
     */
    public void setAcceptObjectsRequest(arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.AcceptObjectsRequestDocument.AcceptObjectsRequest acceptObjectsRequest)
    {
        generatedSetterHelperImpl(acceptObjectsRequest, ACCEPTOBJECTSREQUEST$0, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
    }
    
    /**
     * Appends and returns a new empty "AcceptObjectsRequest" element
     */
    public arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.AcceptObjectsRequestDocument.AcceptObjectsRequest addNewAcceptObjectsRequest()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.AcceptObjectsRequestDocument.AcceptObjectsRequest target = null;
            target = (arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.AcceptObjectsRequestDocument.AcceptObjectsRequest)get_store().add_element_user(ACCEPTOBJECTSREQUEST$0);
            return target;
        }
    }
    /**
     * An XML AcceptObjectsRequest(@urn:oasis:names:tc:ebxml-regrep:xsd:lcm:3.0).
     *
     * This is a complex type.
     */
    public static class AcceptObjectsRequestImpl extends arztis.econnector.ihe.generatedClasses.rs.ebxml_regrep.tc.names.oasis.impl.RegistryRequestTypeImpl implements arztis.econnector.ihe.generatedClasses.lcm.ebxml_regrep.tc.names.oasis.AcceptObjectsRequestDocument.AcceptObjectsRequest
    {
        private static final long serialVersionUID = 1L;
        
        public AcceptObjectsRequestImpl(org.apache.xmlbeans.SchemaType sType)
        {
            super(sType);
        }
        
        private static final javax.xml.namespace.QName CORRELATIONID$0 = 
            new javax.xml.namespace.QName("", "correlationId");
        
        
        /**
         * Gets the "correlationId" attribute
         */
        public java.lang.String getCorrelationId()
        {
            synchronized (monitor())
            {
                check_orphaned();
                org.apache.xmlbeans.SimpleValue target = null;
                target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(CORRELATIONID$0);
                if (target == null)
                {
                    return null;
                }
                return target.getStringValue();
            }
        }
        
        /**
         * Gets (as xml) the "correlationId" attribute
         */
        public org.apache.xmlbeans.XmlAnyURI xgetCorrelationId()
        {
            synchronized (monitor())
            {
                check_orphaned();
                org.apache.xmlbeans.XmlAnyURI target = null;
                target = (org.apache.xmlbeans.XmlAnyURI)get_store().find_attribute_user(CORRELATIONID$0);
                return target;
            }
        }
        
        /**
         * Sets the "correlationId" attribute
         */
        public void setCorrelationId(java.lang.String correlationId)
        {
            synchronized (monitor())
            {
                check_orphaned();
                org.apache.xmlbeans.SimpleValue target = null;
                target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(CORRELATIONID$0);
                if (target == null)
                {
                    target = (org.apache.xmlbeans.SimpleValue)get_store().add_attribute_user(CORRELATIONID$0);
                }
                target.setStringValue(correlationId);
            }
        }
        
        /**
         * Sets (as xml) the "correlationId" attribute
         */
        public void xsetCorrelationId(org.apache.xmlbeans.XmlAnyURI correlationId)
        {
            synchronized (monitor())
            {
                check_orphaned();
                org.apache.xmlbeans.XmlAnyURI target = null;
                target = (org.apache.xmlbeans.XmlAnyURI)get_store().find_attribute_user(CORRELATIONID$0);
                if (target == null)
                {
                    target = (org.apache.xmlbeans.XmlAnyURI)get_store().add_attribute_user(CORRELATIONID$0);
                }
                target.set(correlationId);
            }
        }
    }
}

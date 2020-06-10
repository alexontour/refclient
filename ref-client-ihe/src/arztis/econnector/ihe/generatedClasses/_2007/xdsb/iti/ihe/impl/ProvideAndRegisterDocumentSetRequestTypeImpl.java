/*
 * XML Type:  ProvideAndRegisterDocumentSetRequestType
 * Namespace: urn:ihe:iti:xds-b:2007
 * Java type: arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.ProvideAndRegisterDocumentSetRequestType
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.impl;
/**
 * An XML ProvideAndRegisterDocumentSetRequestType(@urn:ihe:iti:xds-b:2007).
 *
 * This is a complex type.
 */
public class ProvideAndRegisterDocumentSetRequestTypeImpl extends org.apache.xmlbeans.impl.values.XmlComplexContentImpl implements arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.ProvideAndRegisterDocumentSetRequestType
{
    private static final long serialVersionUID = 1L;
    
    public ProvideAndRegisterDocumentSetRequestTypeImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName SUBMITOBJECTSREQUEST$0 = 
        new javax.xml.namespace.QName("urn:oasis:names:tc:ebxml-regrep:xsd:lcm:3.0", "SubmitObjectsRequest");
    private static final javax.xml.namespace.QName DOCUMENT$2 = 
        new javax.xml.namespace.QName("urn:ihe:iti:xds-b:2007", "Document");
    
    
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
     * Gets array of all "Document" elements
     */
    public arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.ProvideAndRegisterDocumentSetRequestType.Document[] getDocumentArray()
    {
        synchronized (monitor())
        {
            check_orphaned();
            java.util.List targetList = new java.util.ArrayList();
            get_store().find_all_element_users(DOCUMENT$2, targetList);
            arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.ProvideAndRegisterDocumentSetRequestType.Document[] result = new arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.ProvideAndRegisterDocumentSetRequestType.Document[targetList.size()];
            targetList.toArray(result);
            return result;
        }
    }
    
    /**
     * Gets ith "Document" element
     */
    public arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.ProvideAndRegisterDocumentSetRequestType.Document getDocumentArray(int i)
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.ProvideAndRegisterDocumentSetRequestType.Document target = null;
            target = (arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.ProvideAndRegisterDocumentSetRequestType.Document)get_store().find_element_user(DOCUMENT$2, i);
            if (target == null)
            {
                throw new IndexOutOfBoundsException();
            }
            return target;
        }
    }
    
    /**
     * Returns number of "Document" element
     */
    public int sizeOfDocumentArray()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().count_elements(DOCUMENT$2);
        }
    }
    
    /**
     * Sets array of all "Document" element  WARNING: This method is not atomicaly synchronized.
     */
    public void setDocumentArray(arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.ProvideAndRegisterDocumentSetRequestType.Document[] documentArray)
    {
        check_orphaned();
        arraySetterHelper(documentArray, DOCUMENT$2);
    }
    
    /**
     * Sets ith "Document" element
     */
    public void setDocumentArray(int i, arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.ProvideAndRegisterDocumentSetRequestType.Document document)
    {
        generatedSetterHelperImpl(document, DOCUMENT$2, i, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_ARRAYITEM);
    }
    
    /**
     * Inserts and returns a new empty value (as xml) as the ith "Document" element
     */
    public arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.ProvideAndRegisterDocumentSetRequestType.Document insertNewDocument(int i)
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.ProvideAndRegisterDocumentSetRequestType.Document target = null;
            target = (arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.ProvideAndRegisterDocumentSetRequestType.Document)get_store().insert_element_user(DOCUMENT$2, i);
            return target;
        }
    }
    
    /**
     * Appends and returns a new empty value (as xml) as the last "Document" element
     */
    public arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.ProvideAndRegisterDocumentSetRequestType.Document addNewDocument()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.ProvideAndRegisterDocumentSetRequestType.Document target = null;
            target = (arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.ProvideAndRegisterDocumentSetRequestType.Document)get_store().add_element_user(DOCUMENT$2);
            return target;
        }
    }
    
    /**
     * Removes the ith "Document" element
     */
    public void removeDocument(int i)
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_element(DOCUMENT$2, i);
        }
    }
    /**
     * An XML Document(@urn:ihe:iti:xds-b:2007).
     *
     * This is an atomic type that is a restriction of arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.ProvideAndRegisterDocumentSetRequestType$Document.
     */
    public static class DocumentImpl extends org.apache.xmlbeans.impl.values.JavaBase64HolderEx implements arztis.econnector.ihe.generatedClasses._2007.xdsb.iti.ihe.ProvideAndRegisterDocumentSetRequestType.Document
    {
        private static final long serialVersionUID = 1L;
        
        public DocumentImpl(org.apache.xmlbeans.SchemaType sType)
        {
            super(sType, true);
        }
        
        protected DocumentImpl(org.apache.xmlbeans.SchemaType sType, boolean b)
        {
            super(sType, b);
        }
        
        private static final javax.xml.namespace.QName ID$0 = 
            new javax.xml.namespace.QName("", "id");
        
        
        /**
         * Gets the "id" attribute
         */
        public java.lang.String getId()
        {
            synchronized (monitor())
            {
                check_orphaned();
                org.apache.xmlbeans.SimpleValue target = null;
                target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(ID$0);
                if (target == null)
                {
                    return null;
                }
                return target.getStringValue();
            }
        }
        
        /**
         * Gets (as xml) the "id" attribute
         */
        public org.apache.xmlbeans.XmlAnyURI xgetId()
        {
            synchronized (monitor())
            {
                check_orphaned();
                org.apache.xmlbeans.XmlAnyURI target = null;
                target = (org.apache.xmlbeans.XmlAnyURI)get_store().find_attribute_user(ID$0);
                return target;
            }
        }
        
        /**
         * Sets the "id" attribute
         */
        public void setId(java.lang.String id)
        {
            synchronized (monitor())
            {
                check_orphaned();
                org.apache.xmlbeans.SimpleValue target = null;
                target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(ID$0);
                if (target == null)
                {
                    target = (org.apache.xmlbeans.SimpleValue)get_store().add_attribute_user(ID$0);
                }
                target.setStringValue(id);
            }
        }
        
        /**
         * Sets (as xml) the "id" attribute
         */
        public void xsetId(org.apache.xmlbeans.XmlAnyURI id)
        {
            synchronized (monitor())
            {
                check_orphaned();
                org.apache.xmlbeans.XmlAnyURI target = null;
                target = (org.apache.xmlbeans.XmlAnyURI)get_store().find_attribute_user(ID$0);
                if (target == null)
                {
                    target = (org.apache.xmlbeans.XmlAnyURI)get_store().add_attribute_user(ID$0);
                }
                target.set(id);
            }
        }
    }
}

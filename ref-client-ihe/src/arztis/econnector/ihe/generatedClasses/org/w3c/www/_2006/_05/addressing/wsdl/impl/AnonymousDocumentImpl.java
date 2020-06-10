/*
 * An XML document type.
 * Localname: Anonymous
 * Namespace: http://www.w3.org/2006/05/addressing/wsdl
 * Java type: arztis.econnector.ihe.generatedClasses.org.w3c.www._2006._05.addressing.wsdl.AnonymousDocument
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.org.w3c.www._2006._05.addressing.wsdl.impl;
/**
 * A document containing one Anonymous(@http://www.w3.org/2006/05/addressing/wsdl) element.
 *
 * This is a complex type.
 */
public class AnonymousDocumentImpl extends org.apache.xmlbeans.impl.values.XmlComplexContentImpl implements arztis.econnector.ihe.generatedClasses.org.w3c.www._2006._05.addressing.wsdl.AnonymousDocument
{
    private static final long serialVersionUID = 1L;
    
    public AnonymousDocumentImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName ANONYMOUS$0 = 
        new javax.xml.namespace.QName("http://www.w3.org/2006/05/addressing/wsdl", "Anonymous");
    
    
    /**
     * Gets the "Anonymous" element
     */
    public arztis.econnector.ihe.generatedClasses.org.w3c.www._2006._05.addressing.wsdl.AnonymousDocument.Anonymous getAnonymous()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.org.w3c.www._2006._05.addressing.wsdl.AnonymousDocument.Anonymous target = null;
            target = (arztis.econnector.ihe.generatedClasses.org.w3c.www._2006._05.addressing.wsdl.AnonymousDocument.Anonymous)get_store().find_element_user(ANONYMOUS$0, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * Sets the "Anonymous" element
     */
    public void setAnonymous(arztis.econnector.ihe.generatedClasses.org.w3c.www._2006._05.addressing.wsdl.AnonymousDocument.Anonymous anonymous)
    {
        generatedSetterHelperImpl(anonymous, ANONYMOUS$0, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
    }
    
    /**
     * Appends and returns a new empty "Anonymous" element
     */
    public arztis.econnector.ihe.generatedClasses.org.w3c.www._2006._05.addressing.wsdl.AnonymousDocument.Anonymous addNewAnonymous()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.org.w3c.www._2006._05.addressing.wsdl.AnonymousDocument.Anonymous target = null;
            target = (arztis.econnector.ihe.generatedClasses.org.w3c.www._2006._05.addressing.wsdl.AnonymousDocument.Anonymous)get_store().add_element_user(ANONYMOUS$0);
            return target;
        }
    }
    /**
     * An XML Anonymous(@http://www.w3.org/2006/05/addressing/wsdl).
     *
     * This is an atomic type that is a restriction of arztis.econnector.ihe.generatedClasses.org.w3c.www._2006._05.addressing.wsdl.AnonymousDocument$Anonymous.
     */
    public static class AnonymousImpl extends org.apache.xmlbeans.impl.values.JavaStringEnumerationHolderEx implements arztis.econnector.ihe.generatedClasses.org.w3c.www._2006._05.addressing.wsdl.AnonymousDocument.Anonymous
    {
        private static final long serialVersionUID = 1L;
        
        public AnonymousImpl(org.apache.xmlbeans.SchemaType sType)
        {
            super(sType, true);
        }
        
        protected AnonymousImpl(org.apache.xmlbeans.SchemaType sType, boolean b)
        {
            super(sType, b);
        }
        
        
    }
}

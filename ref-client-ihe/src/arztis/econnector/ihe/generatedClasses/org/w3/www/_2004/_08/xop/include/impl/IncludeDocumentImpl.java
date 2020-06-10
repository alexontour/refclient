/*
 * An XML document type.
 * Localname: Include
 * Namespace: http://www.w3.org/2004/08/xop/include
 * Java type: arztis.econnector.ihe.generatedClasses.org.w3.www._2004._08.xop.include.IncludeDocument
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.org.w3.www._2004._08.xop.include.impl;
/**
 * A document containing one Include(@http://www.w3.org/2004/08/xop/include) element.
 *
 * This is a complex type.
 */
public class IncludeDocumentImpl extends org.apache.xmlbeans.impl.values.XmlComplexContentImpl implements arztis.econnector.ihe.generatedClasses.org.w3.www._2004._08.xop.include.IncludeDocument
{
    private static final long serialVersionUID = 1L;
    
    public IncludeDocumentImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName INCLUDE$0 = 
        new javax.xml.namespace.QName("http://www.w3.org/2004/08/xop/include", "Include");
    
    
    /**
     * Gets the "Include" element
     */
    public arztis.econnector.ihe.generatedClasses.org.w3.www._2004._08.xop.include.Include getInclude()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.org.w3.www._2004._08.xop.include.Include target = null;
            target = (arztis.econnector.ihe.generatedClasses.org.w3.www._2004._08.xop.include.Include)get_store().find_element_user(INCLUDE$0, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * Sets the "Include" element
     */
    public void setInclude(arztis.econnector.ihe.generatedClasses.org.w3.www._2004._08.xop.include.Include include)
    {
        generatedSetterHelperImpl(include, INCLUDE$0, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
    }
    
    /**
     * Appends and returns a new empty "Include" element
     */
    public arztis.econnector.ihe.generatedClasses.org.w3.www._2004._08.xop.include.Include addNewInclude()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.org.w3.www._2004._08.xop.include.Include target = null;
            target = (arztis.econnector.ihe.generatedClasses.org.w3.www._2004._08.xop.include.Include)get_store().add_element_user(INCLUDE$0);
            return target;
        }
    }
}

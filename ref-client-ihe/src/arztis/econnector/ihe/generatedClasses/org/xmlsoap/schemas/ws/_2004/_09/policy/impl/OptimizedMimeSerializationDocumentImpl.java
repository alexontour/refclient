/*
 * An XML document type.
 * Localname: OptimizedMimeSerialization
 * Namespace: http://schemas.xmlsoap.org/ws/2004/09/policy/optimizedmimeserialization
 * Java type: arztis.econnector.ihe.generatedClasses.org.xmlsoap.schemas.ws._2004._09.policy.OptimizedMimeSerializationDocument
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.org.xmlsoap.schemas.ws._2004._09.policy.impl;
/**
 * A document containing one OptimizedMimeSerialization(@http://schemas.xmlsoap.org/ws/2004/09/policy/optimizedmimeserialization) element.
 *
 * This is a complex type.
 */
public class OptimizedMimeSerializationDocumentImpl extends org.apache.xmlbeans.impl.values.XmlComplexContentImpl implements arztis.econnector.ihe.generatedClasses.org.xmlsoap.schemas.ws._2004._09.policy.OptimizedMimeSerializationDocument
{
    private static final long serialVersionUID = 1L;
    
    public OptimizedMimeSerializationDocumentImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName OPTIMIZEDMIMESERIALIZATION$0 = 
        new javax.xml.namespace.QName("http://schemas.xmlsoap.org/ws/2004/09/policy/optimizedmimeserialization", "OptimizedMimeSerialization");
    
    
    /**
     * Gets the "OptimizedMimeSerialization" element
     */
    public arztis.econnector.ihe.generatedClasses.org.xmlsoap.schemas.ws._2004._09.policy.OptimizedMimeSerializationType getOptimizedMimeSerialization()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.org.xmlsoap.schemas.ws._2004._09.policy.OptimizedMimeSerializationType target = null;
            target = (arztis.econnector.ihe.generatedClasses.org.xmlsoap.schemas.ws._2004._09.policy.OptimizedMimeSerializationType)get_store().find_element_user(OPTIMIZEDMIMESERIALIZATION$0, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * Sets the "OptimizedMimeSerialization" element
     */
    public void setOptimizedMimeSerialization(arztis.econnector.ihe.generatedClasses.org.xmlsoap.schemas.ws._2004._09.policy.OptimizedMimeSerializationType optimizedMimeSerialization)
    {
        generatedSetterHelperImpl(optimizedMimeSerialization, OPTIMIZEDMIMESERIALIZATION$0, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
    }
    
    /**
     * Appends and returns a new empty "OptimizedMimeSerialization" element
     */
    public arztis.econnector.ihe.generatedClasses.org.xmlsoap.schemas.ws._2004._09.policy.OptimizedMimeSerializationType addNewOptimizedMimeSerialization()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.org.xmlsoap.schemas.ws._2004._09.policy.OptimizedMimeSerializationType target = null;
            target = (arztis.econnector.ihe.generatedClasses.org.xmlsoap.schemas.ws._2004._09.policy.OptimizedMimeSerializationType)get_store().add_element_user(OPTIMIZEDMIMESERIALIZATION$0);
            return target;
        }
    }
}

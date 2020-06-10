/*
 * An XML document type.
 * Localname: ObjectRefList
 * Namespace: urn:oasis:names:tc:ebxml-regrep:xsd:rim:3.0
 * Java type: arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ObjectRefListDocument
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.impl;
/**
 * A document containing one ObjectRefList(@urn:oasis:names:tc:ebxml-regrep:xsd:rim:3.0) element.
 *
 * This is a complex type.
 */
public class ObjectRefListDocumentImpl extends org.apache.xmlbeans.impl.values.XmlComplexContentImpl implements arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ObjectRefListDocument
{
    private static final long serialVersionUID = 1L;
    
    public ObjectRefListDocumentImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName OBJECTREFLIST$0 = 
        new javax.xml.namespace.QName("urn:oasis:names:tc:ebxml-regrep:xsd:rim:3.0", "ObjectRefList");
    
    
    /**
     * Gets the "ObjectRefList" element
     */
    public arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ObjectRefListType getObjectRefList()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ObjectRefListType target = null;
            target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ObjectRefListType)get_store().find_element_user(OBJECTREFLIST$0, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * Sets the "ObjectRefList" element
     */
    public void setObjectRefList(arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ObjectRefListType objectRefList)
    {
        generatedSetterHelperImpl(objectRefList, OBJECTREFLIST$0, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
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
            target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ObjectRefListType)get_store().add_element_user(OBJECTREFLIST$0);
            return target;
        }
    }
}

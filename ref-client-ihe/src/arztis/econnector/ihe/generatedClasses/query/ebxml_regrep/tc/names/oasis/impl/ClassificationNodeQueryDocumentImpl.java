/*
 * An XML document type.
 * Localname: ClassificationNodeQuery
 * Namespace: urn:oasis:names:tc:ebxml-regrep:xsd:query:3.0
 * Java type: arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ClassificationNodeQueryDocument
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.impl;
/**
 * A document containing one ClassificationNodeQuery(@urn:oasis:names:tc:ebxml-regrep:xsd:query:3.0) element.
 *
 * This is a complex type.
 */
public class ClassificationNodeQueryDocumentImpl extends org.apache.xmlbeans.impl.values.XmlComplexContentImpl implements arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ClassificationNodeQueryDocument
{
    private static final long serialVersionUID = 1L;
    
    public ClassificationNodeQueryDocumentImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName CLASSIFICATIONNODEQUERY$0 = 
        new javax.xml.namespace.QName("urn:oasis:names:tc:ebxml-regrep:xsd:query:3.0", "ClassificationNodeQuery");
    
    
    /**
     * Gets the "ClassificationNodeQuery" element
     */
    public arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ClassificationNodeQueryType getClassificationNodeQuery()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ClassificationNodeQueryType target = null;
            target = (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ClassificationNodeQueryType)get_store().find_element_user(CLASSIFICATIONNODEQUERY$0, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * Sets the "ClassificationNodeQuery" element
     */
    public void setClassificationNodeQuery(arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ClassificationNodeQueryType classificationNodeQuery)
    {
        generatedSetterHelperImpl(classificationNodeQuery, CLASSIFICATIONNODEQUERY$0, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
    }
    
    /**
     * Appends and returns a new empty "ClassificationNodeQuery" element
     */
    public arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ClassificationNodeQueryType addNewClassificationNodeQuery()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ClassificationNodeQueryType target = null;
            target = (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ClassificationNodeQueryType)get_store().add_element_user(CLASSIFICATIONNODEQUERY$0);
            return target;
        }
    }
}

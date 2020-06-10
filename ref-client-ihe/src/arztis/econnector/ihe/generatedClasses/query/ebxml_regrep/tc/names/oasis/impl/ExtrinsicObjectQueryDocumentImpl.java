/*
 * An XML document type.
 * Localname: ExtrinsicObjectQuery
 * Namespace: urn:oasis:names:tc:ebxml-regrep:xsd:query:3.0
 * Java type: arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ExtrinsicObjectQueryDocument
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.impl;
/**
 * A document containing one ExtrinsicObjectQuery(@urn:oasis:names:tc:ebxml-regrep:xsd:query:3.0) element.
 *
 * This is a complex type.
 */
public class ExtrinsicObjectQueryDocumentImpl extends org.apache.xmlbeans.impl.values.XmlComplexContentImpl implements arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ExtrinsicObjectQueryDocument
{
    private static final long serialVersionUID = 1L;
    
    public ExtrinsicObjectQueryDocumentImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName EXTRINSICOBJECTQUERY$0 = 
        new javax.xml.namespace.QName("urn:oasis:names:tc:ebxml-regrep:xsd:query:3.0", "ExtrinsicObjectQuery");
    
    
    /**
     * Gets the "ExtrinsicObjectQuery" element
     */
    public arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ExtrinsicObjectQueryType getExtrinsicObjectQuery()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ExtrinsicObjectQueryType target = null;
            target = (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ExtrinsicObjectQueryType)get_store().find_element_user(EXTRINSICOBJECTQUERY$0, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * Sets the "ExtrinsicObjectQuery" element
     */
    public void setExtrinsicObjectQuery(arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ExtrinsicObjectQueryType extrinsicObjectQuery)
    {
        generatedSetterHelperImpl(extrinsicObjectQuery, EXTRINSICOBJECTQUERY$0, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
    }
    
    /**
     * Appends and returns a new empty "ExtrinsicObjectQuery" element
     */
    public arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ExtrinsicObjectQueryType addNewExtrinsicObjectQuery()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ExtrinsicObjectQueryType target = null;
            target = (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ExtrinsicObjectQueryType)get_store().add_element_user(EXTRINSICOBJECTQUERY$0);
            return target;
        }
    }
}

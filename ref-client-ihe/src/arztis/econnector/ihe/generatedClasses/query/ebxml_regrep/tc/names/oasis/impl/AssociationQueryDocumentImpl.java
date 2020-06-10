/*
 * An XML document type.
 * Localname: AssociationQuery
 * Namespace: urn:oasis:names:tc:ebxml-regrep:xsd:query:3.0
 * Java type: arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AssociationQueryDocument
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.impl;
/**
 * A document containing one AssociationQuery(@urn:oasis:names:tc:ebxml-regrep:xsd:query:3.0) element.
 *
 * This is a complex type.
 */
public class AssociationQueryDocumentImpl extends org.apache.xmlbeans.impl.values.XmlComplexContentImpl implements arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AssociationQueryDocument
{
    private static final long serialVersionUID = 1L;
    
    public AssociationQueryDocumentImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName ASSOCIATIONQUERY$0 = 
        new javax.xml.namespace.QName("urn:oasis:names:tc:ebxml-regrep:xsd:query:3.0", "AssociationQuery");
    
    
    /**
     * Gets the "AssociationQuery" element
     */
    public arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AssociationQueryType getAssociationQuery()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AssociationQueryType target = null;
            target = (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AssociationQueryType)get_store().find_element_user(ASSOCIATIONQUERY$0, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * Sets the "AssociationQuery" element
     */
    public void setAssociationQuery(arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AssociationQueryType associationQuery)
    {
        generatedSetterHelperImpl(associationQuery, ASSOCIATIONQUERY$0, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
    }
    
    /**
     * Appends and returns a new empty "AssociationQuery" element
     */
    public arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AssociationQueryType addNewAssociationQuery()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AssociationQueryType target = null;
            target = (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AssociationQueryType)get_store().add_element_user(ASSOCIATIONQUERY$0);
            return target;
        }
    }
}

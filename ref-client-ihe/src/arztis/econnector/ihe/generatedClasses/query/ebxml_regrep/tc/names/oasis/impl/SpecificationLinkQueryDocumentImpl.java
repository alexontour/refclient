/*
 * An XML document type.
 * Localname: SpecificationLinkQuery
 * Namespace: urn:oasis:names:tc:ebxml-regrep:xsd:query:3.0
 * Java type: arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.SpecificationLinkQueryDocument
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.impl;
/**
 * A document containing one SpecificationLinkQuery(@urn:oasis:names:tc:ebxml-regrep:xsd:query:3.0) element.
 *
 * This is a complex type.
 */
public class SpecificationLinkQueryDocumentImpl extends org.apache.xmlbeans.impl.values.XmlComplexContentImpl implements arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.SpecificationLinkQueryDocument
{
    private static final long serialVersionUID = 1L;
    
    public SpecificationLinkQueryDocumentImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName SPECIFICATIONLINKQUERY$0 = 
        new javax.xml.namespace.QName("urn:oasis:names:tc:ebxml-regrep:xsd:query:3.0", "SpecificationLinkQuery");
    
    
    /**
     * Gets the "SpecificationLinkQuery" element
     */
    public arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.SpecificationLinkQueryType getSpecificationLinkQuery()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.SpecificationLinkQueryType target = null;
            target = (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.SpecificationLinkQueryType)get_store().find_element_user(SPECIFICATIONLINKQUERY$0, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * Sets the "SpecificationLinkQuery" element
     */
    public void setSpecificationLinkQuery(arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.SpecificationLinkQueryType specificationLinkQuery)
    {
        generatedSetterHelperImpl(specificationLinkQuery, SPECIFICATIONLINKQUERY$0, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
    }
    
    /**
     * Appends and returns a new empty "SpecificationLinkQuery" element
     */
    public arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.SpecificationLinkQueryType addNewSpecificationLinkQuery()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.SpecificationLinkQueryType target = null;
            target = (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.SpecificationLinkQueryType)get_store().add_element_user(SPECIFICATIONLINKQUERY$0);
            return target;
        }
    }
}

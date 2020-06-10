/*
 * An XML document type.
 * Localname: RegistryPackageQuery
 * Namespace: urn:oasis:names:tc:ebxml-regrep:xsd:query:3.0
 * Java type: arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.RegistryPackageQueryDocument
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.impl;
/**
 * A document containing one RegistryPackageQuery(@urn:oasis:names:tc:ebxml-regrep:xsd:query:3.0) element.
 *
 * This is a complex type.
 */
public class RegistryPackageQueryDocumentImpl extends org.apache.xmlbeans.impl.values.XmlComplexContentImpl implements arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.RegistryPackageQueryDocument
{
    private static final long serialVersionUID = 1L;
    
    public RegistryPackageQueryDocumentImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName REGISTRYPACKAGEQUERY$0 = 
        new javax.xml.namespace.QName("urn:oasis:names:tc:ebxml-regrep:xsd:query:3.0", "RegistryPackageQuery");
    
    
    /**
     * Gets the "RegistryPackageQuery" element
     */
    public arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.RegistryPackageQueryType getRegistryPackageQuery()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.RegistryPackageQueryType target = null;
            target = (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.RegistryPackageQueryType)get_store().find_element_user(REGISTRYPACKAGEQUERY$0, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * Sets the "RegistryPackageQuery" element
     */
    public void setRegistryPackageQuery(arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.RegistryPackageQueryType registryPackageQuery)
    {
        generatedSetterHelperImpl(registryPackageQuery, REGISTRYPACKAGEQUERY$0, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
    }
    
    /**
     * Appends and returns a new empty "RegistryPackageQuery" element
     */
    public arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.RegistryPackageQueryType addNewRegistryPackageQuery()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.RegistryPackageQueryType target = null;
            target = (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.RegistryPackageQueryType)get_store().add_element_user(REGISTRYPACKAGEQUERY$0);
            return target;
        }
    }
}

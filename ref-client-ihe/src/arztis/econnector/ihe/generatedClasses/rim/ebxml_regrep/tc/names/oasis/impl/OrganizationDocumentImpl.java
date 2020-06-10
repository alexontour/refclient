/*
 * An XML document type.
 * Localname: Organization
 * Namespace: urn:oasis:names:tc:ebxml-regrep:xsd:rim:3.0
 * Java type: arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.OrganizationDocument
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.impl;
/**
 * A document containing one Organization(@urn:oasis:names:tc:ebxml-regrep:xsd:rim:3.0) element.
 *
 * This is a complex type.
 */
public class OrganizationDocumentImpl extends arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.impl.IdentifiableDocumentImpl implements arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.OrganizationDocument
{
    private static final long serialVersionUID = 1L;
    
    public OrganizationDocumentImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName ORGANIZATION$0 = 
        new javax.xml.namespace.QName("urn:oasis:names:tc:ebxml-regrep:xsd:rim:3.0", "Organization");
    
    
    /**
     * Gets the "Organization" element
     */
    public arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.OrganizationType getOrganization()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.OrganizationType target = null;
            target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.OrganizationType)get_store().find_element_user(ORGANIZATION$0, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * Sets the "Organization" element
     */
    public void setOrganization(arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.OrganizationType organization)
    {
        generatedSetterHelperImpl(organization, ORGANIZATION$0, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
    }
    
    /**
     * Appends and returns a new empty "Organization" element
     */
    public arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.OrganizationType addNewOrganization()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.OrganizationType target = null;
            target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.OrganizationType)get_store().add_element_user(ORGANIZATION$0);
            return target;
        }
    }
}

/*
 * An XML document type.
 * Localname: AdhocQuery
 * Namespace: urn:oasis:names:tc:ebxml-regrep:xsd:rim:3.0
 * Java type: arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.AdhocQueryDocument
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.impl;
/**
 * A document containing one AdhocQuery(@urn:oasis:names:tc:ebxml-regrep:xsd:rim:3.0) element.
 *
 * This is a complex type.
 */
public class AdhocQueryDocumentImpl extends arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.impl.RegistryObjectDocumentImpl implements arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.AdhocQueryDocument
{
    private static final long serialVersionUID = 1L;
    
    public AdhocQueryDocumentImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName ADHOCQUERY$0 = 
        new javax.xml.namespace.QName("urn:oasis:names:tc:ebxml-regrep:xsd:rim:3.0", "AdhocQuery");
    
    
    /**
     * Gets the "AdhocQuery" element
     */
    public arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.AdhocQueryType getAdhocQuery()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.AdhocQueryType target = null;
            target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.AdhocQueryType)get_store().find_element_user(ADHOCQUERY$0, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * Sets the "AdhocQuery" element
     */
    public void setAdhocQuery(arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.AdhocQueryType adhocQuery)
    {
        generatedSetterHelperImpl(adhocQuery, ADHOCQUERY$0, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
    }
    
    /**
     * Appends and returns a new empty "AdhocQuery" element
     */
    public arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.AdhocQueryType addNewAdhocQuery()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.AdhocQueryType target = null;
            target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.AdhocQueryType)get_store().add_element_user(ADHOCQUERY$0);
            return target;
        }
    }
}

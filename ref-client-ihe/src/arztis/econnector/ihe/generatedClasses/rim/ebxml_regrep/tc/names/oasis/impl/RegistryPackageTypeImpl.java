/*
 * XML Type:  RegistryPackageType
 * Namespace: urn:oasis:names:tc:ebxml-regrep:xsd:rim:3.0
 * Java type: arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.RegistryPackageType
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.impl;
/**
 * An XML RegistryPackageType(@urn:oasis:names:tc:ebxml-regrep:xsd:rim:3.0).
 *
 * This is a complex type.
 */
public class RegistryPackageTypeImpl extends arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.impl.RegistryObjectTypeImpl implements arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.RegistryPackageType
{
    private static final long serialVersionUID = 1L;
    
    public RegistryPackageTypeImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName REGISTRYOBJECTLIST$0 = 
        new javax.xml.namespace.QName("urn:oasis:names:tc:ebxml-regrep:xsd:rim:3.0", "RegistryObjectList");
    
    
    /**
     * Gets the "RegistryObjectList" element
     */
    public arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.RegistryObjectListType getRegistryObjectList()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.RegistryObjectListType target = null;
            target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.RegistryObjectListType)get_store().find_element_user(REGISTRYOBJECTLIST$0, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * True if has "RegistryObjectList" element
     */
    public boolean isSetRegistryObjectList()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().count_elements(REGISTRYOBJECTLIST$0) != 0;
        }
    }
    
    /**
     * Sets the "RegistryObjectList" element
     */
    public void setRegistryObjectList(arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.RegistryObjectListType registryObjectList)
    {
        generatedSetterHelperImpl(registryObjectList, REGISTRYOBJECTLIST$0, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
    }
    
    /**
     * Appends and returns a new empty "RegistryObjectList" element
     */
    public arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.RegistryObjectListType addNewRegistryObjectList()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.RegistryObjectListType target = null;
            target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.RegistryObjectListType)get_store().add_element_user(REGISTRYOBJECTLIST$0);
            return target;
        }
    }
    
    /**
     * Unsets the "RegistryObjectList" element
     */
    public void unsetRegistryObjectList()
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_element(REGISTRYOBJECTLIST$0, 0);
        }
    }
}

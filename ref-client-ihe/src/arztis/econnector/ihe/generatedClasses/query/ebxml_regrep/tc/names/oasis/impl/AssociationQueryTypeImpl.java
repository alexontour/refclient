/*
 * XML Type:  AssociationQueryType
 * Namespace: urn:oasis:names:tc:ebxml-regrep:xsd:query:3.0
 * Java type: arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AssociationQueryType
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.impl;
/**
 * An XML AssociationQueryType(@urn:oasis:names:tc:ebxml-regrep:xsd:query:3.0).
 *
 * This is a complex type.
 */
public class AssociationQueryTypeImpl extends arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.impl.RegistryObjectQueryTypeImpl implements arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AssociationQueryType
{
    private static final long serialVersionUID = 1L;
    
    public AssociationQueryTypeImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName ASSOCIATIONTYPEQUERY$0 = 
        new javax.xml.namespace.QName("urn:oasis:names:tc:ebxml-regrep:xsd:query:3.0", "AssociationTypeQuery");
    private static final javax.xml.namespace.QName SOURCEOBJECTQUERY$2 = 
        new javax.xml.namespace.QName("urn:oasis:names:tc:ebxml-regrep:xsd:query:3.0", "SourceObjectQuery");
    private static final javax.xml.namespace.QName TARGETOBJECTQUERY$4 = 
        new javax.xml.namespace.QName("urn:oasis:names:tc:ebxml-regrep:xsd:query:3.0", "TargetObjectQuery");
    
    
    /**
     * Gets the "AssociationTypeQuery" element
     */
    public arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ClassificationNodeQueryType getAssociationTypeQuery()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ClassificationNodeQueryType target = null;
            target = (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ClassificationNodeQueryType)get_store().find_element_user(ASSOCIATIONTYPEQUERY$0, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * True if has "AssociationTypeQuery" element
     */
    public boolean isSetAssociationTypeQuery()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().count_elements(ASSOCIATIONTYPEQUERY$0) != 0;
        }
    }
    
    /**
     * Sets the "AssociationTypeQuery" element
     */
    public void setAssociationTypeQuery(arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ClassificationNodeQueryType associationTypeQuery)
    {
        generatedSetterHelperImpl(associationTypeQuery, ASSOCIATIONTYPEQUERY$0, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
    }
    
    /**
     * Appends and returns a new empty "AssociationTypeQuery" element
     */
    public arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ClassificationNodeQueryType addNewAssociationTypeQuery()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ClassificationNodeQueryType target = null;
            target = (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ClassificationNodeQueryType)get_store().add_element_user(ASSOCIATIONTYPEQUERY$0);
            return target;
        }
    }
    
    /**
     * Unsets the "AssociationTypeQuery" element
     */
    public void unsetAssociationTypeQuery()
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_element(ASSOCIATIONTYPEQUERY$0, 0);
        }
    }
    
    /**
     * Gets the "SourceObjectQuery" element
     */
    public arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.RegistryObjectQueryType getSourceObjectQuery()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.RegistryObjectQueryType target = null;
            target = (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.RegistryObjectQueryType)get_store().find_element_user(SOURCEOBJECTQUERY$2, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * True if has "SourceObjectQuery" element
     */
    public boolean isSetSourceObjectQuery()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().count_elements(SOURCEOBJECTQUERY$2) != 0;
        }
    }
    
    /**
     * Sets the "SourceObjectQuery" element
     */
    public void setSourceObjectQuery(arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.RegistryObjectQueryType sourceObjectQuery)
    {
        generatedSetterHelperImpl(sourceObjectQuery, SOURCEOBJECTQUERY$2, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
    }
    
    /**
     * Appends and returns a new empty "SourceObjectQuery" element
     */
    public arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.RegistryObjectQueryType addNewSourceObjectQuery()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.RegistryObjectQueryType target = null;
            target = (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.RegistryObjectQueryType)get_store().add_element_user(SOURCEOBJECTQUERY$2);
            return target;
        }
    }
    
    /**
     * Unsets the "SourceObjectQuery" element
     */
    public void unsetSourceObjectQuery()
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_element(SOURCEOBJECTQUERY$2, 0);
        }
    }
    
    /**
     * Gets the "TargetObjectQuery" element
     */
    public arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.RegistryObjectQueryType getTargetObjectQuery()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.RegistryObjectQueryType target = null;
            target = (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.RegistryObjectQueryType)get_store().find_element_user(TARGETOBJECTQUERY$4, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * True if has "TargetObjectQuery" element
     */
    public boolean isSetTargetObjectQuery()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().count_elements(TARGETOBJECTQUERY$4) != 0;
        }
    }
    
    /**
     * Sets the "TargetObjectQuery" element
     */
    public void setTargetObjectQuery(arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.RegistryObjectQueryType targetObjectQuery)
    {
        generatedSetterHelperImpl(targetObjectQuery, TARGETOBJECTQUERY$4, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
    }
    
    /**
     * Appends and returns a new empty "TargetObjectQuery" element
     */
    public arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.RegistryObjectQueryType addNewTargetObjectQuery()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.RegistryObjectQueryType target = null;
            target = (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.RegistryObjectQueryType)get_store().add_element_user(TARGETOBJECTQUERY$4);
            return target;
        }
    }
    
    /**
     * Unsets the "TargetObjectQuery" element
     */
    public void unsetTargetObjectQuery()
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_element(TARGETOBJECTQUERY$4, 0);
        }
    }
}

/*
 * XML Type:  ClassificationQueryType
 * Namespace: urn:oasis:names:tc:ebxml-regrep:xsd:query:3.0
 * Java type: arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ClassificationQueryType
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.impl;
/**
 * An XML ClassificationQueryType(@urn:oasis:names:tc:ebxml-regrep:xsd:query:3.0).
 *
 * This is a complex type.
 */
public class ClassificationQueryTypeImpl extends arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.impl.RegistryObjectQueryTypeImpl implements arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ClassificationQueryType
{
    private static final long serialVersionUID = 1L;
    
    public ClassificationQueryTypeImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName CLASSIFICATIONSCHEMEQUERY$0 = 
        new javax.xml.namespace.QName("urn:oasis:names:tc:ebxml-regrep:xsd:query:3.0", "ClassificationSchemeQuery");
    private static final javax.xml.namespace.QName CLASSIFIEDOBJECTQUERY$2 = 
        new javax.xml.namespace.QName("urn:oasis:names:tc:ebxml-regrep:xsd:query:3.0", "ClassifiedObjectQuery");
    private static final javax.xml.namespace.QName CLASSIFICATIONNODEQUERY$4 = 
        new javax.xml.namespace.QName("urn:oasis:names:tc:ebxml-regrep:xsd:query:3.0", "ClassificationNodeQuery");
    
    
    /**
     * Gets the "ClassificationSchemeQuery" element
     */
    public arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ClassificationSchemeQueryType getClassificationSchemeQuery()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ClassificationSchemeQueryType target = null;
            target = (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ClassificationSchemeQueryType)get_store().find_element_user(CLASSIFICATIONSCHEMEQUERY$0, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * True if has "ClassificationSchemeQuery" element
     */
    public boolean isSetClassificationSchemeQuery()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().count_elements(CLASSIFICATIONSCHEMEQUERY$0) != 0;
        }
    }
    
    /**
     * Sets the "ClassificationSchemeQuery" element
     */
    public void setClassificationSchemeQuery(arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ClassificationSchemeQueryType classificationSchemeQuery)
    {
        generatedSetterHelperImpl(classificationSchemeQuery, CLASSIFICATIONSCHEMEQUERY$0, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
    }
    
    /**
     * Appends and returns a new empty "ClassificationSchemeQuery" element
     */
    public arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ClassificationSchemeQueryType addNewClassificationSchemeQuery()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ClassificationSchemeQueryType target = null;
            target = (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ClassificationSchemeQueryType)get_store().add_element_user(CLASSIFICATIONSCHEMEQUERY$0);
            return target;
        }
    }
    
    /**
     * Unsets the "ClassificationSchemeQuery" element
     */
    public void unsetClassificationSchemeQuery()
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_element(CLASSIFICATIONSCHEMEQUERY$0, 0);
        }
    }
    
    /**
     * Gets the "ClassifiedObjectQuery" element
     */
    public arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.RegistryObjectQueryType getClassifiedObjectQuery()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.RegistryObjectQueryType target = null;
            target = (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.RegistryObjectQueryType)get_store().find_element_user(CLASSIFIEDOBJECTQUERY$2, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * True if has "ClassifiedObjectQuery" element
     */
    public boolean isSetClassifiedObjectQuery()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().count_elements(CLASSIFIEDOBJECTQUERY$2) != 0;
        }
    }
    
    /**
     * Sets the "ClassifiedObjectQuery" element
     */
    public void setClassifiedObjectQuery(arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.RegistryObjectQueryType classifiedObjectQuery)
    {
        generatedSetterHelperImpl(classifiedObjectQuery, CLASSIFIEDOBJECTQUERY$2, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
    }
    
    /**
     * Appends and returns a new empty "ClassifiedObjectQuery" element
     */
    public arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.RegistryObjectQueryType addNewClassifiedObjectQuery()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.RegistryObjectQueryType target = null;
            target = (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.RegistryObjectQueryType)get_store().add_element_user(CLASSIFIEDOBJECTQUERY$2);
            return target;
        }
    }
    
    /**
     * Unsets the "ClassifiedObjectQuery" element
     */
    public void unsetClassifiedObjectQuery()
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_element(CLASSIFIEDOBJECTQUERY$2, 0);
        }
    }
    
    /**
     * Gets the "ClassificationNodeQuery" element
     */
    public arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ClassificationNodeQueryType getClassificationNodeQuery()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ClassificationNodeQueryType target = null;
            target = (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ClassificationNodeQueryType)get_store().find_element_user(CLASSIFICATIONNODEQUERY$4, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * True if has "ClassificationNodeQuery" element
     */
    public boolean isSetClassificationNodeQuery()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().count_elements(CLASSIFICATIONNODEQUERY$4) != 0;
        }
    }
    
    /**
     * Sets the "ClassificationNodeQuery" element
     */
    public void setClassificationNodeQuery(arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ClassificationNodeQueryType classificationNodeQuery)
    {
        generatedSetterHelperImpl(classificationNodeQuery, CLASSIFICATIONNODEQUERY$4, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
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
            target = (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ClassificationNodeQueryType)get_store().add_element_user(CLASSIFICATIONNODEQUERY$4);
            return target;
        }
    }
    
    /**
     * Unsets the "ClassificationNodeQuery" element
     */
    public void unsetClassificationNodeQuery()
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_element(CLASSIFICATIONNODEQUERY$4, 0);
        }
    }
}

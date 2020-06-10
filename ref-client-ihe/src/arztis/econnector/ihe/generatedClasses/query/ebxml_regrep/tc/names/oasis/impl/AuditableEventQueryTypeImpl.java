/*
 * XML Type:  AuditableEventQueryType
 * Namespace: urn:oasis:names:tc:ebxml-regrep:xsd:query:3.0
 * Java type: arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AuditableEventQueryType
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.impl;
/**
 * An XML AuditableEventQueryType(@urn:oasis:names:tc:ebxml-regrep:xsd:query:3.0).
 *
 * This is a complex type.
 */
public class AuditableEventQueryTypeImpl extends arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.impl.RegistryObjectQueryTypeImpl implements arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AuditableEventQueryType
{
    private static final long serialVersionUID = 1L;
    
    public AuditableEventQueryTypeImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName AFFECTEDOBJECTQUERY$0 = 
        new javax.xml.namespace.QName("urn:oasis:names:tc:ebxml-regrep:xsd:query:3.0", "AffectedObjectQuery");
    private static final javax.xml.namespace.QName EVENTTYPEQUERY$2 = 
        new javax.xml.namespace.QName("urn:oasis:names:tc:ebxml-regrep:xsd:query:3.0", "EventTypeQuery");
    private static final javax.xml.namespace.QName USERQUERY$4 = 
        new javax.xml.namespace.QName("urn:oasis:names:tc:ebxml-regrep:xsd:query:3.0", "UserQuery");
    
    
    /**
     * Gets array of all "AffectedObjectQuery" elements
     */
    public arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.RegistryObjectQueryType[] getAffectedObjectQueryArray()
    {
        synchronized (monitor())
        {
            check_orphaned();
            java.util.List targetList = new java.util.ArrayList();
            get_store().find_all_element_users(AFFECTEDOBJECTQUERY$0, targetList);
            arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.RegistryObjectQueryType[] result = new arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.RegistryObjectQueryType[targetList.size()];
            targetList.toArray(result);
            return result;
        }
    }
    
    /**
     * Gets ith "AffectedObjectQuery" element
     */
    public arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.RegistryObjectQueryType getAffectedObjectQueryArray(int i)
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.RegistryObjectQueryType target = null;
            target = (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.RegistryObjectQueryType)get_store().find_element_user(AFFECTEDOBJECTQUERY$0, i);
            if (target == null)
            {
                throw new IndexOutOfBoundsException();
            }
            return target;
        }
    }
    
    /**
     * Returns number of "AffectedObjectQuery" element
     */
    public int sizeOfAffectedObjectQueryArray()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().count_elements(AFFECTEDOBJECTQUERY$0);
        }
    }
    
    /**
     * Sets array of all "AffectedObjectQuery" element  WARNING: This method is not atomicaly synchronized.
     */
    public void setAffectedObjectQueryArray(arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.RegistryObjectQueryType[] affectedObjectQueryArray)
    {
        check_orphaned();
        arraySetterHelper(affectedObjectQueryArray, AFFECTEDOBJECTQUERY$0);
    }
    
    /**
     * Sets ith "AffectedObjectQuery" element
     */
    public void setAffectedObjectQueryArray(int i, arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.RegistryObjectQueryType affectedObjectQuery)
    {
        generatedSetterHelperImpl(affectedObjectQuery, AFFECTEDOBJECTQUERY$0, i, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_ARRAYITEM);
    }
    
    /**
     * Inserts and returns a new empty value (as xml) as the ith "AffectedObjectQuery" element
     */
    public arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.RegistryObjectQueryType insertNewAffectedObjectQuery(int i)
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.RegistryObjectQueryType target = null;
            target = (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.RegistryObjectQueryType)get_store().insert_element_user(AFFECTEDOBJECTQUERY$0, i);
            return target;
        }
    }
    
    /**
     * Appends and returns a new empty value (as xml) as the last "AffectedObjectQuery" element
     */
    public arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.RegistryObjectQueryType addNewAffectedObjectQuery()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.RegistryObjectQueryType target = null;
            target = (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.RegistryObjectQueryType)get_store().add_element_user(AFFECTEDOBJECTQUERY$0);
            return target;
        }
    }
    
    /**
     * Removes the ith "AffectedObjectQuery" element
     */
    public void removeAffectedObjectQuery(int i)
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_element(AFFECTEDOBJECTQUERY$0, i);
        }
    }
    
    /**
     * Gets the "EventTypeQuery" element
     */
    public arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ClassificationNodeQueryType getEventTypeQuery()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ClassificationNodeQueryType target = null;
            target = (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ClassificationNodeQueryType)get_store().find_element_user(EVENTTYPEQUERY$2, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * True if has "EventTypeQuery" element
     */
    public boolean isSetEventTypeQuery()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().count_elements(EVENTTYPEQUERY$2) != 0;
        }
    }
    
    /**
     * Sets the "EventTypeQuery" element
     */
    public void setEventTypeQuery(arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ClassificationNodeQueryType eventTypeQuery)
    {
        generatedSetterHelperImpl(eventTypeQuery, EVENTTYPEQUERY$2, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
    }
    
    /**
     * Appends and returns a new empty "EventTypeQuery" element
     */
    public arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ClassificationNodeQueryType addNewEventTypeQuery()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ClassificationNodeQueryType target = null;
            target = (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ClassificationNodeQueryType)get_store().add_element_user(EVENTTYPEQUERY$2);
            return target;
        }
    }
    
    /**
     * Unsets the "EventTypeQuery" element
     */
    public void unsetEventTypeQuery()
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_element(EVENTTYPEQUERY$2, 0);
        }
    }
    
    /**
     * Gets the "UserQuery" element
     */
    public arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.UserQueryType getUserQuery()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.UserQueryType target = null;
            target = (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.UserQueryType)get_store().find_element_user(USERQUERY$4, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * True if has "UserQuery" element
     */
    public boolean isSetUserQuery()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().count_elements(USERQUERY$4) != 0;
        }
    }
    
    /**
     * Sets the "UserQuery" element
     */
    public void setUserQuery(arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.UserQueryType userQuery)
    {
        generatedSetterHelperImpl(userQuery, USERQUERY$4, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
    }
    
    /**
     * Appends and returns a new empty "UserQuery" element
     */
    public arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.UserQueryType addNewUserQuery()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.UserQueryType target = null;
            target = (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.UserQueryType)get_store().add_element_user(USERQUERY$4);
            return target;
        }
    }
    
    /**
     * Unsets the "UserQuery" element
     */
    public void unsetUserQuery()
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_element(USERQUERY$4, 0);
        }
    }
}

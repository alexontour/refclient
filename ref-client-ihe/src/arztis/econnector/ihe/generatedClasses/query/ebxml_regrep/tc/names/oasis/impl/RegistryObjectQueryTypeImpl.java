/*
 * XML Type:  RegistryObjectQueryType
 * Namespace: urn:oasis:names:tc:ebxml-regrep:xsd:query:3.0
 * Java type: arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.RegistryObjectQueryType
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.impl;
/**
 * An XML RegistryObjectQueryType(@urn:oasis:names:tc:ebxml-regrep:xsd:query:3.0).
 *
 * This is a complex type.
 */
public class RegistryObjectQueryTypeImpl extends arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.impl.FilterQueryTypeImpl implements arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.RegistryObjectQueryType
{
    private static final long serialVersionUID = 1L;
    
    public RegistryObjectQueryTypeImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName SLOTBRANCH$0 = 
        new javax.xml.namespace.QName("urn:oasis:names:tc:ebxml-regrep:xsd:query:3.0", "SlotBranch");
    private static final javax.xml.namespace.QName NAMEBRANCH$2 = 
        new javax.xml.namespace.QName("urn:oasis:names:tc:ebxml-regrep:xsd:query:3.0", "NameBranch");
    private static final javax.xml.namespace.QName DESCRIPTIONBRANCH$4 = 
        new javax.xml.namespace.QName("urn:oasis:names:tc:ebxml-regrep:xsd:query:3.0", "DescriptionBranch");
    private static final javax.xml.namespace.QName VERSIONINFOFILTER$6 = 
        new javax.xml.namespace.QName("urn:oasis:names:tc:ebxml-regrep:xsd:query:3.0", "VersionInfoFilter");
    private static final javax.xml.namespace.QName CLASSIFICATIONQUERY$8 = 
        new javax.xml.namespace.QName("urn:oasis:names:tc:ebxml-regrep:xsd:query:3.0", "ClassificationQuery");
    private static final javax.xml.namespace.QName EXTERNALIDENTIFIERQUERY$10 = 
        new javax.xml.namespace.QName("urn:oasis:names:tc:ebxml-regrep:xsd:query:3.0", "ExternalIdentifierQuery");
    private static final javax.xml.namespace.QName OBJECTTYPEQUERY$12 = 
        new javax.xml.namespace.QName("urn:oasis:names:tc:ebxml-regrep:xsd:query:3.0", "ObjectTypeQuery");
    private static final javax.xml.namespace.QName STATUSQUERY$14 = 
        new javax.xml.namespace.QName("urn:oasis:names:tc:ebxml-regrep:xsd:query:3.0", "StatusQuery");
    private static final javax.xml.namespace.QName SOURCEASSOCIATIONQUERY$16 = 
        new javax.xml.namespace.QName("urn:oasis:names:tc:ebxml-regrep:xsd:query:3.0", "SourceAssociationQuery");
    private static final javax.xml.namespace.QName TARGETASSOCIATIONQUERY$18 = 
        new javax.xml.namespace.QName("urn:oasis:names:tc:ebxml-regrep:xsd:query:3.0", "TargetAssociationQuery");
    
    
    /**
     * Gets array of all "SlotBranch" elements
     */
    public arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.SlotBranchType[] getSlotBranchArray()
    {
        synchronized (monitor())
        {
            check_orphaned();
            java.util.List targetList = new java.util.ArrayList();
            get_store().find_all_element_users(SLOTBRANCH$0, targetList);
            arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.SlotBranchType[] result = new arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.SlotBranchType[targetList.size()];
            targetList.toArray(result);
            return result;
        }
    }
    
    /**
     * Gets ith "SlotBranch" element
     */
    public arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.SlotBranchType getSlotBranchArray(int i)
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.SlotBranchType target = null;
            target = (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.SlotBranchType)get_store().find_element_user(SLOTBRANCH$0, i);
            if (target == null)
            {
                throw new IndexOutOfBoundsException();
            }
            return target;
        }
    }
    
    /**
     * Returns number of "SlotBranch" element
     */
    public int sizeOfSlotBranchArray()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().count_elements(SLOTBRANCH$0);
        }
    }
    
    /**
     * Sets array of all "SlotBranch" element  WARNING: This method is not atomicaly synchronized.
     */
    public void setSlotBranchArray(arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.SlotBranchType[] slotBranchArray)
    {
        check_orphaned();
        arraySetterHelper(slotBranchArray, SLOTBRANCH$0);
    }
    
    /**
     * Sets ith "SlotBranch" element
     */
    public void setSlotBranchArray(int i, arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.SlotBranchType slotBranch)
    {
        generatedSetterHelperImpl(slotBranch, SLOTBRANCH$0, i, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_ARRAYITEM);
    }
    
    /**
     * Inserts and returns a new empty value (as xml) as the ith "SlotBranch" element
     */
    public arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.SlotBranchType insertNewSlotBranch(int i)
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.SlotBranchType target = null;
            target = (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.SlotBranchType)get_store().insert_element_user(SLOTBRANCH$0, i);
            return target;
        }
    }
    
    /**
     * Appends and returns a new empty value (as xml) as the last "SlotBranch" element
     */
    public arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.SlotBranchType addNewSlotBranch()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.SlotBranchType target = null;
            target = (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.SlotBranchType)get_store().add_element_user(SLOTBRANCH$0);
            return target;
        }
    }
    
    /**
     * Removes the ith "SlotBranch" element
     */
    public void removeSlotBranch(int i)
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_element(SLOTBRANCH$0, i);
        }
    }
    
    /**
     * Gets the "NameBranch" element
     */
    public arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.InternationalStringBranchType getNameBranch()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.InternationalStringBranchType target = null;
            target = (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.InternationalStringBranchType)get_store().find_element_user(NAMEBRANCH$2, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * True if has "NameBranch" element
     */
    public boolean isSetNameBranch()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().count_elements(NAMEBRANCH$2) != 0;
        }
    }
    
    /**
     * Sets the "NameBranch" element
     */
    public void setNameBranch(arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.InternationalStringBranchType nameBranch)
    {
        generatedSetterHelperImpl(nameBranch, NAMEBRANCH$2, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
    }
    
    /**
     * Appends and returns a new empty "NameBranch" element
     */
    public arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.InternationalStringBranchType addNewNameBranch()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.InternationalStringBranchType target = null;
            target = (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.InternationalStringBranchType)get_store().add_element_user(NAMEBRANCH$2);
            return target;
        }
    }
    
    /**
     * Unsets the "NameBranch" element
     */
    public void unsetNameBranch()
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_element(NAMEBRANCH$2, 0);
        }
    }
    
    /**
     * Gets the "DescriptionBranch" element
     */
    public arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.InternationalStringBranchType getDescriptionBranch()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.InternationalStringBranchType target = null;
            target = (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.InternationalStringBranchType)get_store().find_element_user(DESCRIPTIONBRANCH$4, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * True if has "DescriptionBranch" element
     */
    public boolean isSetDescriptionBranch()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().count_elements(DESCRIPTIONBRANCH$4) != 0;
        }
    }
    
    /**
     * Sets the "DescriptionBranch" element
     */
    public void setDescriptionBranch(arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.InternationalStringBranchType descriptionBranch)
    {
        generatedSetterHelperImpl(descriptionBranch, DESCRIPTIONBRANCH$4, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
    }
    
    /**
     * Appends and returns a new empty "DescriptionBranch" element
     */
    public arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.InternationalStringBranchType addNewDescriptionBranch()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.InternationalStringBranchType target = null;
            target = (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.InternationalStringBranchType)get_store().add_element_user(DESCRIPTIONBRANCH$4);
            return target;
        }
    }
    
    /**
     * Unsets the "DescriptionBranch" element
     */
    public void unsetDescriptionBranch()
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_element(DESCRIPTIONBRANCH$4, 0);
        }
    }
    
    /**
     * Gets the "VersionInfoFilter" element
     */
    public arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.FilterType getVersionInfoFilter()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.FilterType target = null;
            target = (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.FilterType)get_store().find_element_user(VERSIONINFOFILTER$6, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * True if has "VersionInfoFilter" element
     */
    public boolean isSetVersionInfoFilter()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().count_elements(VERSIONINFOFILTER$6) != 0;
        }
    }
    
    /**
     * Sets the "VersionInfoFilter" element
     */
    public void setVersionInfoFilter(arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.FilterType versionInfoFilter)
    {
        generatedSetterHelperImpl(versionInfoFilter, VERSIONINFOFILTER$6, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
    }
    
    /**
     * Appends and returns a new empty "VersionInfoFilter" element
     */
    public arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.FilterType addNewVersionInfoFilter()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.FilterType target = null;
            target = (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.FilterType)get_store().add_element_user(VERSIONINFOFILTER$6);
            return target;
        }
    }
    
    /**
     * Unsets the "VersionInfoFilter" element
     */
    public void unsetVersionInfoFilter()
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_element(VERSIONINFOFILTER$6, 0);
        }
    }
    
    /**
     * Gets array of all "ClassificationQuery" elements
     */
    public arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ClassificationQueryType[] getClassificationQueryArray()
    {
        synchronized (monitor())
        {
            check_orphaned();
            java.util.List targetList = new java.util.ArrayList();
            get_store().find_all_element_users(CLASSIFICATIONQUERY$8, targetList);
            arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ClassificationQueryType[] result = new arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ClassificationQueryType[targetList.size()];
            targetList.toArray(result);
            return result;
        }
    }
    
    /**
     * Gets ith "ClassificationQuery" element
     */
    public arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ClassificationQueryType getClassificationQueryArray(int i)
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ClassificationQueryType target = null;
            target = (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ClassificationQueryType)get_store().find_element_user(CLASSIFICATIONQUERY$8, i);
            if (target == null)
            {
                throw new IndexOutOfBoundsException();
            }
            return target;
        }
    }
    
    /**
     * Returns number of "ClassificationQuery" element
     */
    public int sizeOfClassificationQueryArray()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().count_elements(CLASSIFICATIONQUERY$8);
        }
    }
    
    /**
     * Sets array of all "ClassificationQuery" element  WARNING: This method is not atomicaly synchronized.
     */
    public void setClassificationQueryArray(arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ClassificationQueryType[] classificationQueryArray)
    {
        check_orphaned();
        arraySetterHelper(classificationQueryArray, CLASSIFICATIONQUERY$8);
    }
    
    /**
     * Sets ith "ClassificationQuery" element
     */
    public void setClassificationQueryArray(int i, arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ClassificationQueryType classificationQuery)
    {
        generatedSetterHelperImpl(classificationQuery, CLASSIFICATIONQUERY$8, i, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_ARRAYITEM);
    }
    
    /**
     * Inserts and returns a new empty value (as xml) as the ith "ClassificationQuery" element
     */
    public arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ClassificationQueryType insertNewClassificationQuery(int i)
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ClassificationQueryType target = null;
            target = (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ClassificationQueryType)get_store().insert_element_user(CLASSIFICATIONQUERY$8, i);
            return target;
        }
    }
    
    /**
     * Appends and returns a new empty value (as xml) as the last "ClassificationQuery" element
     */
    public arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ClassificationQueryType addNewClassificationQuery()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ClassificationQueryType target = null;
            target = (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ClassificationQueryType)get_store().add_element_user(CLASSIFICATIONQUERY$8);
            return target;
        }
    }
    
    /**
     * Removes the ith "ClassificationQuery" element
     */
    public void removeClassificationQuery(int i)
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_element(CLASSIFICATIONQUERY$8, i);
        }
    }
    
    /**
     * Gets array of all "ExternalIdentifierQuery" elements
     */
    public arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ExternalIdentifierQueryType[] getExternalIdentifierQueryArray()
    {
        synchronized (monitor())
        {
            check_orphaned();
            java.util.List targetList = new java.util.ArrayList();
            get_store().find_all_element_users(EXTERNALIDENTIFIERQUERY$10, targetList);
            arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ExternalIdentifierQueryType[] result = new arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ExternalIdentifierQueryType[targetList.size()];
            targetList.toArray(result);
            return result;
        }
    }
    
    /**
     * Gets ith "ExternalIdentifierQuery" element
     */
    public arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ExternalIdentifierQueryType getExternalIdentifierQueryArray(int i)
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ExternalIdentifierQueryType target = null;
            target = (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ExternalIdentifierQueryType)get_store().find_element_user(EXTERNALIDENTIFIERQUERY$10, i);
            if (target == null)
            {
                throw new IndexOutOfBoundsException();
            }
            return target;
        }
    }
    
    /**
     * Returns number of "ExternalIdentifierQuery" element
     */
    public int sizeOfExternalIdentifierQueryArray()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().count_elements(EXTERNALIDENTIFIERQUERY$10);
        }
    }
    
    /**
     * Sets array of all "ExternalIdentifierQuery" element  WARNING: This method is not atomicaly synchronized.
     */
    public void setExternalIdentifierQueryArray(arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ExternalIdentifierQueryType[] externalIdentifierQueryArray)
    {
        check_orphaned();
        arraySetterHelper(externalIdentifierQueryArray, EXTERNALIDENTIFIERQUERY$10);
    }
    
    /**
     * Sets ith "ExternalIdentifierQuery" element
     */
    public void setExternalIdentifierQueryArray(int i, arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ExternalIdentifierQueryType externalIdentifierQuery)
    {
        generatedSetterHelperImpl(externalIdentifierQuery, EXTERNALIDENTIFIERQUERY$10, i, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_ARRAYITEM);
    }
    
    /**
     * Inserts and returns a new empty value (as xml) as the ith "ExternalIdentifierQuery" element
     */
    public arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ExternalIdentifierQueryType insertNewExternalIdentifierQuery(int i)
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ExternalIdentifierQueryType target = null;
            target = (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ExternalIdentifierQueryType)get_store().insert_element_user(EXTERNALIDENTIFIERQUERY$10, i);
            return target;
        }
    }
    
    /**
     * Appends and returns a new empty value (as xml) as the last "ExternalIdentifierQuery" element
     */
    public arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ExternalIdentifierQueryType addNewExternalIdentifierQuery()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ExternalIdentifierQueryType target = null;
            target = (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ExternalIdentifierQueryType)get_store().add_element_user(EXTERNALIDENTIFIERQUERY$10);
            return target;
        }
    }
    
    /**
     * Removes the ith "ExternalIdentifierQuery" element
     */
    public void removeExternalIdentifierQuery(int i)
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_element(EXTERNALIDENTIFIERQUERY$10, i);
        }
    }
    
    /**
     * Gets the "ObjectTypeQuery" element
     */
    public arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ClassificationNodeQueryType getObjectTypeQuery()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ClassificationNodeQueryType target = null;
            target = (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ClassificationNodeQueryType)get_store().find_element_user(OBJECTTYPEQUERY$12, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * True if has "ObjectTypeQuery" element
     */
    public boolean isSetObjectTypeQuery()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().count_elements(OBJECTTYPEQUERY$12) != 0;
        }
    }
    
    /**
     * Sets the "ObjectTypeQuery" element
     */
    public void setObjectTypeQuery(arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ClassificationNodeQueryType objectTypeQuery)
    {
        generatedSetterHelperImpl(objectTypeQuery, OBJECTTYPEQUERY$12, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
    }
    
    /**
     * Appends and returns a new empty "ObjectTypeQuery" element
     */
    public arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ClassificationNodeQueryType addNewObjectTypeQuery()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ClassificationNodeQueryType target = null;
            target = (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ClassificationNodeQueryType)get_store().add_element_user(OBJECTTYPEQUERY$12);
            return target;
        }
    }
    
    /**
     * Unsets the "ObjectTypeQuery" element
     */
    public void unsetObjectTypeQuery()
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_element(OBJECTTYPEQUERY$12, 0);
        }
    }
    
    /**
     * Gets the "StatusQuery" element
     */
    public arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ClassificationNodeQueryType getStatusQuery()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ClassificationNodeQueryType target = null;
            target = (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ClassificationNodeQueryType)get_store().find_element_user(STATUSQUERY$14, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * True if has "StatusQuery" element
     */
    public boolean isSetStatusQuery()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().count_elements(STATUSQUERY$14) != 0;
        }
    }
    
    /**
     * Sets the "StatusQuery" element
     */
    public void setStatusQuery(arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ClassificationNodeQueryType statusQuery)
    {
        generatedSetterHelperImpl(statusQuery, STATUSQUERY$14, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
    }
    
    /**
     * Appends and returns a new empty "StatusQuery" element
     */
    public arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ClassificationNodeQueryType addNewStatusQuery()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ClassificationNodeQueryType target = null;
            target = (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ClassificationNodeQueryType)get_store().add_element_user(STATUSQUERY$14);
            return target;
        }
    }
    
    /**
     * Unsets the "StatusQuery" element
     */
    public void unsetStatusQuery()
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_element(STATUSQUERY$14, 0);
        }
    }
    
    /**
     * Gets array of all "SourceAssociationQuery" elements
     */
    public arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AssociationQueryType[] getSourceAssociationQueryArray()
    {
        synchronized (monitor())
        {
            check_orphaned();
            java.util.List targetList = new java.util.ArrayList();
            get_store().find_all_element_users(SOURCEASSOCIATIONQUERY$16, targetList);
            arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AssociationQueryType[] result = new arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AssociationQueryType[targetList.size()];
            targetList.toArray(result);
            return result;
        }
    }
    
    /**
     * Gets ith "SourceAssociationQuery" element
     */
    public arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AssociationQueryType getSourceAssociationQueryArray(int i)
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AssociationQueryType target = null;
            target = (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AssociationQueryType)get_store().find_element_user(SOURCEASSOCIATIONQUERY$16, i);
            if (target == null)
            {
                throw new IndexOutOfBoundsException();
            }
            return target;
        }
    }
    
    /**
     * Returns number of "SourceAssociationQuery" element
     */
    public int sizeOfSourceAssociationQueryArray()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().count_elements(SOURCEASSOCIATIONQUERY$16);
        }
    }
    
    /**
     * Sets array of all "SourceAssociationQuery" element  WARNING: This method is not atomicaly synchronized.
     */
    public void setSourceAssociationQueryArray(arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AssociationQueryType[] sourceAssociationQueryArray)
    {
        check_orphaned();
        arraySetterHelper(sourceAssociationQueryArray, SOURCEASSOCIATIONQUERY$16);
    }
    
    /**
     * Sets ith "SourceAssociationQuery" element
     */
    public void setSourceAssociationQueryArray(int i, arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AssociationQueryType sourceAssociationQuery)
    {
        generatedSetterHelperImpl(sourceAssociationQuery, SOURCEASSOCIATIONQUERY$16, i, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_ARRAYITEM);
    }
    
    /**
     * Inserts and returns a new empty value (as xml) as the ith "SourceAssociationQuery" element
     */
    public arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AssociationQueryType insertNewSourceAssociationQuery(int i)
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AssociationQueryType target = null;
            target = (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AssociationQueryType)get_store().insert_element_user(SOURCEASSOCIATIONQUERY$16, i);
            return target;
        }
    }
    
    /**
     * Appends and returns a new empty value (as xml) as the last "SourceAssociationQuery" element
     */
    public arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AssociationQueryType addNewSourceAssociationQuery()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AssociationQueryType target = null;
            target = (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AssociationQueryType)get_store().add_element_user(SOURCEASSOCIATIONQUERY$16);
            return target;
        }
    }
    
    /**
     * Removes the ith "SourceAssociationQuery" element
     */
    public void removeSourceAssociationQuery(int i)
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_element(SOURCEASSOCIATIONQUERY$16, i);
        }
    }
    
    /**
     * Gets array of all "TargetAssociationQuery" elements
     */
    public arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AssociationQueryType[] getTargetAssociationQueryArray()
    {
        synchronized (monitor())
        {
            check_orphaned();
            java.util.List targetList = new java.util.ArrayList();
            get_store().find_all_element_users(TARGETASSOCIATIONQUERY$18, targetList);
            arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AssociationQueryType[] result = new arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AssociationQueryType[targetList.size()];
            targetList.toArray(result);
            return result;
        }
    }
    
    /**
     * Gets ith "TargetAssociationQuery" element
     */
    public arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AssociationQueryType getTargetAssociationQueryArray(int i)
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AssociationQueryType target = null;
            target = (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AssociationQueryType)get_store().find_element_user(TARGETASSOCIATIONQUERY$18, i);
            if (target == null)
            {
                throw new IndexOutOfBoundsException();
            }
            return target;
        }
    }
    
    /**
     * Returns number of "TargetAssociationQuery" element
     */
    public int sizeOfTargetAssociationQueryArray()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().count_elements(TARGETASSOCIATIONQUERY$18);
        }
    }
    
    /**
     * Sets array of all "TargetAssociationQuery" element  WARNING: This method is not atomicaly synchronized.
     */
    public void setTargetAssociationQueryArray(arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AssociationQueryType[] targetAssociationQueryArray)
    {
        check_orphaned();
        arraySetterHelper(targetAssociationQueryArray, TARGETASSOCIATIONQUERY$18);
    }
    
    /**
     * Sets ith "TargetAssociationQuery" element
     */
    public void setTargetAssociationQueryArray(int i, arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AssociationQueryType targetAssociationQuery)
    {
        generatedSetterHelperImpl(targetAssociationQuery, TARGETASSOCIATIONQUERY$18, i, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_ARRAYITEM);
    }
    
    /**
     * Inserts and returns a new empty value (as xml) as the ith "TargetAssociationQuery" element
     */
    public arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AssociationQueryType insertNewTargetAssociationQuery(int i)
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AssociationQueryType target = null;
            target = (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AssociationQueryType)get_store().insert_element_user(TARGETASSOCIATIONQUERY$18, i);
            return target;
        }
    }
    
    /**
     * Appends and returns a new empty value (as xml) as the last "TargetAssociationQuery" element
     */
    public arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AssociationQueryType addNewTargetAssociationQuery()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AssociationQueryType target = null;
            target = (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.AssociationQueryType)get_store().add_element_user(TARGETASSOCIATIONQUERY$18);
            return target;
        }
    }
    
    /**
     * Removes the ith "TargetAssociationQuery" element
     */
    public void removeTargetAssociationQuery(int i)
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_element(TARGETASSOCIATIONQUERY$18, i);
        }
    }
}

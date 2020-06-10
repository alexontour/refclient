/*
 * XML Type:  RegistryObjectListType
 * Namespace: urn:oasis:names:tc:ebxml-regrep:xsd:rim:3.0
 * Java type: arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.RegistryObjectListType
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.impl;
/**
 * An XML RegistryObjectListType(@urn:oasis:names:tc:ebxml-regrep:xsd:rim:3.0).
 *
 * This is a complex type.
 */
public class RegistryObjectListTypeImpl extends org.apache.xmlbeans.impl.values.XmlComplexContentImpl implements arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.RegistryObjectListType
{
    private static final long serialVersionUID = 1L;
    
    public RegistryObjectListTypeImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName OBJECTREF$0 = 
        new javax.xml.namespace.QName("urn:oasis:names:tc:ebxml-regrep:xsd:rim:3.0", "ObjectRef");
    private static final javax.xml.namespace.QName CLASSIFICATION$2 = 
        new javax.xml.namespace.QName("urn:oasis:names:tc:ebxml-regrep:xsd:rim:3.0", "Classification");
    private static final javax.xml.namespace.QName EXTRINSICOBJECT$4 = 
        new javax.xml.namespace.QName("urn:oasis:names:tc:ebxml-regrep:xsd:rim:3.0", "ExtrinsicObject");
    private static final javax.xml.namespace.QName REGISTRYPACKAGE$6 = 
        new javax.xml.namespace.QName("urn:oasis:names:tc:ebxml-regrep:xsd:rim:3.0", "RegistryPackage");
    private static final javax.xml.namespace.QName ASSOCIATION$8 = 
        new javax.xml.namespace.QName("urn:oasis:names:tc:ebxml-regrep:xsd:rim:3.0", "Association");
    
    
    /**
     * Gets array of all "ObjectRef" elements
     */
    public arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ObjectRefType[] getObjectRefArray()
    {
        synchronized (monitor())
        {
            check_orphaned();
            java.util.List targetList = new java.util.ArrayList();
            get_store().find_all_element_users(OBJECTREF$0, targetList);
            arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ObjectRefType[] result = new arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ObjectRefType[targetList.size()];
            targetList.toArray(result);
            return result;
        }
    }
    
    /**
     * Gets ith "ObjectRef" element
     */
    public arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ObjectRefType getObjectRefArray(int i)
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ObjectRefType target = null;
            target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ObjectRefType)get_store().find_element_user(OBJECTREF$0, i);
            if (target == null)
            {
                throw new IndexOutOfBoundsException();
            }
            return target;
        }
    }
    
    /**
     * Returns number of "ObjectRef" element
     */
    public int sizeOfObjectRefArray()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().count_elements(OBJECTREF$0);
        }
    }
    
    /**
     * Sets array of all "ObjectRef" element  WARNING: This method is not atomicaly synchronized.
     */
    public void setObjectRefArray(arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ObjectRefType[] objectRefArray)
    {
        check_orphaned();
        arraySetterHelper(objectRefArray, OBJECTREF$0);
    }
    
    /**
     * Sets ith "ObjectRef" element
     */
    public void setObjectRefArray(int i, arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ObjectRefType objectRef)
    {
        generatedSetterHelperImpl(objectRef, OBJECTREF$0, i, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_ARRAYITEM);
    }
    
    /**
     * Inserts and returns a new empty value (as xml) as the ith "ObjectRef" element
     */
    public arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ObjectRefType insertNewObjectRef(int i)
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ObjectRefType target = null;
            target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ObjectRefType)get_store().insert_element_user(OBJECTREF$0, i);
            return target;
        }
    }
    
    /**
     * Appends and returns a new empty value (as xml) as the last "ObjectRef" element
     */
    public arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ObjectRefType addNewObjectRef()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ObjectRefType target = null;
            target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ObjectRefType)get_store().add_element_user(OBJECTREF$0);
            return target;
        }
    }
    
    /**
     * Removes the ith "ObjectRef" element
     */
    public void removeObjectRef(int i)
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_element(OBJECTREF$0, i);
        }
    }
    
    /**
     * Gets array of all "Classification" elements
     */
    public arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ClassificationType[] getClassificationArray()
    {
        synchronized (monitor())
        {
            check_orphaned();
            java.util.List targetList = new java.util.ArrayList();
            get_store().find_all_element_users(CLASSIFICATION$2, targetList);
            arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ClassificationType[] result = new arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ClassificationType[targetList.size()];
            targetList.toArray(result);
            return result;
        }
    }
    
    /**
     * Gets ith "Classification" element
     */
    public arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ClassificationType getClassificationArray(int i)
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ClassificationType target = null;
            target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ClassificationType)get_store().find_element_user(CLASSIFICATION$2, i);
            if (target == null)
            {
                throw new IndexOutOfBoundsException();
            }
            return target;
        }
    }
    
    /**
     * Returns number of "Classification" element
     */
    public int sizeOfClassificationArray()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().count_elements(CLASSIFICATION$2);
        }
    }
    
    /**
     * Sets array of all "Classification" element  WARNING: This method is not atomicaly synchronized.
     */
    public void setClassificationArray(arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ClassificationType[] classificationArray)
    {
        check_orphaned();
        arraySetterHelper(classificationArray, CLASSIFICATION$2);
    }
    
    /**
     * Sets ith "Classification" element
     */
    public void setClassificationArray(int i, arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ClassificationType classification)
    {
        generatedSetterHelperImpl(classification, CLASSIFICATION$2, i, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_ARRAYITEM);
    }
    
    /**
     * Inserts and returns a new empty value (as xml) as the ith "Classification" element
     */
    public arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ClassificationType insertNewClassification(int i)
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ClassificationType target = null;
            target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ClassificationType)get_store().insert_element_user(CLASSIFICATION$2, i);
            return target;
        }
    }
    
    /**
     * Appends and returns a new empty value (as xml) as the last "Classification" element
     */
    public arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ClassificationType addNewClassification()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ClassificationType target = null;
            target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ClassificationType)get_store().add_element_user(CLASSIFICATION$2);
            return target;
        }
    }
    
    /**
     * Removes the ith "Classification" element
     */
    public void removeClassification(int i)
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_element(CLASSIFICATION$2, i);
        }
    }
    
    /**
     * Gets array of all "ExtrinsicObject" elements
     */
    public arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ExtrinsicObjectType[] getExtrinsicObjectArray()
    {
        synchronized (monitor())
        {
            check_orphaned();
            java.util.List targetList = new java.util.ArrayList();
            get_store().find_all_element_users(EXTRINSICOBJECT$4, targetList);
            arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ExtrinsicObjectType[] result = new arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ExtrinsicObjectType[targetList.size()];
            targetList.toArray(result);
            return result;
        }
    }
    
    /**
     * Gets ith "ExtrinsicObject" element
     */
    public arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ExtrinsicObjectType getExtrinsicObjectArray(int i)
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ExtrinsicObjectType target = null;
            target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ExtrinsicObjectType)get_store().find_element_user(EXTRINSICOBJECT$4, i);
            if (target == null)
            {
                throw new IndexOutOfBoundsException();
            }
            return target;
        }
    }
    
    /**
     * Returns number of "ExtrinsicObject" element
     */
    public int sizeOfExtrinsicObjectArray()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().count_elements(EXTRINSICOBJECT$4);
        }
    }
    
    /**
     * Sets array of all "ExtrinsicObject" element  WARNING: This method is not atomicaly synchronized.
     */
    public void setExtrinsicObjectArray(arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ExtrinsicObjectType[] extrinsicObjectArray)
    {
        check_orphaned();
        arraySetterHelper(extrinsicObjectArray, EXTRINSICOBJECT$4);
    }
    
    /**
     * Sets ith "ExtrinsicObject" element
     */
    public void setExtrinsicObjectArray(int i, arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ExtrinsicObjectType extrinsicObject)
    {
        generatedSetterHelperImpl(extrinsicObject, EXTRINSICOBJECT$4, i, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_ARRAYITEM);
    }
    
    /**
     * Inserts and returns a new empty value (as xml) as the ith "ExtrinsicObject" element
     */
    public arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ExtrinsicObjectType insertNewExtrinsicObject(int i)
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ExtrinsicObjectType target = null;
            target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ExtrinsicObjectType)get_store().insert_element_user(EXTRINSICOBJECT$4, i);
            return target;
        }
    }
    
    /**
     * Appends and returns a new empty value (as xml) as the last "ExtrinsicObject" element
     */
    public arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ExtrinsicObjectType addNewExtrinsicObject()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ExtrinsicObjectType target = null;
            target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ExtrinsicObjectType)get_store().add_element_user(EXTRINSICOBJECT$4);
            return target;
        }
    }
    
    /**
     * Removes the ith "ExtrinsicObject" element
     */
    public void removeExtrinsicObject(int i)
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_element(EXTRINSICOBJECT$4, i);
        }
    }
    
    /**
     * Gets array of all "RegistryPackage" elements
     */
    public arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.RegistryPackageType[] getRegistryPackageArray()
    {
        synchronized (monitor())
        {
            check_orphaned();
            java.util.List targetList = new java.util.ArrayList();
            get_store().find_all_element_users(REGISTRYPACKAGE$6, targetList);
            arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.RegistryPackageType[] result = new arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.RegistryPackageType[targetList.size()];
            targetList.toArray(result);
            return result;
        }
    }
    
    /**
     * Gets ith "RegistryPackage" element
     */
    public arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.RegistryPackageType getRegistryPackageArray(int i)
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.RegistryPackageType target = null;
            target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.RegistryPackageType)get_store().find_element_user(REGISTRYPACKAGE$6, i);
            if (target == null)
            {
                throw new IndexOutOfBoundsException();
            }
            return target;
        }
    }
    
    /**
     * Returns number of "RegistryPackage" element
     */
    public int sizeOfRegistryPackageArray()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().count_elements(REGISTRYPACKAGE$6);
        }
    }
    
    /**
     * Sets array of all "RegistryPackage" element  WARNING: This method is not atomicaly synchronized.
     */
    public void setRegistryPackageArray(arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.RegistryPackageType[] registryPackageArray)
    {
        check_orphaned();
        arraySetterHelper(registryPackageArray, REGISTRYPACKAGE$6);
    }
    
    /**
     * Sets ith "RegistryPackage" element
     */
    public void setRegistryPackageArray(int i, arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.RegistryPackageType registryPackage)
    {
        generatedSetterHelperImpl(registryPackage, REGISTRYPACKAGE$6, i, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_ARRAYITEM);
    }
    
    /**
     * Inserts and returns a new empty value (as xml) as the ith "RegistryPackage" element
     */
    public arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.RegistryPackageType insertNewRegistryPackage(int i)
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.RegistryPackageType target = null;
            target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.RegistryPackageType)get_store().insert_element_user(REGISTRYPACKAGE$6, i);
            return target;
        }
    }
    
    /**
     * Appends and returns a new empty value (as xml) as the last "RegistryPackage" element
     */
    public arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.RegistryPackageType addNewRegistryPackage()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.RegistryPackageType target = null;
            target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.RegistryPackageType)get_store().add_element_user(REGISTRYPACKAGE$6);
            return target;
        }
    }
    
    /**
     * Removes the ith "RegistryPackage" element
     */
    public void removeRegistryPackage(int i)
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_element(REGISTRYPACKAGE$6, i);
        }
    }
    
    /**
     * Gets array of all "Association" elements
     */
    public arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.AssociationType1[] getAssociationArray()
    {
        synchronized (monitor())
        {
            check_orphaned();
            java.util.List targetList = new java.util.ArrayList();
            get_store().find_all_element_users(ASSOCIATION$8, targetList);
            arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.AssociationType1[] result = new arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.AssociationType1[targetList.size()];
            targetList.toArray(result);
            return result;
        }
    }
    
    /**
     * Gets ith "Association" element
     */
    public arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.AssociationType1 getAssociationArray(int i)
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.AssociationType1 target = null;
            target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.AssociationType1)get_store().find_element_user(ASSOCIATION$8, i);
            if (target == null)
            {
                throw new IndexOutOfBoundsException();
            }
            return target;
        }
    }
    
    /**
     * Returns number of "Association" element
     */
    public int sizeOfAssociationArray()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().count_elements(ASSOCIATION$8);
        }
    }
    
    /**
     * Sets array of all "Association" element  WARNING: This method is not atomicaly synchronized.
     */
    public void setAssociationArray(arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.AssociationType1[] associationArray)
    {
        check_orphaned();
        arraySetterHelper(associationArray, ASSOCIATION$8);
    }
    
    /**
     * Sets ith "Association" element
     */
    public void setAssociationArray(int i, arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.AssociationType1 association)
    {
        generatedSetterHelperImpl(association, ASSOCIATION$8, i, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_ARRAYITEM);
    }
    
    /**
     * Inserts and returns a new empty value (as xml) as the ith "Association" element
     */
    public arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.AssociationType1 insertNewAssociation(int i)
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.AssociationType1 target = null;
            target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.AssociationType1)get_store().insert_element_user(ASSOCIATION$8, i);
            return target;
        }
    }
    
    /**
     * Appends and returns a new empty value (as xml) as the last "Association" element
     */
    public arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.AssociationType1 addNewAssociation()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.AssociationType1 target = null;
            target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.AssociationType1)get_store().add_element_user(ASSOCIATION$8);
            return target;
        }
    }
    
    /**
     * Removes the ith "Association" element
     */
    public void removeAssociation(int i)
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_element(ASSOCIATION$8, i);
        }
    }
}

/*
 * XML Type:  ClassificationNodeType
 * Namespace: urn:oasis:names:tc:ebxml-regrep:xsd:rim:3.0
 * Java type: arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ClassificationNodeType
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.impl;
/**
 * An XML ClassificationNodeType(@urn:oasis:names:tc:ebxml-regrep:xsd:rim:3.0).
 *
 * This is a complex type.
 */
public class ClassificationNodeTypeImpl extends arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.impl.RegistryObjectTypeImpl implements arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ClassificationNodeType
{
    private static final long serialVersionUID = 1L;
    
    public ClassificationNodeTypeImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName CLASSIFICATIONNODE$0 = 
        new javax.xml.namespace.QName("urn:oasis:names:tc:ebxml-regrep:xsd:rim:3.0", "ClassificationNode");
    private static final javax.xml.namespace.QName PARENT$2 = 
        new javax.xml.namespace.QName("", "parent");
    private static final javax.xml.namespace.QName CODE$4 = 
        new javax.xml.namespace.QName("", "code");
    private static final javax.xml.namespace.QName PATH$6 = 
        new javax.xml.namespace.QName("", "path");
    
    
    /**
     * Gets array of all "ClassificationNode" elements
     */
    public arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ClassificationNodeType[] getClassificationNodeArray()
    {
        synchronized (monitor())
        {
            check_orphaned();
            java.util.List targetList = new java.util.ArrayList();
            get_store().find_all_element_users(CLASSIFICATIONNODE$0, targetList);
            arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ClassificationNodeType[] result = new arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ClassificationNodeType[targetList.size()];
            targetList.toArray(result);
            return result;
        }
    }
    
    /**
     * Gets ith "ClassificationNode" element
     */
    public arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ClassificationNodeType getClassificationNodeArray(int i)
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ClassificationNodeType target = null;
            target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ClassificationNodeType)get_store().find_element_user(CLASSIFICATIONNODE$0, i);
            if (target == null)
            {
                throw new IndexOutOfBoundsException();
            }
            return target;
        }
    }
    
    /**
     * Returns number of "ClassificationNode" element
     */
    public int sizeOfClassificationNodeArray()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().count_elements(CLASSIFICATIONNODE$0);
        }
    }
    
    /**
     * Sets array of all "ClassificationNode" element  WARNING: This method is not atomicaly synchronized.
     */
    public void setClassificationNodeArray(arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ClassificationNodeType[] classificationNodeArray)
    {
        check_orphaned();
        arraySetterHelper(classificationNodeArray, CLASSIFICATIONNODE$0);
    }
    
    /**
     * Sets ith "ClassificationNode" element
     */
    public void setClassificationNodeArray(int i, arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ClassificationNodeType classificationNode)
    {
        generatedSetterHelperImpl(classificationNode, CLASSIFICATIONNODE$0, i, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_ARRAYITEM);
    }
    
    /**
     * Inserts and returns a new empty value (as xml) as the ith "ClassificationNode" element
     */
    public arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ClassificationNodeType insertNewClassificationNode(int i)
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ClassificationNodeType target = null;
            target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ClassificationNodeType)get_store().insert_element_user(CLASSIFICATIONNODE$0, i);
            return target;
        }
    }
    
    /**
     * Appends and returns a new empty value (as xml) as the last "ClassificationNode" element
     */
    public arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ClassificationNodeType addNewClassificationNode()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ClassificationNodeType target = null;
            target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ClassificationNodeType)get_store().add_element_user(CLASSIFICATIONNODE$0);
            return target;
        }
    }
    
    /**
     * Removes the ith "ClassificationNode" element
     */
    public void removeClassificationNode(int i)
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_element(CLASSIFICATIONNODE$0, i);
        }
    }
    
    /**
     * Gets the "parent" attribute
     */
    public java.lang.String getParent()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(PARENT$2);
            if (target == null)
            {
                return null;
            }
            return target.getStringValue();
        }
    }
    
    /**
     * Gets (as xml) the "parent" attribute
     */
    public arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI xgetParent()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI target = null;
            target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI)get_store().find_attribute_user(PARENT$2);
            return target;
        }
    }
    
    /**
     * True if has "parent" attribute
     */
    public boolean isSetParent()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().find_attribute_user(PARENT$2) != null;
        }
    }
    
    /**
     * Sets the "parent" attribute
     */
    public void setParent(java.lang.String parent)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(PARENT$2);
            if (target == null)
            {
                target = (org.apache.xmlbeans.SimpleValue)get_store().add_attribute_user(PARENT$2);
            }
            target.setStringValue(parent);
        }
    }
    
    /**
     * Sets (as xml) the "parent" attribute
     */
    public void xsetParent(arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI parent)
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI target = null;
            target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI)get_store().find_attribute_user(PARENT$2);
            if (target == null)
            {
                target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI)get_store().add_attribute_user(PARENT$2);
            }
            target.set(parent);
        }
    }
    
    /**
     * Unsets the "parent" attribute
     */
    public void unsetParent()
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_attribute(PARENT$2);
        }
    }
    
    /**
     * Gets the "code" attribute
     */
    public java.lang.String getCode()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(CODE$4);
            if (target == null)
            {
                return null;
            }
            return target.getStringValue();
        }
    }
    
    /**
     * Gets (as xml) the "code" attribute
     */
    public arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.LongName xgetCode()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.LongName target = null;
            target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.LongName)get_store().find_attribute_user(CODE$4);
            return target;
        }
    }
    
    /**
     * True if has "code" attribute
     */
    public boolean isSetCode()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().find_attribute_user(CODE$4) != null;
        }
    }
    
    /**
     * Sets the "code" attribute
     */
    public void setCode(java.lang.String code)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(CODE$4);
            if (target == null)
            {
                target = (org.apache.xmlbeans.SimpleValue)get_store().add_attribute_user(CODE$4);
            }
            target.setStringValue(code);
        }
    }
    
    /**
     * Sets (as xml) the "code" attribute
     */
    public void xsetCode(arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.LongName code)
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.LongName target = null;
            target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.LongName)get_store().find_attribute_user(CODE$4);
            if (target == null)
            {
                target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.LongName)get_store().add_attribute_user(CODE$4);
            }
            target.set(code);
        }
    }
    
    /**
     * Unsets the "code" attribute
     */
    public void unsetCode()
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_attribute(CODE$4);
        }
    }
    
    /**
     * Gets the "path" attribute
     */
    public java.lang.String getPath()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(PATH$6);
            if (target == null)
            {
                return null;
            }
            return target.getStringValue();
        }
    }
    
    /**
     * Gets (as xml) the "path" attribute
     */
    public org.apache.xmlbeans.XmlString xgetPath()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.XmlString target = null;
            target = (org.apache.xmlbeans.XmlString)get_store().find_attribute_user(PATH$6);
            return target;
        }
    }
    
    /**
     * True if has "path" attribute
     */
    public boolean isSetPath()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().find_attribute_user(PATH$6) != null;
        }
    }
    
    /**
     * Sets the "path" attribute
     */
    public void setPath(java.lang.String path)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(PATH$6);
            if (target == null)
            {
                target = (org.apache.xmlbeans.SimpleValue)get_store().add_attribute_user(PATH$6);
            }
            target.setStringValue(path);
        }
    }
    
    /**
     * Sets (as xml) the "path" attribute
     */
    public void xsetPath(org.apache.xmlbeans.XmlString path)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.XmlString target = null;
            target = (org.apache.xmlbeans.XmlString)get_store().find_attribute_user(PATH$6);
            if (target == null)
            {
                target = (org.apache.xmlbeans.XmlString)get_store().add_attribute_user(PATH$6);
            }
            target.set(path);
        }
    }
    
    /**
     * Unsets the "path" attribute
     */
    public void unsetPath()
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_attribute(PATH$6);
        }
    }
}

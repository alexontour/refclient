/*
 * XML Type:  ClassificationType
 * Namespace: urn:oasis:names:tc:ebxml-regrep:xsd:rim:3.0
 * Java type: arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ClassificationType
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.impl;
/**
 * An XML ClassificationType(@urn:oasis:names:tc:ebxml-regrep:xsd:rim:3.0).
 *
 * This is a complex type.
 */
public class ClassificationTypeImpl extends arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.impl.RegistryObjectTypeImpl implements arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ClassificationType
{
    private static final long serialVersionUID = 1L;
    
    public ClassificationTypeImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName CLASSIFICATIONSCHEME$0 = 
        new javax.xml.namespace.QName("", "classificationScheme");
    private static final javax.xml.namespace.QName CLASSIFIEDOBJECT$2 = 
        new javax.xml.namespace.QName("", "classifiedObject");
    private static final javax.xml.namespace.QName CLASSIFICATIONNODE$4 = 
        new javax.xml.namespace.QName("", "classificationNode");
    private static final javax.xml.namespace.QName NODEREPRESENTATION$6 = 
        new javax.xml.namespace.QName("", "nodeRepresentation");
    
    
    /**
     * Gets the "classificationScheme" attribute
     */
    public java.lang.String getClassificationScheme()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(CLASSIFICATIONSCHEME$0);
            if (target == null)
            {
                return null;
            }
            return target.getStringValue();
        }
    }
    
    /**
     * Gets (as xml) the "classificationScheme" attribute
     */
    public arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI xgetClassificationScheme()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI target = null;
            target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI)get_store().find_attribute_user(CLASSIFICATIONSCHEME$0);
            return target;
        }
    }
    
    /**
     * True if has "classificationScheme" attribute
     */
    public boolean isSetClassificationScheme()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().find_attribute_user(CLASSIFICATIONSCHEME$0) != null;
        }
    }
    
    /**
     * Sets the "classificationScheme" attribute
     */
    public void setClassificationScheme(java.lang.String classificationScheme)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(CLASSIFICATIONSCHEME$0);
            if (target == null)
            {
                target = (org.apache.xmlbeans.SimpleValue)get_store().add_attribute_user(CLASSIFICATIONSCHEME$0);
            }
            target.setStringValue(classificationScheme);
        }
    }
    
    /**
     * Sets (as xml) the "classificationScheme" attribute
     */
    public void xsetClassificationScheme(arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI classificationScheme)
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI target = null;
            target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI)get_store().find_attribute_user(CLASSIFICATIONSCHEME$0);
            if (target == null)
            {
                target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI)get_store().add_attribute_user(CLASSIFICATIONSCHEME$0);
            }
            target.set(classificationScheme);
        }
    }
    
    /**
     * Unsets the "classificationScheme" attribute
     */
    public void unsetClassificationScheme()
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_attribute(CLASSIFICATIONSCHEME$0);
        }
    }
    
    /**
     * Gets the "classifiedObject" attribute
     */
    public java.lang.String getClassifiedObject()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(CLASSIFIEDOBJECT$2);
            if (target == null)
            {
                return null;
            }
            return target.getStringValue();
        }
    }
    
    /**
     * Gets (as xml) the "classifiedObject" attribute
     */
    public arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI xgetClassifiedObject()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI target = null;
            target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI)get_store().find_attribute_user(CLASSIFIEDOBJECT$2);
            return target;
        }
    }
    
    /**
     * Sets the "classifiedObject" attribute
     */
    public void setClassifiedObject(java.lang.String classifiedObject)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(CLASSIFIEDOBJECT$2);
            if (target == null)
            {
                target = (org.apache.xmlbeans.SimpleValue)get_store().add_attribute_user(CLASSIFIEDOBJECT$2);
            }
            target.setStringValue(classifiedObject);
        }
    }
    
    /**
     * Sets (as xml) the "classifiedObject" attribute
     */
    public void xsetClassifiedObject(arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI classifiedObject)
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI target = null;
            target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI)get_store().find_attribute_user(CLASSIFIEDOBJECT$2);
            if (target == null)
            {
                target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI)get_store().add_attribute_user(CLASSIFIEDOBJECT$2);
            }
            target.set(classifiedObject);
        }
    }
    
    /**
     * Gets the "classificationNode" attribute
     */
    public java.lang.String getClassificationNode()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(CLASSIFICATIONNODE$4);
            if (target == null)
            {
                return null;
            }
            return target.getStringValue();
        }
    }
    
    /**
     * Gets (as xml) the "classificationNode" attribute
     */
    public arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI xgetClassificationNode()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI target = null;
            target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI)get_store().find_attribute_user(CLASSIFICATIONNODE$4);
            return target;
        }
    }
    
    /**
     * True if has "classificationNode" attribute
     */
    public boolean isSetClassificationNode()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().find_attribute_user(CLASSIFICATIONNODE$4) != null;
        }
    }
    
    /**
     * Sets the "classificationNode" attribute
     */
    public void setClassificationNode(java.lang.String classificationNode)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(CLASSIFICATIONNODE$4);
            if (target == null)
            {
                target = (org.apache.xmlbeans.SimpleValue)get_store().add_attribute_user(CLASSIFICATIONNODE$4);
            }
            target.setStringValue(classificationNode);
        }
    }
    
    /**
     * Sets (as xml) the "classificationNode" attribute
     */
    public void xsetClassificationNode(arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI classificationNode)
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI target = null;
            target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI)get_store().find_attribute_user(CLASSIFICATIONNODE$4);
            if (target == null)
            {
                target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ReferenceURI)get_store().add_attribute_user(CLASSIFICATIONNODE$4);
            }
            target.set(classificationNode);
        }
    }
    
    /**
     * Unsets the "classificationNode" attribute
     */
    public void unsetClassificationNode()
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_attribute(CLASSIFICATIONNODE$4);
        }
    }
    
    /**
     * Gets the "nodeRepresentation" attribute
     */
    public java.lang.String getNodeRepresentation()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(NODEREPRESENTATION$6);
            if (target == null)
            {
                return null;
            }
            return target.getStringValue();
        }
    }
    
    /**
     * Gets (as xml) the "nodeRepresentation" attribute
     */
    public arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.LongName xgetNodeRepresentation()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.LongName target = null;
            target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.LongName)get_store().find_attribute_user(NODEREPRESENTATION$6);
            return target;
        }
    }
    
    /**
     * True if has "nodeRepresentation" attribute
     */
    public boolean isSetNodeRepresentation()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().find_attribute_user(NODEREPRESENTATION$6) != null;
        }
    }
    
    /**
     * Sets the "nodeRepresentation" attribute
     */
    public void setNodeRepresentation(java.lang.String nodeRepresentation)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(NODEREPRESENTATION$6);
            if (target == null)
            {
                target = (org.apache.xmlbeans.SimpleValue)get_store().add_attribute_user(NODEREPRESENTATION$6);
            }
            target.setStringValue(nodeRepresentation);
        }
    }
    
    /**
     * Sets (as xml) the "nodeRepresentation" attribute
     */
    public void xsetNodeRepresentation(arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.LongName nodeRepresentation)
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.LongName target = null;
            target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.LongName)get_store().find_attribute_user(NODEREPRESENTATION$6);
            if (target == null)
            {
                target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.LongName)get_store().add_attribute_user(NODEREPRESENTATION$6);
            }
            target.set(nodeRepresentation);
        }
    }
    
    /**
     * Unsets the "nodeRepresentation" attribute
     */
    public void unsetNodeRepresentation()
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_attribute(NODEREPRESENTATION$6);
        }
    }
}

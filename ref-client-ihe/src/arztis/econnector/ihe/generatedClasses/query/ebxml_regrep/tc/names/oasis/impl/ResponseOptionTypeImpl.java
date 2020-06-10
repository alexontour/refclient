/*
 * XML Type:  ResponseOptionType
 * Namespace: urn:oasis:names:tc:ebxml-regrep:xsd:query:3.0
 * Java type: arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ResponseOptionType
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.impl;
/**
 * An XML ResponseOptionType(@urn:oasis:names:tc:ebxml-regrep:xsd:query:3.0).
 *
 * This is a complex type.
 */
public class ResponseOptionTypeImpl extends org.apache.xmlbeans.impl.values.XmlComplexContentImpl implements arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ResponseOptionType
{
    private static final long serialVersionUID = 1L;
    
    public ResponseOptionTypeImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName RETURNTYPE$0 = 
        new javax.xml.namespace.QName("", "returnType");
    private static final javax.xml.namespace.QName RETURNCOMPOSEDOBJECTS$2 = 
        new javax.xml.namespace.QName("", "returnComposedObjects");
    
    
    /**
     * Gets the "returnType" attribute
     */
    public arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ResponseOptionType.ReturnType.Enum getReturnType()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(RETURNTYPE$0);
            if (target == null)
            {
                target = (org.apache.xmlbeans.SimpleValue)get_default_attribute_value(RETURNTYPE$0);
            }
            if (target == null)
            {
                return null;
            }
            return (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ResponseOptionType.ReturnType.Enum)target.getEnumValue();
        }
    }
    
    /**
     * Gets (as xml) the "returnType" attribute
     */
    public arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ResponseOptionType.ReturnType xgetReturnType()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ResponseOptionType.ReturnType target = null;
            target = (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ResponseOptionType.ReturnType)get_store().find_attribute_user(RETURNTYPE$0);
            if (target == null)
            {
                target = (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ResponseOptionType.ReturnType)get_default_attribute_value(RETURNTYPE$0);
            }
            return target;
        }
    }
    
    /**
     * True if has "returnType" attribute
     */
    public boolean isSetReturnType()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().find_attribute_user(RETURNTYPE$0) != null;
        }
    }
    
    /**
     * Sets the "returnType" attribute
     */
    public void setReturnType(arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ResponseOptionType.ReturnType.Enum returnType)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(RETURNTYPE$0);
            if (target == null)
            {
                target = (org.apache.xmlbeans.SimpleValue)get_store().add_attribute_user(RETURNTYPE$0);
            }
            target.setEnumValue(returnType);
        }
    }
    
    /**
     * Sets (as xml) the "returnType" attribute
     */
    public void xsetReturnType(arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ResponseOptionType.ReturnType returnType)
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ResponseOptionType.ReturnType target = null;
            target = (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ResponseOptionType.ReturnType)get_store().find_attribute_user(RETURNTYPE$0);
            if (target == null)
            {
                target = (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ResponseOptionType.ReturnType)get_store().add_attribute_user(RETURNTYPE$0);
            }
            target.set(returnType);
        }
    }
    
    /**
     * Unsets the "returnType" attribute
     */
    public void unsetReturnType()
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_attribute(RETURNTYPE$0);
        }
    }
    
    /**
     * Gets the "returnComposedObjects" attribute
     */
    public boolean getReturnComposedObjects()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(RETURNCOMPOSEDOBJECTS$2);
            if (target == null)
            {
                target = (org.apache.xmlbeans.SimpleValue)get_default_attribute_value(RETURNCOMPOSEDOBJECTS$2);
            }
            if (target == null)
            {
                return false;
            }
            return target.getBooleanValue();
        }
    }
    
    /**
     * Gets (as xml) the "returnComposedObjects" attribute
     */
    public org.apache.xmlbeans.XmlBoolean xgetReturnComposedObjects()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.XmlBoolean target = null;
            target = (org.apache.xmlbeans.XmlBoolean)get_store().find_attribute_user(RETURNCOMPOSEDOBJECTS$2);
            if (target == null)
            {
                target = (org.apache.xmlbeans.XmlBoolean)get_default_attribute_value(RETURNCOMPOSEDOBJECTS$2);
            }
            return target;
        }
    }
    
    /**
     * True if has "returnComposedObjects" attribute
     */
    public boolean isSetReturnComposedObjects()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().find_attribute_user(RETURNCOMPOSEDOBJECTS$2) != null;
        }
    }
    
    /**
     * Sets the "returnComposedObjects" attribute
     */
    public void setReturnComposedObjects(boolean returnComposedObjects)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(RETURNCOMPOSEDOBJECTS$2);
            if (target == null)
            {
                target = (org.apache.xmlbeans.SimpleValue)get_store().add_attribute_user(RETURNCOMPOSEDOBJECTS$2);
            }
            target.setBooleanValue(returnComposedObjects);
        }
    }
    
    /**
     * Sets (as xml) the "returnComposedObjects" attribute
     */
    public void xsetReturnComposedObjects(org.apache.xmlbeans.XmlBoolean returnComposedObjects)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.XmlBoolean target = null;
            target = (org.apache.xmlbeans.XmlBoolean)get_store().find_attribute_user(RETURNCOMPOSEDOBJECTS$2);
            if (target == null)
            {
                target = (org.apache.xmlbeans.XmlBoolean)get_store().add_attribute_user(RETURNCOMPOSEDOBJECTS$2);
            }
            target.set(returnComposedObjects);
        }
    }
    
    /**
     * Unsets the "returnComposedObjects" attribute
     */
    public void unsetReturnComposedObjects()
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_attribute(RETURNCOMPOSEDOBJECTS$2);
        }
    }
    /**
     * An XML returnType(@).
     *
     * This is an atomic type that is a restriction of arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ResponseOptionType$ReturnType.
     */
    public static class ReturnTypeImpl extends org.apache.xmlbeans.impl.values.JavaStringEnumerationHolderEx implements arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.ResponseOptionType.ReturnType
    {
        private static final long serialVersionUID = 1L;
        
        public ReturnTypeImpl(org.apache.xmlbeans.SchemaType sType)
        {
            super(sType, false);
        }
        
        protected ReturnTypeImpl(org.apache.xmlbeans.SchemaType sType, boolean b)
        {
            super(sType, b);
        }
    }
}

/*
 * XML Type:  SimpleFilterType
 * Namespace: urn:oasis:names:tc:ebxml-regrep:xsd:query:3.0
 * Java type: arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.SimpleFilterType
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.impl;
/**
 * An XML SimpleFilterType(@urn:oasis:names:tc:ebxml-regrep:xsd:query:3.0).
 *
 * This is a complex type.
 */
public class SimpleFilterTypeImpl extends arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.impl.FilterTypeImpl implements arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.SimpleFilterType
{
    private static final long serialVersionUID = 1L;
    
    public SimpleFilterTypeImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName DOMAINATTRIBUTE$0 = 
        new javax.xml.namespace.QName("", "domainAttribute");
    private static final javax.xml.namespace.QName COMPARATOR$2 = 
        new javax.xml.namespace.QName("", "comparator");
    
    
    /**
     * Gets the "domainAttribute" attribute
     */
    public java.lang.String getDomainAttribute()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(DOMAINATTRIBUTE$0);
            if (target == null)
            {
                return null;
            }
            return target.getStringValue();
        }
    }
    
    /**
     * Gets (as xml) the "domainAttribute" attribute
     */
    public org.apache.xmlbeans.XmlString xgetDomainAttribute()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.XmlString target = null;
            target = (org.apache.xmlbeans.XmlString)get_store().find_attribute_user(DOMAINATTRIBUTE$0);
            return target;
        }
    }
    
    /**
     * Sets the "domainAttribute" attribute
     */
    public void setDomainAttribute(java.lang.String domainAttribute)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(DOMAINATTRIBUTE$0);
            if (target == null)
            {
                target = (org.apache.xmlbeans.SimpleValue)get_store().add_attribute_user(DOMAINATTRIBUTE$0);
            }
            target.setStringValue(domainAttribute);
        }
    }
    
    /**
     * Sets (as xml) the "domainAttribute" attribute
     */
    public void xsetDomainAttribute(org.apache.xmlbeans.XmlString domainAttribute)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.XmlString target = null;
            target = (org.apache.xmlbeans.XmlString)get_store().find_attribute_user(DOMAINATTRIBUTE$0);
            if (target == null)
            {
                target = (org.apache.xmlbeans.XmlString)get_store().add_attribute_user(DOMAINATTRIBUTE$0);
            }
            target.set(domainAttribute);
        }
    }
    
    /**
     * Gets the "comparator" attribute
     */
    public arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.SimpleFilterType.Comparator.Enum getComparator()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(COMPARATOR$2);
            if (target == null)
            {
                return null;
            }
            return (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.SimpleFilterType.Comparator.Enum)target.getEnumValue();
        }
    }
    
    /**
     * Gets (as xml) the "comparator" attribute
     */
    public arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.SimpleFilterType.Comparator xgetComparator()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.SimpleFilterType.Comparator target = null;
            target = (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.SimpleFilterType.Comparator)get_store().find_attribute_user(COMPARATOR$2);
            return target;
        }
    }
    
    /**
     * Sets the "comparator" attribute
     */
    public void setComparator(arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.SimpleFilterType.Comparator.Enum comparator)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(COMPARATOR$2);
            if (target == null)
            {
                target = (org.apache.xmlbeans.SimpleValue)get_store().add_attribute_user(COMPARATOR$2);
            }
            target.setEnumValue(comparator);
        }
    }
    
    /**
     * Sets (as xml) the "comparator" attribute
     */
    public void xsetComparator(arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.SimpleFilterType.Comparator comparator)
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.SimpleFilterType.Comparator target = null;
            target = (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.SimpleFilterType.Comparator)get_store().find_attribute_user(COMPARATOR$2);
            if (target == null)
            {
                target = (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.SimpleFilterType.Comparator)get_store().add_attribute_user(COMPARATOR$2);
            }
            target.set(comparator);
        }
    }
    /**
     * An XML comparator(@).
     *
     * This is an atomic type that is a restriction of arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.SimpleFilterType$Comparator.
     */
    public static class ComparatorImpl extends org.apache.xmlbeans.impl.values.JavaStringEnumerationHolderEx implements arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.SimpleFilterType.Comparator
    {
        private static final long serialVersionUID = 1L;
        
        public ComparatorImpl(org.apache.xmlbeans.SchemaType sType)
        {
            super(sType, false);
        }
        
        protected ComparatorImpl(org.apache.xmlbeans.SchemaType sType, boolean b)
        {
            super(sType, b);
        }
    }
}

/*
 * XML Type:  CompoundFilterType
 * Namespace: urn:oasis:names:tc:ebxml-regrep:xsd:query:3.0
 * Java type: arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.CompoundFilterType
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.impl;
/**
 * An XML CompoundFilterType(@urn:oasis:names:tc:ebxml-regrep:xsd:query:3.0).
 *
 * This is a complex type.
 */
public class CompoundFilterTypeImpl extends arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.impl.FilterTypeImpl implements arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.CompoundFilterType
{
    private static final long serialVersionUID = 1L;
    
    public CompoundFilterTypeImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName LEFTFILTER$0 = 
        new javax.xml.namespace.QName("urn:oasis:names:tc:ebxml-regrep:xsd:query:3.0", "LeftFilter");
    private static final javax.xml.namespace.QName RIGHTFILTER$2 = 
        new javax.xml.namespace.QName("urn:oasis:names:tc:ebxml-regrep:xsd:query:3.0", "RightFilter");
    private static final javax.xml.namespace.QName LOGICALOPERATOR$4 = 
        new javax.xml.namespace.QName("", "logicalOperator");
    
    
    /**
     * Gets the "LeftFilter" element
     */
    public arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.FilterType getLeftFilter()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.FilterType target = null;
            target = (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.FilterType)get_store().find_element_user(LEFTFILTER$0, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * Sets the "LeftFilter" element
     */
    public void setLeftFilter(arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.FilterType leftFilter)
    {
        generatedSetterHelperImpl(leftFilter, LEFTFILTER$0, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
    }
    
    /**
     * Appends and returns a new empty "LeftFilter" element
     */
    public arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.FilterType addNewLeftFilter()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.FilterType target = null;
            target = (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.FilterType)get_store().add_element_user(LEFTFILTER$0);
            return target;
        }
    }
    
    /**
     * Gets the "RightFilter" element
     */
    public arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.FilterType getRightFilter()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.FilterType target = null;
            target = (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.FilterType)get_store().find_element_user(RIGHTFILTER$2, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * Sets the "RightFilter" element
     */
    public void setRightFilter(arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.FilterType rightFilter)
    {
        generatedSetterHelperImpl(rightFilter, RIGHTFILTER$2, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
    }
    
    /**
     * Appends and returns a new empty "RightFilter" element
     */
    public arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.FilterType addNewRightFilter()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.FilterType target = null;
            target = (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.FilterType)get_store().add_element_user(RIGHTFILTER$2);
            return target;
        }
    }
    
    /**
     * Gets the "logicalOperator" attribute
     */
    public arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.CompoundFilterType.LogicalOperator.Enum getLogicalOperator()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(LOGICALOPERATOR$4);
            if (target == null)
            {
                return null;
            }
            return (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.CompoundFilterType.LogicalOperator.Enum)target.getEnumValue();
        }
    }
    
    /**
     * Gets (as xml) the "logicalOperator" attribute
     */
    public arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.CompoundFilterType.LogicalOperator xgetLogicalOperator()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.CompoundFilterType.LogicalOperator target = null;
            target = (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.CompoundFilterType.LogicalOperator)get_store().find_attribute_user(LOGICALOPERATOR$4);
            return target;
        }
    }
    
    /**
     * Sets the "logicalOperator" attribute
     */
    public void setLogicalOperator(arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.CompoundFilterType.LogicalOperator.Enum logicalOperator)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(LOGICALOPERATOR$4);
            if (target == null)
            {
                target = (org.apache.xmlbeans.SimpleValue)get_store().add_attribute_user(LOGICALOPERATOR$4);
            }
            target.setEnumValue(logicalOperator);
        }
    }
    
    /**
     * Sets (as xml) the "logicalOperator" attribute
     */
    public void xsetLogicalOperator(arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.CompoundFilterType.LogicalOperator logicalOperator)
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.CompoundFilterType.LogicalOperator target = null;
            target = (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.CompoundFilterType.LogicalOperator)get_store().find_attribute_user(LOGICALOPERATOR$4);
            if (target == null)
            {
                target = (arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.CompoundFilterType.LogicalOperator)get_store().add_attribute_user(LOGICALOPERATOR$4);
            }
            target.set(logicalOperator);
        }
    }
    /**
     * An XML logicalOperator(@).
     *
     * This is an atomic type that is a restriction of arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.CompoundFilterType$LogicalOperator.
     */
    public static class LogicalOperatorImpl extends org.apache.xmlbeans.impl.values.JavaStringEnumerationHolderEx implements arztis.econnector.ihe.generatedClasses.query.ebxml_regrep.tc.names.oasis.CompoundFilterType.LogicalOperator
    {
        private static final long serialVersionUID = 1L;
        
        public LogicalOperatorImpl(org.apache.xmlbeans.SchemaType sType)
        {
            super(sType, false);
        }
        
        protected LogicalOperatorImpl(org.apache.xmlbeans.SchemaType sType, boolean b)
        {
            super(sType, b);
        }
    }
}

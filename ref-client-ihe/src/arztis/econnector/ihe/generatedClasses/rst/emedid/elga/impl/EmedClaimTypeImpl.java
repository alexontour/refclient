/*
 * XML Type:  EmedClaimType
 * Namespace: urn:elga.emedid.rst
 * Java type: arztis.econnector.ihe.generatedClasses.rst.emedid.elga.EmedClaimType
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.rst.emedid.elga.impl;
/**
 * An XML EmedClaimType(@urn:elga.emedid.rst).
 *
 * This is a complex type.
 */
public class EmedClaimTypeImpl extends org.apache.xmlbeans.impl.values.XmlComplexContentImpl implements arztis.econnector.ihe.generatedClasses.rst.emedid.elga.EmedClaimType
{
    private static final long serialVersionUID = 1L;
    
    public EmedClaimTypeImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName EMEDIDROOT$0 = 
        new javax.xml.namespace.QName("urn:elga.emedid.rst", "emedidRoot");
    private static final javax.xml.namespace.QName EMEDIDEXTENSION$2 = 
        new javax.xml.namespace.QName("urn:elga.emedid.rst", "emedidExtension");
    private static final javax.xml.namespace.QName PATIDROOT$4 = 
        new javax.xml.namespace.QName("urn:elga.emedid.rst", "patidRoot");
    private static final javax.xml.namespace.QName PATIDEXTENSION$6 = 
        new javax.xml.namespace.QName("urn:elga.emedid.rst", "patidExtension");
    private static final javax.xml.namespace.QName DIALECT$8 = 
        new javax.xml.namespace.QName("", "Dialect");
    
    
    /**
     * Gets the "emedidRoot" element
     */
    public java.lang.String getEmedidRoot()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_element_user(EMEDIDROOT$0, 0);
            if (target == null)
            {
                return null;
            }
            return target.getStringValue();
        }
    }
    
    /**
     * Gets (as xml) the "emedidRoot" element
     */
    public org.apache.xmlbeans.XmlString xgetEmedidRoot()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.XmlString target = null;
            target = (org.apache.xmlbeans.XmlString)get_store().find_element_user(EMEDIDROOT$0, 0);
            return target;
        }
    }
    
    /**
     * True if has "emedidRoot" element
     */
    public boolean isSetEmedidRoot()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().count_elements(EMEDIDROOT$0) != 0;
        }
    }
    
    /**
     * Sets the "emedidRoot" element
     */
    public void setEmedidRoot(java.lang.String emedidRoot)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_element_user(EMEDIDROOT$0, 0);
            if (target == null)
            {
                target = (org.apache.xmlbeans.SimpleValue)get_store().add_element_user(EMEDIDROOT$0);
            }
            target.setStringValue(emedidRoot);
        }
    }
    
    /**
     * Sets (as xml) the "emedidRoot" element
     */
    public void xsetEmedidRoot(org.apache.xmlbeans.XmlString emedidRoot)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.XmlString target = null;
            target = (org.apache.xmlbeans.XmlString)get_store().find_element_user(EMEDIDROOT$0, 0);
            if (target == null)
            {
                target = (org.apache.xmlbeans.XmlString)get_store().add_element_user(EMEDIDROOT$0);
            }
            target.set(emedidRoot);
        }
    }
    
    /**
     * Unsets the "emedidRoot" element
     */
    public void unsetEmedidRoot()
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_element(EMEDIDROOT$0, 0);
        }
    }
    
    /**
     * Gets the "emedidExtension" element
     */
    public java.lang.String getEmedidExtension()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_element_user(EMEDIDEXTENSION$2, 0);
            if (target == null)
            {
                return null;
            }
            return target.getStringValue();
        }
    }
    
    /**
     * Gets (as xml) the "emedidExtension" element
     */
    public org.apache.xmlbeans.XmlString xgetEmedidExtension()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.XmlString target = null;
            target = (org.apache.xmlbeans.XmlString)get_store().find_element_user(EMEDIDEXTENSION$2, 0);
            return target;
        }
    }
    
    /**
     * True if has "emedidExtension" element
     */
    public boolean isSetEmedidExtension()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().count_elements(EMEDIDEXTENSION$2) != 0;
        }
    }
    
    /**
     * Sets the "emedidExtension" element
     */
    public void setEmedidExtension(java.lang.String emedidExtension)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_element_user(EMEDIDEXTENSION$2, 0);
            if (target == null)
            {
                target = (org.apache.xmlbeans.SimpleValue)get_store().add_element_user(EMEDIDEXTENSION$2);
            }
            target.setStringValue(emedidExtension);
        }
    }
    
    /**
     * Sets (as xml) the "emedidExtension" element
     */
    public void xsetEmedidExtension(org.apache.xmlbeans.XmlString emedidExtension)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.XmlString target = null;
            target = (org.apache.xmlbeans.XmlString)get_store().find_element_user(EMEDIDEXTENSION$2, 0);
            if (target == null)
            {
                target = (org.apache.xmlbeans.XmlString)get_store().add_element_user(EMEDIDEXTENSION$2);
            }
            target.set(emedidExtension);
        }
    }
    
    /**
     * Unsets the "emedidExtension" element
     */
    public void unsetEmedidExtension()
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_element(EMEDIDEXTENSION$2, 0);
        }
    }
    
    /**
     * Gets the "patidRoot" element
     */
    public java.lang.String getPatidRoot()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_element_user(PATIDROOT$4, 0);
            if (target == null)
            {
                return null;
            }
            return target.getStringValue();
        }
    }
    
    /**
     * Gets (as xml) the "patidRoot" element
     */
    public org.apache.xmlbeans.XmlString xgetPatidRoot()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.XmlString target = null;
            target = (org.apache.xmlbeans.XmlString)get_store().find_element_user(PATIDROOT$4, 0);
            return target;
        }
    }
    
    /**
     * True if has "patidRoot" element
     */
    public boolean isSetPatidRoot()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().count_elements(PATIDROOT$4) != 0;
        }
    }
    
    /**
     * Sets the "patidRoot" element
     */
    public void setPatidRoot(java.lang.String patidRoot)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_element_user(PATIDROOT$4, 0);
            if (target == null)
            {
                target = (org.apache.xmlbeans.SimpleValue)get_store().add_element_user(PATIDROOT$4);
            }
            target.setStringValue(patidRoot);
        }
    }
    
    /**
     * Sets (as xml) the "patidRoot" element
     */
    public void xsetPatidRoot(org.apache.xmlbeans.XmlString patidRoot)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.XmlString target = null;
            target = (org.apache.xmlbeans.XmlString)get_store().find_element_user(PATIDROOT$4, 0);
            if (target == null)
            {
                target = (org.apache.xmlbeans.XmlString)get_store().add_element_user(PATIDROOT$4);
            }
            target.set(patidRoot);
        }
    }
    
    /**
     * Unsets the "patidRoot" element
     */
    public void unsetPatidRoot()
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_element(PATIDROOT$4, 0);
        }
    }
    
    /**
     * Gets the "patidExtension" element
     */
    public java.lang.String getPatidExtension()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_element_user(PATIDEXTENSION$6, 0);
            if (target == null)
            {
                return null;
            }
            return target.getStringValue();
        }
    }
    
    /**
     * Gets (as xml) the "patidExtension" element
     */
    public org.apache.xmlbeans.XmlString xgetPatidExtension()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.XmlString target = null;
            target = (org.apache.xmlbeans.XmlString)get_store().find_element_user(PATIDEXTENSION$6, 0);
            return target;
        }
    }
    
    /**
     * True if has "patidExtension" element
     */
    public boolean isSetPatidExtension()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().count_elements(PATIDEXTENSION$6) != 0;
        }
    }
    
    /**
     * Sets the "patidExtension" element
     */
    public void setPatidExtension(java.lang.String patidExtension)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_element_user(PATIDEXTENSION$6, 0);
            if (target == null)
            {
                target = (org.apache.xmlbeans.SimpleValue)get_store().add_element_user(PATIDEXTENSION$6);
            }
            target.setStringValue(patidExtension);
        }
    }
    
    /**
     * Sets (as xml) the "patidExtension" element
     */
    public void xsetPatidExtension(org.apache.xmlbeans.XmlString patidExtension)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.XmlString target = null;
            target = (org.apache.xmlbeans.XmlString)get_store().find_element_user(PATIDEXTENSION$6, 0);
            if (target == null)
            {
                target = (org.apache.xmlbeans.XmlString)get_store().add_element_user(PATIDEXTENSION$6);
            }
            target.set(patidExtension);
        }
    }
    
    /**
     * Unsets the "patidExtension" element
     */
    public void unsetPatidExtension()
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_element(PATIDEXTENSION$6, 0);
        }
    }
    
    /**
     * Gets the "Dialect" attribute
     */
    public java.lang.String getDialect()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(DIALECT$8);
            if (target == null)
            {
                target = (org.apache.xmlbeans.SimpleValue)get_default_attribute_value(DIALECT$8);
            }
            if (target == null)
            {
                return null;
            }
            return target.getStringValue();
        }
    }
    
    /**
     * Gets (as xml) the "Dialect" attribute
     */
    public org.apache.xmlbeans.XmlAnyURI xgetDialect()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.XmlAnyURI target = null;
            target = (org.apache.xmlbeans.XmlAnyURI)get_store().find_attribute_user(DIALECT$8);
            if (target == null)
            {
                target = (org.apache.xmlbeans.XmlAnyURI)get_default_attribute_value(DIALECT$8);
            }
            return target;
        }
    }
    
    /**
     * True if has "Dialect" attribute
     */
    public boolean isSetDialect()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().find_attribute_user(DIALECT$8) != null;
        }
    }
    
    /**
     * Sets the "Dialect" attribute
     */
    public void setDialect(java.lang.String dialect)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(DIALECT$8);
            if (target == null)
            {
                target = (org.apache.xmlbeans.SimpleValue)get_store().add_attribute_user(DIALECT$8);
            }
            target.setStringValue(dialect);
        }
    }
    
    /**
     * Sets (as xml) the "Dialect" attribute
     */
    public void xsetDialect(org.apache.xmlbeans.XmlAnyURI dialect)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.XmlAnyURI target = null;
            target = (org.apache.xmlbeans.XmlAnyURI)get_store().find_attribute_user(DIALECT$8);
            if (target == null)
            {
                target = (org.apache.xmlbeans.XmlAnyURI)get_store().add_attribute_user(DIALECT$8);
            }
            target.set(dialect);
        }
    }
    
    /**
     * Unsets the "Dialect" attribute
     */
    public void unsetDialect()
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_attribute(DIALECT$8);
        }
    }
}

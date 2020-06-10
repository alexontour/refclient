/*
 * XML Type:  Fault
 * Namespace: http://www.w3.org/2003/05/soap-envelope
 * Java type: arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.Fault
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.impl;
/**
 * An XML Fault(@http://www.w3.org/2003/05/soap-envelope).
 *
 * This is a complex type.
 */
public class FaultImpl extends org.apache.xmlbeans.impl.values.XmlComplexContentImpl implements arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.Fault
{
    private static final long serialVersionUID = 1L;
    
    public FaultImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName CODE$0 = 
        new javax.xml.namespace.QName("http://www.w3.org/2003/05/soap-envelope", "Code");
    private static final javax.xml.namespace.QName REASON$2 = 
        new javax.xml.namespace.QName("http://www.w3.org/2003/05/soap-envelope", "Reason");
    private static final javax.xml.namespace.QName NODE$4 = 
        new javax.xml.namespace.QName("http://www.w3.org/2003/05/soap-envelope", "Node");
    private static final javax.xml.namespace.QName ROLE$6 = 
        new javax.xml.namespace.QName("http://www.w3.org/2003/05/soap-envelope", "Role");
    private static final javax.xml.namespace.QName DETAIL$8 = 
        new javax.xml.namespace.QName("http://www.w3.org/2003/05/soap-envelope", "Detail");
    
    
    /**
     * Gets the "Code" element
     */
    public arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.Faultcode getCode()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.Faultcode target = null;
            target = (arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.Faultcode)get_store().find_element_user(CODE$0, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * Sets the "Code" element
     */
    public void setCode(arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.Faultcode code)
    {
        generatedSetterHelperImpl(code, CODE$0, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
    }
    
    /**
     * Appends and returns a new empty "Code" element
     */
    public arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.Faultcode addNewCode()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.Faultcode target = null;
            target = (arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.Faultcode)get_store().add_element_user(CODE$0);
            return target;
        }
    }
    
    /**
     * Gets the "Reason" element
     */
    public arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.Faultreason getReason()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.Faultreason target = null;
            target = (arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.Faultreason)get_store().find_element_user(REASON$2, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * Sets the "Reason" element
     */
    public void setReason(arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.Faultreason reason)
    {
        generatedSetterHelperImpl(reason, REASON$2, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
    }
    
    /**
     * Appends and returns a new empty "Reason" element
     */
    public arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.Faultreason addNewReason()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.Faultreason target = null;
            target = (arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.Faultreason)get_store().add_element_user(REASON$2);
            return target;
        }
    }
    
    /**
     * Gets the "Node" element
     */
    public java.lang.String getNode()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_element_user(NODE$4, 0);
            if (target == null)
            {
                return null;
            }
            return target.getStringValue();
        }
    }
    
    /**
     * Gets (as xml) the "Node" element
     */
    public org.apache.xmlbeans.XmlAnyURI xgetNode()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.XmlAnyURI target = null;
            target = (org.apache.xmlbeans.XmlAnyURI)get_store().find_element_user(NODE$4, 0);
            return target;
        }
    }
    
    /**
     * True if has "Node" element
     */
    public boolean isSetNode()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().count_elements(NODE$4) != 0;
        }
    }
    
    /**
     * Sets the "Node" element
     */
    public void setNode(java.lang.String node)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_element_user(NODE$4, 0);
            if (target == null)
            {
                target = (org.apache.xmlbeans.SimpleValue)get_store().add_element_user(NODE$4);
            }
            target.setStringValue(node);
        }
    }
    
    /**
     * Sets (as xml) the "Node" element
     */
    public void xsetNode(org.apache.xmlbeans.XmlAnyURI node)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.XmlAnyURI target = null;
            target = (org.apache.xmlbeans.XmlAnyURI)get_store().find_element_user(NODE$4, 0);
            if (target == null)
            {
                target = (org.apache.xmlbeans.XmlAnyURI)get_store().add_element_user(NODE$4);
            }
            target.set(node);
        }
    }
    
    /**
     * Unsets the "Node" element
     */
    public void unsetNode()
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_element(NODE$4, 0);
        }
    }
    
    /**
     * Gets the "Role" element
     */
    public java.lang.String getRole()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_element_user(ROLE$6, 0);
            if (target == null)
            {
                return null;
            }
            return target.getStringValue();
        }
    }
    
    /**
     * Gets (as xml) the "Role" element
     */
    public org.apache.xmlbeans.XmlAnyURI xgetRole()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.XmlAnyURI target = null;
            target = (org.apache.xmlbeans.XmlAnyURI)get_store().find_element_user(ROLE$6, 0);
            return target;
        }
    }
    
    /**
     * True if has "Role" element
     */
    public boolean isSetRole()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().count_elements(ROLE$6) != 0;
        }
    }
    
    /**
     * Sets the "Role" element
     */
    public void setRole(java.lang.String role)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_element_user(ROLE$6, 0);
            if (target == null)
            {
                target = (org.apache.xmlbeans.SimpleValue)get_store().add_element_user(ROLE$6);
            }
            target.setStringValue(role);
        }
    }
    
    /**
     * Sets (as xml) the "Role" element
     */
    public void xsetRole(org.apache.xmlbeans.XmlAnyURI role)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.XmlAnyURI target = null;
            target = (org.apache.xmlbeans.XmlAnyURI)get_store().find_element_user(ROLE$6, 0);
            if (target == null)
            {
                target = (org.apache.xmlbeans.XmlAnyURI)get_store().add_element_user(ROLE$6);
            }
            target.set(role);
        }
    }
    
    /**
     * Unsets the "Role" element
     */
    public void unsetRole()
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_element(ROLE$6, 0);
        }
    }
    
    /**
     * Gets the "Detail" element
     */
    public arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.Detail getDetail()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.Detail target = null;
            target = (arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.Detail)get_store().find_element_user(DETAIL$8, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * True if has "Detail" element
     */
    public boolean isSetDetail()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().count_elements(DETAIL$8) != 0;
        }
    }
    
    /**
     * Sets the "Detail" element
     */
    public void setDetail(arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.Detail detail)
    {
        generatedSetterHelperImpl(detail, DETAIL$8, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
    }
    
    /**
     * Appends and returns a new empty "Detail" element
     */
    public arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.Detail addNewDetail()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.Detail target = null;
            target = (arztis.econnector.ihe.generatedClasses.org.w3c.www._2003._05.soap_envelope.Detail)get_store().add_element_user(DETAIL$8);
            return target;
        }
    }
    
    /**
     * Unsets the "Detail" element
     */
    public void unsetDetail()
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_element(DETAIL$8, 0);
        }
    }
}

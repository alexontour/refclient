/*
 * XML Type:  PostalAddressType
 * Namespace: urn:oasis:names:tc:ebxml-regrep:xsd:rim:3.0
 * Java type: arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.PostalAddressType
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.impl;
/**
 * An XML PostalAddressType(@urn:oasis:names:tc:ebxml-regrep:xsd:rim:3.0).
 *
 * This is a complex type.
 */
public class PostalAddressTypeImpl extends org.apache.xmlbeans.impl.values.XmlComplexContentImpl implements arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.PostalAddressType
{
    private static final long serialVersionUID = 1L;
    
    public PostalAddressTypeImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName CITY$0 = 
        new javax.xml.namespace.QName("", "city");
    private static final javax.xml.namespace.QName COUNTRY$2 = 
        new javax.xml.namespace.QName("", "country");
    private static final javax.xml.namespace.QName POSTALCODE$4 = 
        new javax.xml.namespace.QName("", "postalCode");
    private static final javax.xml.namespace.QName STATEORPROVINCE$6 = 
        new javax.xml.namespace.QName("", "stateOrProvince");
    private static final javax.xml.namespace.QName STREET$8 = 
        new javax.xml.namespace.QName("", "street");
    private static final javax.xml.namespace.QName STREETNUMBER$10 = 
        new javax.xml.namespace.QName("", "streetNumber");
    
    
    /**
     * Gets the "city" attribute
     */
    public java.lang.String getCity()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(CITY$0);
            if (target == null)
            {
                return null;
            }
            return target.getStringValue();
        }
    }
    
    /**
     * Gets (as xml) the "city" attribute
     */
    public arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ShortName xgetCity()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ShortName target = null;
            target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ShortName)get_store().find_attribute_user(CITY$0);
            return target;
        }
    }
    
    /**
     * True if has "city" attribute
     */
    public boolean isSetCity()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().find_attribute_user(CITY$0) != null;
        }
    }
    
    /**
     * Sets the "city" attribute
     */
    public void setCity(java.lang.String city)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(CITY$0);
            if (target == null)
            {
                target = (org.apache.xmlbeans.SimpleValue)get_store().add_attribute_user(CITY$0);
            }
            target.setStringValue(city);
        }
    }
    
    /**
     * Sets (as xml) the "city" attribute
     */
    public void xsetCity(arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ShortName city)
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ShortName target = null;
            target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ShortName)get_store().find_attribute_user(CITY$0);
            if (target == null)
            {
                target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ShortName)get_store().add_attribute_user(CITY$0);
            }
            target.set(city);
        }
    }
    
    /**
     * Unsets the "city" attribute
     */
    public void unsetCity()
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_attribute(CITY$0);
        }
    }
    
    /**
     * Gets the "country" attribute
     */
    public java.lang.String getCountry()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(COUNTRY$2);
            if (target == null)
            {
                return null;
            }
            return target.getStringValue();
        }
    }
    
    /**
     * Gets (as xml) the "country" attribute
     */
    public arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ShortName xgetCountry()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ShortName target = null;
            target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ShortName)get_store().find_attribute_user(COUNTRY$2);
            return target;
        }
    }
    
    /**
     * True if has "country" attribute
     */
    public boolean isSetCountry()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().find_attribute_user(COUNTRY$2) != null;
        }
    }
    
    /**
     * Sets the "country" attribute
     */
    public void setCountry(java.lang.String country)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(COUNTRY$2);
            if (target == null)
            {
                target = (org.apache.xmlbeans.SimpleValue)get_store().add_attribute_user(COUNTRY$2);
            }
            target.setStringValue(country);
        }
    }
    
    /**
     * Sets (as xml) the "country" attribute
     */
    public void xsetCountry(arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ShortName country)
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ShortName target = null;
            target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ShortName)get_store().find_attribute_user(COUNTRY$2);
            if (target == null)
            {
                target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ShortName)get_store().add_attribute_user(COUNTRY$2);
            }
            target.set(country);
        }
    }
    
    /**
     * Unsets the "country" attribute
     */
    public void unsetCountry()
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_attribute(COUNTRY$2);
        }
    }
    
    /**
     * Gets the "postalCode" attribute
     */
    public java.lang.String getPostalCode()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(POSTALCODE$4);
            if (target == null)
            {
                return null;
            }
            return target.getStringValue();
        }
    }
    
    /**
     * Gets (as xml) the "postalCode" attribute
     */
    public arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ShortName xgetPostalCode()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ShortName target = null;
            target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ShortName)get_store().find_attribute_user(POSTALCODE$4);
            return target;
        }
    }
    
    /**
     * True if has "postalCode" attribute
     */
    public boolean isSetPostalCode()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().find_attribute_user(POSTALCODE$4) != null;
        }
    }
    
    /**
     * Sets the "postalCode" attribute
     */
    public void setPostalCode(java.lang.String postalCode)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(POSTALCODE$4);
            if (target == null)
            {
                target = (org.apache.xmlbeans.SimpleValue)get_store().add_attribute_user(POSTALCODE$4);
            }
            target.setStringValue(postalCode);
        }
    }
    
    /**
     * Sets (as xml) the "postalCode" attribute
     */
    public void xsetPostalCode(arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ShortName postalCode)
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ShortName target = null;
            target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ShortName)get_store().find_attribute_user(POSTALCODE$4);
            if (target == null)
            {
                target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ShortName)get_store().add_attribute_user(POSTALCODE$4);
            }
            target.set(postalCode);
        }
    }
    
    /**
     * Unsets the "postalCode" attribute
     */
    public void unsetPostalCode()
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_attribute(POSTALCODE$4);
        }
    }
    
    /**
     * Gets the "stateOrProvince" attribute
     */
    public java.lang.String getStateOrProvince()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(STATEORPROVINCE$6);
            if (target == null)
            {
                return null;
            }
            return target.getStringValue();
        }
    }
    
    /**
     * Gets (as xml) the "stateOrProvince" attribute
     */
    public arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ShortName xgetStateOrProvince()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ShortName target = null;
            target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ShortName)get_store().find_attribute_user(STATEORPROVINCE$6);
            return target;
        }
    }
    
    /**
     * True if has "stateOrProvince" attribute
     */
    public boolean isSetStateOrProvince()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().find_attribute_user(STATEORPROVINCE$6) != null;
        }
    }
    
    /**
     * Sets the "stateOrProvince" attribute
     */
    public void setStateOrProvince(java.lang.String stateOrProvince)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(STATEORPROVINCE$6);
            if (target == null)
            {
                target = (org.apache.xmlbeans.SimpleValue)get_store().add_attribute_user(STATEORPROVINCE$6);
            }
            target.setStringValue(stateOrProvince);
        }
    }
    
    /**
     * Sets (as xml) the "stateOrProvince" attribute
     */
    public void xsetStateOrProvince(arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ShortName stateOrProvince)
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ShortName target = null;
            target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ShortName)get_store().find_attribute_user(STATEORPROVINCE$6);
            if (target == null)
            {
                target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ShortName)get_store().add_attribute_user(STATEORPROVINCE$6);
            }
            target.set(stateOrProvince);
        }
    }
    
    /**
     * Unsets the "stateOrProvince" attribute
     */
    public void unsetStateOrProvince()
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_attribute(STATEORPROVINCE$6);
        }
    }
    
    /**
     * Gets the "street" attribute
     */
    public java.lang.String getStreet()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(STREET$8);
            if (target == null)
            {
                return null;
            }
            return target.getStringValue();
        }
    }
    
    /**
     * Gets (as xml) the "street" attribute
     */
    public arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ShortName xgetStreet()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ShortName target = null;
            target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ShortName)get_store().find_attribute_user(STREET$8);
            return target;
        }
    }
    
    /**
     * True if has "street" attribute
     */
    public boolean isSetStreet()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().find_attribute_user(STREET$8) != null;
        }
    }
    
    /**
     * Sets the "street" attribute
     */
    public void setStreet(java.lang.String street)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(STREET$8);
            if (target == null)
            {
                target = (org.apache.xmlbeans.SimpleValue)get_store().add_attribute_user(STREET$8);
            }
            target.setStringValue(street);
        }
    }
    
    /**
     * Sets (as xml) the "street" attribute
     */
    public void xsetStreet(arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ShortName street)
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ShortName target = null;
            target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ShortName)get_store().find_attribute_user(STREET$8);
            if (target == null)
            {
                target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.ShortName)get_store().add_attribute_user(STREET$8);
            }
            target.set(street);
        }
    }
    
    /**
     * Unsets the "street" attribute
     */
    public void unsetStreet()
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_attribute(STREET$8);
        }
    }
    
    /**
     * Gets the "streetNumber" attribute
     */
    public java.lang.String getStreetNumber()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(STREETNUMBER$10);
            if (target == null)
            {
                return null;
            }
            return target.getStringValue();
        }
    }
    
    /**
     * Gets (as xml) the "streetNumber" attribute
     */
    public arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.String32 xgetStreetNumber()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.String32 target = null;
            target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.String32)get_store().find_attribute_user(STREETNUMBER$10);
            return target;
        }
    }
    
    /**
     * True if has "streetNumber" attribute
     */
    public boolean isSetStreetNumber()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().find_attribute_user(STREETNUMBER$10) != null;
        }
    }
    
    /**
     * Sets the "streetNumber" attribute
     */
    public void setStreetNumber(java.lang.String streetNumber)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(STREETNUMBER$10);
            if (target == null)
            {
                target = (org.apache.xmlbeans.SimpleValue)get_store().add_attribute_user(STREETNUMBER$10);
            }
            target.setStringValue(streetNumber);
        }
    }
    
    /**
     * Sets (as xml) the "streetNumber" attribute
     */
    public void xsetStreetNumber(arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.String32 streetNumber)
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.String32 target = null;
            target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.String32)get_store().find_attribute_user(STREETNUMBER$10);
            if (target == null)
            {
                target = (arztis.econnector.ihe.generatedClasses.rim.ebxml_regrep.tc.names.oasis.String32)get_store().add_attribute_user(STREETNUMBER$10);
            }
            target.set(streetNumber);
        }
    }
    
    /**
     * Unsets the "streetNumber" attribute
     */
    public void unsetStreetNumber()
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_attribute(STREETNUMBER$10);
        }
    }
}

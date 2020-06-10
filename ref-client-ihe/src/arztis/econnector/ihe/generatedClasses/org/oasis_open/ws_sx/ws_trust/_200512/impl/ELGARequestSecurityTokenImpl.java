/*
 * XML Type:  ELGARequestSecurityToken
 * Namespace: http://docs.oasis-open.org/ws-sx/ws-trust/200512
 * Java type: arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.ELGARequestSecurityToken
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.impl;
/**
 * An XML ELGARequestSecurityToken(@http://docs.oasis-open.org/ws-sx/ws-trust/200512).
 *
 * This is a complex type.
 */
public class ELGARequestSecurityTokenImpl extends org.apache.xmlbeans.impl.values.XmlComplexContentImpl implements arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.ELGARequestSecurityToken
{
    private static final long serialVersionUID = 1L;
    
    public ELGARequestSecurityTokenImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName TOKENTYPE$0 = 
        new javax.xml.namespace.QName("http://docs.oasis-open.org/ws-sx/ws-trust/200512", "TokenType");
    private static final javax.xml.namespace.QName REQUESTTYPE$2 = 
        new javax.xml.namespace.QName("http://docs.oasis-open.org/ws-sx/ws-trust/200512", "RequestType");
    private static final javax.xml.namespace.QName ELGAREQUESTSECURITYTOKENCHOICE$2 = 
        	new javax.xml.namespace.QName("http://docs.oasis-open.org/ws-sx/ws-trust/200512", "RenewTarget");
    private static final javax.xml.namespace.QName ELGAREQUESTSECURITYTOKENCHOICE$3 = 
    	new javax.xml.namespace.QName("http://docs.oasis-open.org/ws-sx/ws-trust/200512", "CancelTarget");  
    private static final javax.xml.namespace.QName ELGAREQUESTSECURITYTOKENCHOICE$4 = 
        new javax.xml.namespace.QName("http://docs.oasis-open.org/ws-sx/ws-trust/200512", "Claims");
    private static final org.apache.xmlbeans.QNameSet ELGAREQUESTSECURITYTOKENCHOICE$5 = org.apache.xmlbeans.QNameSet.forArray( new javax.xml.namespace.QName[] { 
        new javax.xml.namespace.QName("http://docs.oasis-open.org/ws-sx/ws-trust/200512", "ValidateTarget"),
        new javax.xml.namespace.QName("http://docs.oasis-open.org/ws-sx/ws-trust/200512", "Claims"),
        new javax.xml.namespace.QName("http://docs.oasis-open.org/ws-sx/ws-trust/200512", "ELGARequestSecurityTokenChoice"),
        new javax.xml.namespace.QName("http://docs.oasis-open.org/ws-sx/ws-trust/200512", "RenewTarget"),
        new javax.xml.namespace.QName("http://docs.oasis-open.org/ws-sx/ws-trust/200512", "CancelTarget"),
    });
    private static final javax.xml.namespace.QName CONTEXT$6 = 
        new javax.xml.namespace.QName("", "Context");
    
    
    /**
     * Gets the "TokenType" element
     */
    public arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.ELGAETSTokenTypeType.Enum getTokenType()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_element_user(TOKENTYPE$0, 0);
            if (target == null)
            {
                return null;
            }
            return (arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.ELGAETSTokenTypeType.Enum)target.getEnumValue();
        }
    }
    
    /**
     * Gets (as xml) the "TokenType" element
     */
    public arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.ELGAETSTokenTypeType xgetTokenType()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.ELGAETSTokenTypeType target = null;
            target = (arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.ELGAETSTokenTypeType)get_store().find_element_user(TOKENTYPE$0, 0);
            return target;
        }
    }
    
    /**
     * Tests for nil "TokenType" element
     */
    public boolean isNilTokenType()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.ELGAETSTokenTypeType target = null;
            target = (arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.ELGAETSTokenTypeType)get_store().find_element_user(TOKENTYPE$0, 0);
            if (target == null) return false;
            return target.isNil();
        }
    }
    
    /**
     * Sets the "TokenType" element
     */
    public void setTokenType(arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.ELGAETSTokenTypeType.Enum tokenType)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_element_user(TOKENTYPE$0, 0);
            if (target == null)
            {
                target = (org.apache.xmlbeans.SimpleValue)get_store().add_element_user(TOKENTYPE$0);
            }
            target.setEnumValue(tokenType);
        }
    }
    
    /**
     * Sets (as xml) the "TokenType" element
     */
    public void xsetTokenType(arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.ELGAETSTokenTypeType tokenType)
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.ELGAETSTokenTypeType target = null;
            target = (arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.ELGAETSTokenTypeType)get_store().find_element_user(TOKENTYPE$0, 0);
            if (target == null)
            {
                target = (arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.ELGAETSTokenTypeType)get_store().add_element_user(TOKENTYPE$0);
            }
            target.set(tokenType);
        }
    }
    
    /**
     * Nils the "TokenType" element
     */
    public void setNilTokenType()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.ELGAETSTokenTypeType target = null;
            target = (arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.ELGAETSTokenTypeType)get_store().find_element_user(TOKENTYPE$0, 0);
            if (target == null)
            {
                target = (arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.ELGAETSTokenTypeType)get_store().add_element_user(TOKENTYPE$0);
            }
            target.setNil();
        }
    }
    
    /**
     * Gets the "RequestType" element
     */
    public arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.ELGARequestTypeEnum.Enum getRequestType()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_element_user(REQUESTTYPE$2, 0);
            if (target == null)
            {
                return null;
            }
            return (arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.ELGARequestTypeEnum.Enum)target.getEnumValue();
        }
    }
    
    /**
     * Gets (as xml) the "RequestType" element
     */
    public arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.ELGARequestTypeEnum xgetRequestType()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.ELGARequestTypeEnum target = null;
            target = (arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.ELGARequestTypeEnum)get_store().find_element_user(REQUESTTYPE$2, 0);
            return target;
        }
    }
    
    /**
     * Sets the "RequestType" element
     */
    public void setRequestType(arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.ELGARequestTypeEnum.Enum requestType)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_element_user(REQUESTTYPE$2, 0);
            if (target == null)
            {
                target = (org.apache.xmlbeans.SimpleValue)get_store().add_element_user(REQUESTTYPE$2);
            }
            target.setEnumValue(requestType);
        }
    }
    
    /**
     * Sets (as xml) the "RequestType" element
     */
    public void xsetRequestType(arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.ELGARequestTypeEnum requestType)
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.ELGARequestTypeEnum target = null;
            target = (arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.ELGARequestTypeEnum)get_store().find_element_user(REQUESTTYPE$2, 0);
            if (target == null)
            {
                target = (arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.ELGARequestTypeEnum)get_store().add_element_user(REQUESTTYPE$2);
            }
            target.set(requestType);
        }
    }
    
    /**
     * Gets the "ELGARequestSecurityTokenChoice" element
     */
    public org.apache.xmlbeans.XmlObject getELGARequestSecurityTokenChoice()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.XmlObject target = null;
            target = (org.apache.xmlbeans.XmlObject)get_store().find_element_user(ELGAREQUESTSECURITYTOKENCHOICE$5, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * True if has "ELGARequestSecurityTokenChoice" element
     */
    public boolean isSetELGARequestSecurityTokenChoice()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().count_elements(ELGAREQUESTSECURITYTOKENCHOICE$5) != 0;
        }
    }
    
    /**
     * Sets the "ELGARequestSecurityTokenChoice" element
     */
    public void setELGARequestSecurityTokenChoice(org.apache.xmlbeans.XmlObject elgaRequestSecurityTokenChoice)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.XmlObject target = null;
            target = (org.apache.xmlbeans.XmlObject)get_store().find_element_user(ELGAREQUESTSECURITYTOKENCHOICE$5, 0);
            if (target == null)
            {
            	if(elgaRequestSecurityTokenChoice.getDomNode().getFirstChild().getNodeName().contains("TRID")){
            		target = (org.apache.xmlbeans.XmlObject)get_store().add_element_user(ELGAREQUESTSECURITYTOKENCHOICE$3);
            	} else if(elgaRequestSecurityTokenChoice.getDomNode().getFirstChild().getNodeName().contains("Reference")){
            		target = (org.apache.xmlbeans.XmlObject)get_store().add_element_user(ELGAREQUESTSECURITYTOKENCHOICE$2);
            	}else {
            		target = (org.apache.xmlbeans.XmlObject)get_store().add_element_user(ELGAREQUESTSECURITYTOKENCHOICE$4);
            	}   
            }
            target.set(elgaRequestSecurityTokenChoice);
        }
    }
    
    /**
     * Appends and returns a new empty "ELGARequestSecurityTokenChoice" element
     */
    public org.apache.xmlbeans.XmlObject addNewELGARequestSecurityTokenChoice()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.XmlObject target = null;
            target = (org.apache.xmlbeans.XmlObject)get_store().add_element_user(ELGAREQUESTSECURITYTOKENCHOICE$4);
            return target;
        }
    }
    
    /**
     * Unsets the "ELGARequestSecurityTokenChoice" element
     */
    public void unsetELGARequestSecurityTokenChoice()
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_element(ELGAREQUESTSECURITYTOKENCHOICE$5, 0);
        }
    }
    
    /**
     * Gets the "Context" attribute
     */
    public java.lang.String getContext()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(CONTEXT$6);
            if (target == null)
            {
                return null;
            }
            return target.getStringValue();
        }
    }
    
    /**
     * Gets (as xml) the "Context" attribute
     */
    public org.apache.xmlbeans.XmlAnyURI xgetContext()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.XmlAnyURI target = null;
            target = (org.apache.xmlbeans.XmlAnyURI)get_store().find_attribute_user(CONTEXT$6);
            return target;
        }
    }
    
    /**
     * True if has "Context" attribute
     */
    public boolean isSetContext()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().find_attribute_user(CONTEXT$6) != null;
        }
    }
    
    /**
     * Sets the "Context" attribute
     */
    public void setContext(java.lang.String context)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(CONTEXT$6);
            if (target == null)
            {
                target = (org.apache.xmlbeans.SimpleValue)get_store().add_attribute_user(CONTEXT$6);
            }
            target.setStringValue(context);
        }
    }
    
    /**
     * Sets (as xml) the "Context" attribute
     */
    public void xsetContext(org.apache.xmlbeans.XmlAnyURI context)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.XmlAnyURI target = null;
            target = (org.apache.xmlbeans.XmlAnyURI)get_store().find_attribute_user(CONTEXT$6);
            if (target == null)
            {
                target = (org.apache.xmlbeans.XmlAnyURI)get_store().add_attribute_user(CONTEXT$6);
            }
            target.set(context);
        }
    }
    
    /**
     * Unsets the "Context" attribute
     */
    public void unsetContext()
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_attribute(CONTEXT$6);
        }
    }
}

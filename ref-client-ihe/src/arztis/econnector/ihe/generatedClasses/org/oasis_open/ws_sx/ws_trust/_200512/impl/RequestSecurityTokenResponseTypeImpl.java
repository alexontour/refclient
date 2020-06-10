/*
 * XML Type:  RequestSecurityTokenResponseType
 * Namespace: http://docs.oasis-open.org/ws-sx/ws-trust/200512
 * Java type: arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestSecurityTokenResponseType
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.impl;
/**
 * An XML RequestSecurityTokenResponseType(@http://docs.oasis-open.org/ws-sx/ws-trust/200512).
 *
 * This is a complex type.
 */
public class RequestSecurityTokenResponseTypeImpl extends org.apache.xmlbeans.impl.values.XmlComplexContentImpl implements arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestSecurityTokenResponseType
{
    private static final long serialVersionUID = 1L;
    
    public RequestSecurityTokenResponseTypeImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName TOKENTYPE$0 = 
        new javax.xml.namespace.QName("http://docs.oasis-open.org/ws-sx/ws-trust/200512", "TokenType");
    private static final javax.xml.namespace.QName REQUESTEDSECURITYTOKEN$2 = 
        new javax.xml.namespace.QName("http://docs.oasis-open.org/ws-sx/ws-trust/200512", "RequestedSecurityToken");
    private static final javax.xml.namespace.QName REQUESTEDTOKENCANCELLED$4 = 
        new javax.xml.namespace.QName("http://docs.oasis-open.org/ws-sx/ws-trust/200512", "RequestedTokenCancelled");
    private static final javax.xml.namespace.QName LIFETIME$6 = 
        new javax.xml.namespace.QName("http://docs.oasis-open.org/ws-sx/ws-trust/200512", "Lifetime");
    private static final javax.xml.namespace.QName PATIDROOT$8 = 
        new javax.xml.namespace.QName("urn:elga.emedid.rst", "patidRoot");
    private static final javax.xml.namespace.QName PATIDEXTENSION$10 = 
        new javax.xml.namespace.QName("urn:elga.emedid.rst", "patidExtension");
    private static final javax.xml.namespace.QName CONTEXT$12 = 
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
     * Gets the "RequestedSecurityToken" element
     */
    public arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestedSecurityTokenType getRequestedSecurityToken()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestedSecurityTokenType target = null;
            target = (arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestedSecurityTokenType)get_store().find_element_user(REQUESTEDSECURITYTOKEN$2, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * True if has "RequestedSecurityToken" element
     */
    public boolean isSetRequestedSecurityToken()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().count_elements(REQUESTEDSECURITYTOKEN$2) != 0;
        }
    }
    
    /**
     * Sets the "RequestedSecurityToken" element
     */
    public void setRequestedSecurityToken(arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestedSecurityTokenType requestedSecurityToken)
    {
        generatedSetterHelperImpl(requestedSecurityToken, REQUESTEDSECURITYTOKEN$2, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
    }
    
    /**
     * Appends and returns a new empty "RequestedSecurityToken" element
     */
    public arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestedSecurityTokenType addNewRequestedSecurityToken()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestedSecurityTokenType target = null;
            target = (arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestedSecurityTokenType)get_store().add_element_user(REQUESTEDSECURITYTOKEN$2);
            return target;
        }
    }
    
    /**
     * Unsets the "RequestedSecurityToken" element
     */
    public void unsetRequestedSecurityToken()
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_element(REQUESTEDSECURITYTOKEN$2, 0);
        }
    }
    
    /**
     * Gets the "RequestedTokenCancelled" element
     */
    public java.lang.String getRequestedTokenCancelled()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_element_user(REQUESTEDTOKENCANCELLED$4, 0);
            if (target == null)
            {
                return null;
            }
            return target.getStringValue();
        }
    }
    
    /**
     * Gets (as xml) the "RequestedTokenCancelled" element
     */
    public org.apache.xmlbeans.XmlString xgetRequestedTokenCancelled()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.XmlString target = null;
            target = (org.apache.xmlbeans.XmlString)get_store().find_element_user(REQUESTEDTOKENCANCELLED$4, 0);
            return target;
        }
    }
    
    /**
     * True if has "RequestedTokenCancelled" element
     */
    public boolean isSetRequestedTokenCancelled()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().count_elements(REQUESTEDTOKENCANCELLED$4) != 0;
        }
    }
    
    /**
     * Sets the "RequestedTokenCancelled" element
     */
    public void setRequestedTokenCancelled(java.lang.String requestedTokenCancelled)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.SimpleValue target = null;
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_element_user(REQUESTEDTOKENCANCELLED$4, 0);
            if (target == null)
            {
                target = (org.apache.xmlbeans.SimpleValue)get_store().add_element_user(REQUESTEDTOKENCANCELLED$4);
            }
            target.setStringValue(requestedTokenCancelled);
        }
    }
    
    /**
     * Sets (as xml) the "RequestedTokenCancelled" element
     */
    public void xsetRequestedTokenCancelled(org.apache.xmlbeans.XmlString requestedTokenCancelled)
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.XmlString target = null;
            target = (org.apache.xmlbeans.XmlString)get_store().find_element_user(REQUESTEDTOKENCANCELLED$4, 0);
            if (target == null)
            {
                target = (org.apache.xmlbeans.XmlString)get_store().add_element_user(REQUESTEDTOKENCANCELLED$4);
            }
            target.set(requestedTokenCancelled);
        }
    }
    
    /**
     * Unsets the "RequestedTokenCancelled" element
     */
    public void unsetRequestedTokenCancelled()
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_element(REQUESTEDTOKENCANCELLED$4, 0);
        }
    }
    
    /**
     * Gets the "Lifetime" element
     */
    public arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.LifetimeType getLifetime()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.LifetimeType target = null;
            target = (arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.LifetimeType)get_store().find_element_user(LIFETIME$6, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * True if has "Lifetime" element
     */
    public boolean isSetLifetime()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().count_elements(LIFETIME$6) != 0;
        }
    }
    
    /**
     * Sets the "Lifetime" element
     */
    public void setLifetime(arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.LifetimeType lifetime)
    {
        generatedSetterHelperImpl(lifetime, LIFETIME$6, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
    }
    
    /**
     * Appends and returns a new empty "Lifetime" element
     */
    public arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.LifetimeType addNewLifetime()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.LifetimeType target = null;
            target = (arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.LifetimeType)get_store().add_element_user(LIFETIME$6);
            return target;
        }
    }
    
    /**
     * Unsets the "Lifetime" element
     */
    public void unsetLifetime()
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_element(LIFETIME$6, 0);
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
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_element_user(PATIDROOT$8, 0);
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
            target = (org.apache.xmlbeans.XmlString)get_store().find_element_user(PATIDROOT$8, 0);
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
            return get_store().count_elements(PATIDROOT$8) != 0;
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
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_element_user(PATIDROOT$8, 0);
            if (target == null)
            {
                target = (org.apache.xmlbeans.SimpleValue)get_store().add_element_user(PATIDROOT$8);
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
            target = (org.apache.xmlbeans.XmlString)get_store().find_element_user(PATIDROOT$8, 0);
            if (target == null)
            {
                target = (org.apache.xmlbeans.XmlString)get_store().add_element_user(PATIDROOT$8);
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
            get_store().remove_element(PATIDROOT$8, 0);
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
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_element_user(PATIDEXTENSION$10, 0);
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
            target = (org.apache.xmlbeans.XmlString)get_store().find_element_user(PATIDEXTENSION$10, 0);
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
            return get_store().count_elements(PATIDEXTENSION$10) != 0;
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
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_element_user(PATIDEXTENSION$10, 0);
            if (target == null)
            {
                target = (org.apache.xmlbeans.SimpleValue)get_store().add_element_user(PATIDEXTENSION$10);
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
            target = (org.apache.xmlbeans.XmlString)get_store().find_element_user(PATIDEXTENSION$10, 0);
            if (target == null)
            {
                target = (org.apache.xmlbeans.XmlString)get_store().add_element_user(PATIDEXTENSION$10);
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
            get_store().remove_element(PATIDEXTENSION$10, 0);
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
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(CONTEXT$12);
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
            target = (org.apache.xmlbeans.XmlAnyURI)get_store().find_attribute_user(CONTEXT$12);
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
            return get_store().find_attribute_user(CONTEXT$12) != null;
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
            target = (org.apache.xmlbeans.SimpleValue)get_store().find_attribute_user(CONTEXT$12);
            if (target == null)
            {
                target = (org.apache.xmlbeans.SimpleValue)get_store().add_attribute_user(CONTEXT$12);
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
            target = (org.apache.xmlbeans.XmlAnyURI)get_store().find_attribute_user(CONTEXT$12);
            if (target == null)
            {
                target = (org.apache.xmlbeans.XmlAnyURI)get_store().add_attribute_user(CONTEXT$12);
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
            get_store().remove_attribute(CONTEXT$12);
        }
    }
}

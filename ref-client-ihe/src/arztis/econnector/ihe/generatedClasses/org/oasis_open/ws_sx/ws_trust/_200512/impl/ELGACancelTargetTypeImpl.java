/*
 * XML Type:  ELGACancelTargetType
 * Namespace: http://docs.oasis-open.org/ws-sx/ws-trust/200512
 * Java type: arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.ELGACancelTargetType
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.impl;
/**
 * An XML ELGACancelTargetType(@http://docs.oasis-open.org/ws-sx/ws-trust/200512).
 *
 * This is a complex type.
 */
public class ELGACancelTargetTypeImpl extends org.apache.xmlbeans.impl.values.XmlComplexContentImpl implements arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.ELGACancelTargetType
{
    private static final long serialVersionUID = 1L;
    
    public ELGACancelTargetTypeImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName TRID$0 = 
        new javax.xml.namespace.QName("urn:tiani-spirit:ts", "TRID");
    private static final javax.xml.namespace.QName SECURITYTOKENREFERENCE$2 = 
        new javax.xml.namespace.QName("http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd", "SecurityTokenReference");
    
    
    /**
     * Gets the "TRID" element
     */
    public arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.TRIDType getTRID()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.TRIDType target = null;
            target = (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.TRIDType)get_store().find_element_user(TRID$0, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * True if has "TRID" element
     */
    public boolean isSetTRID()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().count_elements(TRID$0) != 0;
        }
    }
    
    /**
     * Sets the "TRID" element
     */
    public void setTRID(arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.TRIDType trid)
    {
        generatedSetterHelperImpl(trid, TRID$0, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
    }
    
    /**
     * Appends and returns a new empty "TRID" element
     */
    public arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.TRIDType addNewTRID()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.TRIDType target = null;
            target = (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.TRIDType)get_store().add_element_user(TRID$0);
            return target;
        }
    }
    
    /**
     * Unsets the "TRID" element
     */
    public void unsetTRID()
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_element(TRID$0, 0);
        }
    }
    
    /**
     * Gets the "SecurityTokenReference" element
     */
    public arztis.econnector.ihe.generatedClasses.org.oasis_open.docs.wss._2004._01.oasis_200401_wss_wssecurity_secext.SecurityTokenReferenceType getSecurityTokenReference()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.org.oasis_open.docs.wss._2004._01.oasis_200401_wss_wssecurity_secext.SecurityTokenReferenceType target = null;
            target = (arztis.econnector.ihe.generatedClasses.org.oasis_open.docs.wss._2004._01.oasis_200401_wss_wssecurity_secext.SecurityTokenReferenceType)get_store().find_element_user(SECURITYTOKENREFERENCE$2, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * True if has "SecurityTokenReference" element
     */
    public boolean isSetSecurityTokenReference()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().count_elements(SECURITYTOKENREFERENCE$2) != 0;
        }
    }
    
    /**
     * Sets the "SecurityTokenReference" element
     */
    public void setSecurityTokenReference(arztis.econnector.ihe.generatedClasses.org.oasis_open.docs.wss._2004._01.oasis_200401_wss_wssecurity_secext.SecurityTokenReferenceType securityTokenReference)
    {
        generatedSetterHelperImpl(securityTokenReference, SECURITYTOKENREFERENCE$2, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
    }
    
    /**
     * Appends and returns a new empty "SecurityTokenReference" element
     */
    public arztis.econnector.ihe.generatedClasses.org.oasis_open.docs.wss._2004._01.oasis_200401_wss_wssecurity_secext.SecurityTokenReferenceType addNewSecurityTokenReference()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.org.oasis_open.docs.wss._2004._01.oasis_200401_wss_wssecurity_secext.SecurityTokenReferenceType target = null;
            target = (arztis.econnector.ihe.generatedClasses.org.oasis_open.docs.wss._2004._01.oasis_200401_wss_wssecurity_secext.SecurityTokenReferenceType)get_store().add_element_user(SECURITYTOKENREFERENCE$2);
            return target;
        }
    }
    
    /**
     * Unsets the "SecurityTokenReference" element
     */
    public void unsetSecurityTokenReference()
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_element(SECURITYTOKENREFERENCE$2, 0);
        }
    }
}

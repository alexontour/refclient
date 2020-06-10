/*
 * XML Type:  RequestedSecurityTokenType
 * Namespace: http://docs.oasis-open.org/ws-sx/ws-trust/200512
 * Java type: arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestedSecurityTokenType
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.impl;
/**
 * An XML RequestedSecurityTokenType(@http://docs.oasis-open.org/ws-sx/ws-trust/200512).
 *
 * This is a complex type.
 */
public class RequestedSecurityTokenTypeImpl extends org.apache.xmlbeans.impl.values.XmlComplexContentImpl implements arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RequestedSecurityTokenType
{
    private static final long serialVersionUID = 1L;
    
    public RequestedSecurityTokenTypeImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName TRID$0 = 
        new javax.xml.namespace.QName("urn:tiani-spirit:ts", "TRID");
    private static final javax.xml.namespace.QName TR$2 = 
        new javax.xml.namespace.QName("urn:tiani-spirit:ts", "TR");
    private static final javax.xml.namespace.QName GENERATEDPOLICIES$4 = 
        new javax.xml.namespace.QName("urn:tiani-spirit:ts", "GeneratedPolicies");
    private static final javax.xml.namespace.QName ELGATOKEN$6 = 
        new javax.xml.namespace.QName("urn:tiani-spirit:ts", "ElgaToken");
    private static final javax.xml.namespace.QName ASSERTION$8 = 
        new javax.xml.namespace.QName("urn:oasis:names:tc:SAML:2.0:assertion", "Assertion");
    
    
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
     * Gets the "TR" element
     */
    public arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.TRType getTR()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.TRType target = null;
            target = (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.TRType)get_store().find_element_user(TR$2, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * True if has "TR" element
     */
    public boolean isSetTR()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().count_elements(TR$2) != 0;
        }
    }
    
    /**
     * Sets the "TR" element
     */
    public void setTR(arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.TRType tr)
    {
        generatedSetterHelperImpl(tr, TR$2, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
    }
    
    /**
     * Appends and returns a new empty "TR" element
     */
    public arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.TRType addNewTR()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.TRType target = null;
            target = (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.TRType)get_store().add_element_user(TR$2);
            return target;
        }
    }
    
    /**
     * Unsets the "TR" element
     */
    public void unsetTR()
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_element(TR$2, 0);
        }
    }
    
    /**
     * Gets the "GeneratedPolicies" element
     */
    public arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.GeneratedPoliciesType getGeneratedPolicies()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.GeneratedPoliciesType target = null;
            target = (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.GeneratedPoliciesType)get_store().find_element_user(GENERATEDPOLICIES$4, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * True if has "GeneratedPolicies" element
     */
    public boolean isSetGeneratedPolicies()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().count_elements(GENERATEDPOLICIES$4) != 0;
        }
    }
    
    /**
     * Sets the "GeneratedPolicies" element
     */
    public void setGeneratedPolicies(arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.GeneratedPoliciesType generatedPolicies)
    {
        generatedSetterHelperImpl(generatedPolicies, GENERATEDPOLICIES$4, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
    }
    
    /**
     * Appends and returns a new empty "GeneratedPolicies" element
     */
    public arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.GeneratedPoliciesType addNewGeneratedPolicies()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.GeneratedPoliciesType target = null;
            target = (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.GeneratedPoliciesType)get_store().add_element_user(GENERATEDPOLICIES$4);
            return target;
        }
    }
    
    /**
     * Unsets the "GeneratedPolicies" element
     */
    public void unsetGeneratedPolicies()
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_element(GENERATEDPOLICIES$4, 0);
        }
    }
    
    /**
     * Gets the "ElgaToken" element
     */
    public arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ElgaTokenType getElgaToken()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ElgaTokenType target = null;
            target = (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ElgaTokenType)get_store().find_element_user(ELGATOKEN$6, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * True if has "ElgaToken" element
     */
    public boolean isSetElgaToken()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().count_elements(ELGATOKEN$6) != 0;
        }
    }
    
    /**
     * Sets the "ElgaToken" element
     */
    public void setElgaToken(arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ElgaTokenType elgaToken)
    {
        generatedSetterHelperImpl(elgaToken, ELGATOKEN$6, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
    }
    
    /**
     * Appends and returns a new empty "ElgaToken" element
     */
    public arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ElgaTokenType addNewElgaToken()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ElgaTokenType target = null;
            target = (arztis.econnector.ihe.generatedClasses.ts.tiani_spirit.ElgaTokenType)get_store().add_element_user(ELGATOKEN$6);
            return target;
        }
    }
    
    /**
     * Unsets the "ElgaToken" element
     */
    public void unsetElgaToken()
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_element(ELGATOKEN$6, 0);
        }
    }
    
    /**
     * Gets the "Assertion" element
     */
    public arztis.econnector.ihe.generatedClasses.assertion._0._2.saml.tc.names.oasis.AssertionType getAssertion()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.assertion._0._2.saml.tc.names.oasis.AssertionType target = null;
            target = (arztis.econnector.ihe.generatedClasses.assertion._0._2.saml.tc.names.oasis.AssertionType)get_store().find_element_user(ASSERTION$8, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * True if has "Assertion" element
     */
    public boolean isSetAssertion()
    {
        synchronized (monitor())
        {
            check_orphaned();
            return get_store().count_elements(ASSERTION$8) != 0;
        }
    }
    
    /**
     * Sets the "Assertion" element
     */
    public void setAssertion(arztis.econnector.ihe.generatedClasses.assertion._0._2.saml.tc.names.oasis.AssertionType assertion)
    {
        generatedSetterHelperImpl(assertion, ASSERTION$8, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
    }
    
    /**
     * Appends and returns a new empty "Assertion" element
     */
    public arztis.econnector.ihe.generatedClasses.assertion._0._2.saml.tc.names.oasis.AssertionType addNewAssertion()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.assertion._0._2.saml.tc.names.oasis.AssertionType target = null;
            target = (arztis.econnector.ihe.generatedClasses.assertion._0._2.saml.tc.names.oasis.AssertionType)get_store().add_element_user(ASSERTION$8);
            return target;
        }
    }
    
    /**
     * Unsets the "Assertion" element
     */
    public void unsetAssertion()
    {
        synchronized (monitor())
        {
            check_orphaned();
            get_store().remove_element(ASSERTION$8, 0);
        }
    }
}

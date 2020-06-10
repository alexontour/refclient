/*
 * An XML document type.
 * Localname: RenewTarget
 * Namespace: http://docs.oasis-open.org/ws-sx/ws-trust/200512
 * Java type: arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RenewTargetDocument
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.impl;
/**
 * A document containing one RenewTarget(@http://docs.oasis-open.org/ws-sx/ws-trust/200512) element.
 *
 * This is a complex type.
 */
public class RenewTargetDocumentImpl extends arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.impl.ELGARequestSecurityTokenChoiceDocumentImpl implements arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.RenewTargetDocument
{
    private static final long serialVersionUID = 1L;
    
    public RenewTargetDocumentImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName RENEWTARGET$0 = 
        new javax.xml.namespace.QName("http://docs.oasis-open.org/ws-sx/ws-trust/200512", "RenewTarget");
    
    
    /**
     * Gets the "RenewTarget" element
     */
    public arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.EGLARenewTargetType getRenewTarget()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.EGLARenewTargetType target = null;
            target = (arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.EGLARenewTargetType)get_store().find_element_user(RENEWTARGET$0, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * Sets the "RenewTarget" element
     */
    public void setRenewTarget(arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.EGLARenewTargetType renewTarget)
    {
        generatedSetterHelperImpl(renewTarget, RENEWTARGET$0, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
    }
    
    /**
     * Appends and returns a new empty "RenewTarget" element
     */
    public arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.EGLARenewTargetType addNewRenewTarget()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.EGLARenewTargetType target = null;
            target = (arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.EGLARenewTargetType)get_store().add_element_user(RENEWTARGET$0);
            return target;
        }
    }
}

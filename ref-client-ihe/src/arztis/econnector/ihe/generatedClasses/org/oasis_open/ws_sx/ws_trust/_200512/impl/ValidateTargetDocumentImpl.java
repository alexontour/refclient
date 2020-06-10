/*
 * An XML document type.
 * Localname: ValidateTarget
 * Namespace: http://docs.oasis-open.org/ws-sx/ws-trust/200512
 * Java type: arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.ValidateTargetDocument
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.impl;
/**
 * A document containing one ValidateTarget(@http://docs.oasis-open.org/ws-sx/ws-trust/200512) element.
 *
 * This is a complex type.
 */
public class ValidateTargetDocumentImpl extends arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.impl.ELGARequestSecurityTokenChoiceDocumentImpl implements arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.ValidateTargetDocument
{
    private static final long serialVersionUID = 1L;
    
    public ValidateTargetDocumentImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName VALIDATETARGET$0 = 
        new javax.xml.namespace.QName("http://docs.oasis-open.org/ws-sx/ws-trust/200512", "ValidateTarget");
    
    
    /**
     * Gets the "ValidateTarget" element
     */
    public arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.ELGAValidateTarget getValidateTarget()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.ELGAValidateTarget target = null;
            target = (arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.ELGAValidateTarget)get_store().find_element_user(VALIDATETARGET$0, 0);
            if (target == null)
            {
                return null;
            }
            return target;
        }
    }
    
    /**
     * Sets the "ValidateTarget" element
     */
    public void setValidateTarget(arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.ELGAValidateTarget validateTarget)
    {
        generatedSetterHelperImpl(validateTarget, VALIDATETARGET$0, 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);
    }
    
    /**
     * Appends and returns a new empty "ValidateTarget" element
     */
    public arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.ELGAValidateTarget addNewValidateTarget()
    {
        synchronized (monitor())
        {
            check_orphaned();
            arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.ELGAValidateTarget target = null;
            target = (arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.ELGAValidateTarget)get_store().add_element_user(VALIDATETARGET$0);
            return target;
        }
    }
}

/*
 * An XML document type.
 * Localname: ELGARequestSecurityTokenChoice
 * Namespace: http://docs.oasis-open.org/ws-sx/ws-trust/200512
 * Java type: arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.ELGARequestSecurityTokenChoiceDocument
 *
 * Automatically generated - do not modify.
 */
package arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.impl;
/**
 * A document containing one ELGARequestSecurityTokenChoice(@http://docs.oasis-open.org/ws-sx/ws-trust/200512) element.
 *
 * This is a complex type.
 */
public class ELGARequestSecurityTokenChoiceDocumentImpl extends org.apache.xmlbeans.impl.values.XmlComplexContentImpl implements arztis.econnector.ihe.generatedClasses.org.oasis_open.ws_sx.ws_trust._200512.ELGARequestSecurityTokenChoiceDocument
{
    private static final long serialVersionUID = 1L;
    
    public ELGARequestSecurityTokenChoiceDocumentImpl(org.apache.xmlbeans.SchemaType sType)
    {
        super(sType);
    }
    
    private static final javax.xml.namespace.QName ELGAREQUESTSECURITYTOKENCHOICE$0 = 
        new javax.xml.namespace.QName("http://docs.oasis-open.org/ws-sx/ws-trust/200512", "ELGARequestSecurityTokenChoice");
    private static final org.apache.xmlbeans.QNameSet ELGAREQUESTSECURITYTOKENCHOICE$1 = org.apache.xmlbeans.QNameSet.forArray( new javax.xml.namespace.QName[] { 
        new javax.xml.namespace.QName("http://docs.oasis-open.org/ws-sx/ws-trust/200512", "ValidateTarget"),
        new javax.xml.namespace.QName("http://docs.oasis-open.org/ws-sx/ws-trust/200512", "Claims"),
        new javax.xml.namespace.QName("http://docs.oasis-open.org/ws-sx/ws-trust/200512", "ELGARequestSecurityTokenChoice"),
        new javax.xml.namespace.QName("http://docs.oasis-open.org/ws-sx/ws-trust/200512", "RenewTarget"),
        new javax.xml.namespace.QName("http://docs.oasis-open.org/ws-sx/ws-trust/200512", "CancelTarget"),
    });
    
    
    /**
     * Gets the "ELGARequestSecurityTokenChoice" element
     */
    public org.apache.xmlbeans.XmlObject getELGARequestSecurityTokenChoice()
    {
        synchronized (monitor())
        {
            check_orphaned();
            org.apache.xmlbeans.XmlObject target = null;
            target = (org.apache.xmlbeans.XmlObject)get_store().find_element_user(ELGAREQUESTSECURITYTOKENCHOICE$1, 0);
            if (target == null)
            {
                return null;
            }
            return target;
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
            target = (org.apache.xmlbeans.XmlObject)get_store().find_element_user(ELGAREQUESTSECURITYTOKENCHOICE$1, 0);
            if (target == null)
            {
                target = (org.apache.xmlbeans.XmlObject)get_store().add_element_user(ELGAREQUESTSECURITYTOKENCHOICE$0);
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
            target = (org.apache.xmlbeans.XmlObject)get_store().add_element_user(ELGAREQUESTSECURITYTOKENCHOICE$0);
            return target;
        }
    }
}

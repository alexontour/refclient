package arztis.econnector.common;

import java.rmi.RemoteException;

import javax.servlet.http.HttpServletResponse;

import org.apache.axis2.AxisFault;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import arztis.econnector.common.generatedClasses.at.chipkarte.client.auth.soap.AuthServiceStub.AuthenticateDialog;
import arztis.econnector.common.generatedClasses.at.chipkarte.client.auth.soap.AuthServiceStub.AuthenticateDialogE;
import arztis.econnector.common.generatedClasses.at.chipkarte.client.auth.soap.AuthServiceStub.CloseDialog;
import arztis.econnector.common.generatedClasses.at.chipkarte.client.auth.soap.AuthServiceStub.CloseDialogE;
import arztis.econnector.common.generatedClasses.at.chipkarte.client.auth.soap.AuthServiceStub.DialogData;
import arztis.econnector.common.generatedClasses.at.chipkarte.client.auth.soap.AuthServiceStub.GdaMa;
import arztis.econnector.common.generatedClasses.at.chipkarte.client.auth.soap.AuthServiceStub.ProduktInfo;
import arztis.econnector.common.generatedClasses.at.chipkarte.client.auth.soap.AuthServiceStub.SetDialogAddress;
import arztis.econnector.common.generatedClasses.at.chipkarte.client.auth.soap.AuthServiceStub.SetDialogAddressE;
import arztis.econnector.common.generatedClasses.at.chipkarte.client.auth.soap.AuthServiceStub.VertragspartnerV2;
import arztis.econnector.common.generatedClasses.at.chipkarte.client.auth.soap.DialogException;
import arztis.econnector.common.generatedClasses.at.chipkarte.client.auth.soap.ServiceException;
import arztis.econnector.common.generatedClasses.at.chipkarte.client.base.soap.BaseServiceStub.Property;
import arztis.econnector.common.model.Message;
import arztis.econnector.common.model.MessageTypes;
import arztis.econnector.common.model.RegisterParam;
import arztis.econnector.common.utilities.BaseServiceStubPool;
import arztis.econnector.common.utilities.MessageUtil;
import arztis.econnector.common.utilities.SoapUtil;

/**
 * This class includes all around a GINA dialog.
 * 
 * @author anna
 *
 */

public class DialogCreator {
	private static final Logger LOGGER = LoggerFactory.getLogger(DialogCreator.class.getName());
	private static final String EXCEPTION_CODE_LITERAL = "Exception-Code:";

	private String sDialogId = "";
	private VertragspartnerV2 oVertragspartnerInfos = new VertragspartnerV2();
	private GdaMa oGdaMa = null;
	private String sCardReaderId = "";
	private Property[] aStatus = null;

	public String getDialogId() {
		return sDialogId;
	}

	public VertragspartnerV2 getVertragspartnerInfos() {
		return oVertragspartnerInfos;
	}

	public GdaMa getGdaMa() {
		return oGdaMa;
	}

	public String getCardReaderId() {
		return sCardReaderId;
	}

	public Property[] getStatus() {
		return aStatus;
	}

	/**
	 * creates a GINA dialog
	 * 
	 * @param param      register param, which includes all necessary information to
	 *                   register a user such as name and role.
	 * @param pCardToken card token of the used Admin card
	 * @return boolean object, if the registration was successful. Otherwise the
	 *         object is a Message object with the details about the error.
	 */
	public Object createDialog(RegisterParam param, String pCardToken) {
		Object buildDialogReturn = authenticateDialog(pCardToken, param.getProductId(), param.getProductVersion(),
				param.getProducerId());
		if (buildDialogReturn instanceof Boolean && (boolean) buildDialogReturn) {
			GdaMa gdaMa = new GdaMa();
			gdaMa.setNachname(param.getFamilyName());
			gdaMa.setTitelHinten(param.getSuffix());
			gdaMa.setTitelVorne(param.getPrefix());
			gdaMa.setVorname(param.getGivenName());
			gdaMa.setZusatzinfo(param.getInformation());
			return registerGdaMa(gdaMa, param.getRole(), param.getOrdId());
		}

		return buildDialogReturn;
	}

	private Object authenticateDialog(String pCardToken, int productId, String productVersion, String producerId) {
		try {
			ProduktInfo produktInfo = new ProduktInfo();
			produktInfo.setProduktId(productId);
			produktInfo.setProduktVersion(productVersion);
			produktInfo.setHerstellerId(producerId);

			AuthenticateDialogE authenticateDialogE = new AuthenticateDialogE();
			AuthenticateDialog authenticateDialog = new AuthenticateDialog();
			authenticateDialog.setCardToken(pCardToken);
			authenticateDialog.setProduktInfo(produktInfo);
			authenticateDialog.setExtUID(null);
			authenticateDialog.setPushMessageEnabled(true);
			authenticateDialogE.setAuthenticateDialog(authenticateDialog);
			DialogData dialogData = BaseServiceStubPool.getInstance().getAuthServiceStub()
					.authenticateDialog(authenticateDialogE).getAuthenticateDialogResponse().getReturn();
			sDialogId = dialogData.getDialogId();
			oVertragspartnerInfos = dialogData.getVp();
			LOGGER.debug("Dialog is successfully built");
			return true;
		} catch (DialogException ex) {
			LOGGER.error(ex.getFaultMessage().getDialogException().getMessage(), ex);
			return new Message(ex.getFaultMessage().getDialogException().getMessage(), MessageTypes.ERROR,
					HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
		} catch (ServiceException servEx) {
			LOGGER.error(servEx.getFaultMessage().getServiceException().getMessage());
			Message message = new Message(servEx.getFaultMessage().getServiceException().getMessage(),
					MessageTypes.ERROR, HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
			message.setOriginalErrorCode(servEx.getFaultMessage().getServiceException().getErrorCode() + "");

			return message;
		} catch (AxisFault af) {
			String returnMessage = SoapUtil.extractErrorMessageOfAxisFault(af);
			LOGGER.error("Something was going wrong at the authentication of the dialog: ", af);

			return new Message(returnMessage.isEmpty() ? MessageUtil.getMessageFromProperties("CHECK_CARD_READER", null)
					: returnMessage, MessageTypes.ERROR, HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
		} catch (Exception e) {
			LOGGER.error(e.getMessage(), e);
			return new Message(e.getMessage(), MessageTypes.ERROR, HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
		} finally {
			try {
				BaseServiceStubPool.getInstance().getAuthServiceStub()._getServiceClient().cleanupTransport();
			} catch (Exception e) {
				LOGGER.error(e.getMessage(), e);
			}
		}
	}

	/**
	 * registers the employee of the healthcare service provider. This is needed
	 * only for ELGA because the hits of the documents are logged.
	 * 
	 * @param gdaM  generatedClasses.at.chipkarte.client.auth.soap.AuthServiceStub.GdaMa
	 *              details about the real person, which wants to create a GINA
	 *              dialog
	 * @param role  String, which can be 700, 701, 702, 703, 704 </br>
	 *              700 Ärztin/Arzt </br>
	 *              701 Zahnärztin/Zahnarzt </br>
	 *              702 Krankenanstalt </br>
	 *              703 Einrichtung der Pflege </br>
	 *              704 Apotheke</br>
	 *              </br>
	 *              Alle aktuellen Werte können hier entommen werden:
	 *              (https://termpub.gesundheit.gv.at/TermBrowser/gui/main/main.zul?loadType=CodeSystem&loadName=ELGA_GDA_Aggregatrollen)
	 * @param ordId id of the surgery of the healthcare service provider, where the
	 *              employee works
	 * @return boolean, if the authentication was successful, otherwise it returns a
	 *         Message with details about the error
	 */
	public Object registerGdaMa(GdaMa gdaM, String role, String ordId) {
		oGdaMa = gdaM;
		try {
			SetDialogAddressE setDialogAddressE = new SetDialogAddressE();
			SetDialogAddress setDialogAddress = new SetDialogAddress();
			setDialogAddress.setDialogId(sDialogId);
			setDialogAddress.setElgaRolle(role);
			setDialogAddress.setGdaMa(oGdaMa);

			if ((ordId == null || ordId.isEmpty()) && oVertragspartnerInfos != null
					&& oVertragspartnerInfos.getOrdination() != null
					&& oVertragspartnerInfos.getOrdination().length > 0) {
				setDialogAddress.setOrdinationId(oVertragspartnerInfos.getOrdination()[0].getOrdinationId());
			} else {
				setDialogAddress.setOrdinationId(ordId);
			}

			setDialogAddress.setTaetigkeitsBereichId(
					oVertragspartnerInfos.getOrdination()[0].getTaetigkeitsBereich()[0].getId());
			setDialogAddressE.setSetDialogAddress(setDialogAddress);
			BaseServiceStubPool.getInstance().getAuthServiceStub().setDialogAddress(setDialogAddressE);

			LOGGER.debug("Employee of health care provider is successfully registered at the gina client");
		} catch (DialogException ex) {
			LOGGER.error(ex.getFaultMessage().getDialogException().getMessage(), ex);
			return new Message(
					ex.getFaultMessage().getDialogException().getMessage() + " " + EXCEPTION_CODE_LITERAL + " "
							+ +ex.getFaultMessage().getDialogException().getErrorCode(),
					MessageTypes.ERROR, HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
		} catch (ServiceException ex) {
			LOGGER.error(ex.getFaultMessage().getServiceException().getMessage(), ex);
			Message message = new Message(
					ex.getFaultMessage().getServiceException().getMessage() + " " + EXCEPTION_CODE_LITERAL + " "
							+ +ex.getFaultMessage().getServiceException().getErrorCode(),
					MessageTypes.ERROR, HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
			message.setOriginalErrorCode(ex.getFaultMessage().getServiceException().getErrorCode() + "");
			return message;
		} catch (AxisFault af) {
			String returnMessage = SoapUtil.extractErrorMessageOfAxisFault(af);
			LOGGER.error("Something was going wrong when query the subjects by the surgery id: ", af);

			return new Message(returnMessage.isEmpty()
					? MessageUtil.getMessageFromProperties(
							"Something was going wrong when query the subjects by the surgery id: ", null)
					: returnMessage, MessageTypes.ERROR, HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
		} catch (Exception ex) {
			LOGGER.error(ex.getMessage(), ex);
			return new Message(ex.getMessage(), MessageTypes.ERROR, HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
		} finally {
			try {
				BaseServiceStubPool.getInstance().getAuthServiceStub()._getServiceClient().cleanupTransport();
			} catch (Exception e) {
				LOGGER.error(e.getMessage(), e);
			}
		}

		return true;
	}

	/**
	 * closes this GINA dialog
	 * 
	 * @return boolean, if the authentication was successful, otherwise it returns a
	 *         Message with details about the error
	 */
	public Object closeDialog() {
		CloseDialogE closeDialogE = new CloseDialogE();
		CloseDialog closeDialog = new CloseDialog();
		closeDialog.setDialogId(sDialogId);
		closeDialogE.setCloseDialog(closeDialog);
		try {
			BaseServiceStubPool.getInstance().getAuthServiceStub().closeDialog(closeDialogE);
		} catch (RemoteException ex) {
			LOGGER.error(ex.getMessage(), ex);
			return new Message(ex.getMessage(), MessageTypes.ERROR, HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
		} catch (ServiceException ex) {
			LOGGER.error(ex.getFaultMessage().getServiceException().getMessage(), ex);
			return new Message(
					ex.getFaultMessage().getServiceException().getMessage() + " " + EXCEPTION_CODE_LITERAL + " "
							+ +ex.getFaultMessage().getServiceException().getErrorCode(),
					MessageTypes.ERROR, HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
		} catch (DialogException ex) {
			LOGGER.error(ex.getFaultMessage().getDialogException().getMessage(), ex);
			return new Message(
					ex.getFaultMessage().getDialogException().getMessage() + " " + EXCEPTION_CODE_LITERAL + " "
							+ +ex.getFaultMessage().getDialogException().getErrorCode(),
					MessageTypes.ERROR, HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
		} catch (Exception e) {
			LOGGER.error(e.getMessage(), e);
			return new Message(e.getMessage(), MessageTypes.ERROR, HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
		} finally {
			try {
				BaseServiceStubPool.getInstance().getAuthServiceStub()._getServiceClient().cleanupTransport();
			} catch (Exception e) {
				LOGGER.error(e.getMessage(), e);
			}
		}

		return true;
	}
}

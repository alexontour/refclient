/**
 * 
 * Contributors:
 *   ET-Innovations GmbH - initial API and implementation
 * 
 */
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
import arztis.econnector.common.model.Message;
import arztis.econnector.common.model.MessageTypes;
import arztis.econnector.common.model.RegisterParam;
import arztis.econnector.common.utilities.BaseServiceStubPool;
import arztis.econnector.common.utilities.MessageUtil;
import arztis.econnector.common.utilities.SoapUtil;

/**
 * This class includes methods to login and log-off for GINA. Moreover some
 * information about contract partner and real person are stored.
 *
 * @author Anna Jungwirth
 *
 */

public class DialogCreator {

	/** The Constant LOGGER. */
	private static final Logger LOGGER = LoggerFactory.getLogger(DialogCreator.class.getName());

	/** The Constant EXCEPTION_CODE_LITERAL. */
	private static final String EXCEPTION_CODE_LITERAL = "Exception-Code:";

	/** The s dialog id. */
	private String sDialogId = "";

	/** The o vertragspartner infos. */
	private VertragspartnerV2 oVertragspartnerInfos = new VertragspartnerV2();

	/** The o gda ma. */
	private GdaMa oGdaMa = null;

	/** The s card reader id. */
	private String sCardReaderId = "";

	/**
	 * Gets the dialog id.
	 *
	 * @return ID of created dialog
	 */
	public String getDialogId() {
		return sDialogId;
	}

	/**
	 * Gets the information about contract partner.
	 *
	 * @return {@link VertragspartnerV2} with information about contract partner
	 */
	public VertragspartnerV2 getVertragspartnerInfos() {
		return oVertragspartnerInfos;
	}

	/**
	 * Gets the healthcare provider employee.
	 *
	 * @return {@link GdaMa} with information about authenticated real person
	 */
	public GdaMa getGdaMa() {
		return oGdaMa;
	}

	/**
	 * Gets the card reader ID.
	 *
	 * @return ID of card reader, which was used for authentication
	 */
	public String getCardReaderId() {
		return sCardReaderId;
	}

	/**
	 * creates GINA dialog.
	 *
	 * @param param     register parameter, which includes all necessary information
	 *                  to register a user such as name and role.
	 * @param cardToken card token of used Admin-Card
	 * @return boolean, if registration was successful. Otherwise {@link Message}
	 *         with error details is returned.
	 */
	public Object createDialog(RegisterParam param, String cardToken) {
		Object buildDialogReturn = authenticateDialog(cardToken, param.getProductId(), param.getProductVersion(),
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

	/**
	 * This method authenticates contracting partner for GINA.
	 *
	 * @param cardToken      card token of used Admin-Card
	 * @param productId      ID of software product (SVC)
	 * @param productVersion version of software product
	 * @param producerId     ID of software producer
	 * @return true if request was successful, otherwise {@link Message} with error
	 *         details is returned.
	 */
	private Object authenticateDialog(String cardToken, int productId, String productVersion, String producerId) {
		try {
			ProduktInfo produktInfo = new ProduktInfo();
			produktInfo.setProduktId(productId);
			produktInfo.setProduktVersion(productVersion);
			produktInfo.setHerstellerId(producerId);

			AuthenticateDialogE authenticateDialogE = new AuthenticateDialogE();
			AuthenticateDialog authenticateDialog = new AuthenticateDialog();
			authenticateDialog.setCardToken(cardToken);
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

			return new Message(
					returnMessage.isEmpty() ? MessageUtil.getMessageFromProperties("CHECK_CARD_READER") : returnMessage,
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
	}

	/**
	 * This method registers employee of healthcare provider. This is needed for
	 * ELGA because the hits of documents are logged.
	 *
	 * @param gdaM  {@link GdaMa} with details about real person, which wants to
	 *              authenticate
	 * @param role  role, which can be
	 *              <li>700 Ärztin/Arzt</li>
	 *              <li>701 Zahnärztin/Zahnarzt</li>
	 *              <li>702 Krankenanstalt</li>
	 *              <li>703 Einrichtung der Pflege</li>
	 *              <li>704 Apotheke</li> All current values can be viewed here:
	 *              (https://termpub.gesundheit.gv.at/TermBrowser/gui/main/main.zul?loadType=CodeSystem&loadName=ELGA_GDA_Aggregatrollen)
	 * @param ordId ID of surgery of the healthcare provider, where employee works
	 * @return if authentication was successful {@link Boolean} is returned,
	 *         otherwise {@link Message} with error details is returned.
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

			return new Message(
					returnMessage.isEmpty()
							? MessageUtil.getMessageFromProperties(
									"Something was going wrong when query the subjects by the surgery id: ")
							: returnMessage,
					MessageTypes.ERROR, HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
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
	 * closes this GINA dialog.
	 *
	 * @return if log-off was successful {@link Boolean} is returned, otherwise it
	 *         returns a {@link Message} with error details.
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

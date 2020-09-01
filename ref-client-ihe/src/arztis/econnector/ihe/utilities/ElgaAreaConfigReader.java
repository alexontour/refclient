/**
 * 
 * Contributors:
 *   ET-Innovations GmbH - initial API and implementation
 * 
 */
package arztis.econnector.ihe.utilities;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.util.HashMap;
import java.util.Map;

import org.ehealth_connector.common.at.enums.TypeCode;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * This class reads all data, which are important for ELGA area configuration
 * from file resources/ELGA_Bereich_Config.csv </br>
 * It may be extended in the future if additional differences arise for ELGA
 * areas<br/>
 *
 * @author Anna Jungwirth
 */
public class ElgaAreaConfigReader {

	/** The Constant LOGGER. */
	private static final Logger LOGGER = LoggerFactory.getLogger(ElgaAreaConfigReader.class.getName());

	/** The Constant CODE. */
	private static final String CODE = "code";

	/** The Constant URN_OID. */
	private static final String URN_OID = "urnoid";

	/** The Constant DIFF_CONTENT_TYPE. */
	private static final String DIFF_CONTENT_TYPE = "diffcontenttype";

	/** The Constant PHC_CONTENT_TYPE. */
	private static final String PHC_CONTENT_TYPE = "phc-contenttype";

	/** The Constant PRESCRIPTION_CONTENT_TYPE. */
	private static final String PRESCRIPTION_CONTENT_TYPE = "prescription-contenttype";

	/** The Constant ORGANIZATION_ID_URNOID. */
	private static final String ORGANIZATION_ID_URNOID = "org-id-urnoid";

	/** The ELGA area map. */
	private Map<String, ElgaAreaConfig> elgaAreaMap;

	/** The code index. */
	private int codeIndex = 0;

	/** The index of urn oid. */
	private int urnOid = 0;

	/** The index of different content type. */
	private int diffContentType = 0;

	/** The index of phc content type. */
	private int phcContentType = 0;

	/** The index of urn oid of organization ID. */
	private int orgIdUrnOid = 0;

	/** The index of prescription content type. */
	private int prescriptionContentType = 0;

	/** The config. */
	private static ElgaAreaConfigReader config = new ElgaAreaConfigReader();

	/**
	 * Instantiates a new ELGA area config reader.
	 */
	private ElgaAreaConfigReader() {

	}

	/**
	 * Gets the ELGA area config map.
	 *
	 * @return the ELGA area config map
	 */
	public Map<String, ElgaAreaConfig> getElgaAreaConfigMap() {
		return elgaAreaMap;
	}

	/**
	 * Gets the single instance of {@link ElgaAreaConfigReader}.
	 *
	 * @return single instance of {@link ElgaAreaConfigReader}
	 */
	public static ElgaAreaConfigReader getInstance() {
		if (config.getElgaAreaConfigMap() == null) {
			config.readElgaAreaConfigFile();
		}

		return config;
	}

	/**
	 * Read ELGA area config file (resources/ELGA_Bereich_Config.csv).
	 */
	public void readElgaAreaConfigFile() {
		File file = new File("resources/ELGA_Bereich_Config.csv");
		String line;

		elgaAreaMap = new HashMap<>();
		try (BufferedReader serviceFile = new BufferedReader(new FileReader(file))) {
			while ((line = serviceFile.readLine()) != null) {
				String[] row = line.split(",");

				if (CODE.equalsIgnoreCase(row[0].trim())) {
					for (int index = 0; index < row.length; index++) {

						if (CODE.equalsIgnoreCase(row[index].trim())) {
							codeIndex = index;
						} else if (URN_OID.equalsIgnoreCase(row[index].trim())) {
							urnOid = index;
						} else if (DIFF_CONTENT_TYPE.equalsIgnoreCase(row[index].trim())) {
							diffContentType = index;
						} else if (PHC_CONTENT_TYPE.equalsIgnoreCase(row[index].trim())) {
							phcContentType = index;
						} else if (PRESCRIPTION_CONTENT_TYPE.equalsIgnoreCase(row[index].trim())) {
							prescriptionContentType = index;
						} else if (ORGANIZATION_ID_URNOID.equalsIgnoreCase(row[index].trim())) {
							orgIdUrnOid = index;
						}
					}
				} else {
					ElgaAreaConfig elgaAreaConfig = new ElgaAreaConfig();
					elgaAreaConfig.setOid(row[codeIndex].trim());
					addBooleanRows(elgaAreaConfig, row);

					elgaAreaConfig.getContentTypes().put(TypeCode.OUTPATIENT_PROGRESS_NOTE.getCodeValue(),
							row[phcContentType]);
					elgaAreaConfig.getContentTypes().put(TypeCode.PRESCRIPTION_FOR_MEDICAITON.getCodeValue(),
							row[prescriptionContentType]);

					elgaAreaMap.put(elgaAreaConfig.getOid(), elgaAreaConfig);
				}
			}
		} catch (Exception ex) {
			LOGGER.error(ex.getMessage(), ex);
		}
	}

	/**
	 * Adds the boolean values of passed row to passed {@link ElgaAreaConfig}.
	 *
	 * @param elgaAreaConfig the ELGA area config
	 * @param row            the row
	 */
	private void addBooleanRows(ElgaAreaConfig elgaAreaConfig, String[] row) {
		if (elgaAreaConfig == null) {
			return;
		}

		String urnOidNeeded = row[urnOid].trim();
		String diffContentTypeNeeded = row[diffContentType].trim();
		String organizationIdUrnOid = row[orgIdUrnOid].trim();

		try {
			elgaAreaConfig.setUrnOidNeeded(Integer.valueOf(urnOidNeeded) == 1);
			elgaAreaConfig.setDifferentContentTypeNeeded(Integer.valueOf(diffContentTypeNeeded) == 1);
			elgaAreaConfig.setUrnOidNeededForOrganizationId(Integer.valueOf(organizationIdUrnOid) == 1);
		} catch (NumberFormatException ex) {
			LOGGER.error(ex.getMessage(), ex);
		}
	}
}

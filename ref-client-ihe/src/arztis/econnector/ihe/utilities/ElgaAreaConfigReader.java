package arztis.econnector.ihe.utilities;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.util.HashMap;
import java.util.Map;

import org.ehealth_connector.common.at.enums.TypeCode;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class ElgaAreaConfigReader {

	private static final Logger LOGGER = LoggerFactory.getLogger(ElgaAreaConfigReader.class.getName());
	private static final String CODE = "code";
	private static final String URN_OID = "urnoid";
	private static final String DIFF_CONTENT_TYPE = "diffcontenttype";
	private static final String PHC_CONTENT_TYPE = "phc-contenttype";

	private Map<String, ElgaAreaConfig> elgaAreaMap;
	private int codeIndex = 0;
	private int urnOid = 0;
	private int diffContentType = 0;
	private int phcContentType = 0;

	private static ElgaAreaConfigReader config = new ElgaAreaConfigReader();

	private ElgaAreaConfigReader() {

	}

	public Map<String, ElgaAreaConfig> getElgaAreaConfigMap() {
		return elgaAreaMap;
	}

	public static ElgaAreaConfigReader getInstance() {
		if (config.getElgaAreaConfigMap() == null) {
			config.readEImpfImpfstoffeFile();
		}

		return config;
	}

	public void readEImpfImpfstoffeFile() {
		File file = new File("resources/ELGA_Bereich_Config.csv");
		String line;

		elgaAreaMap = new HashMap<>();
		try (BufferedReader serviceFile = new BufferedReader(new FileReader(file))) {
			while ((line = serviceFile.readLine()) != null) {
				String[] row = line.split(";");

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
						}
					}
				} else {
					ElgaAreaConfig elgaAreaConfig = new ElgaAreaConfig();
					elgaAreaConfig.setOid(row[codeIndex].trim());
					addBooleanRows(elgaAreaConfig, row);

					elgaAreaConfig.getContentTypes().put(TypeCode.OUTPATIENT_PROGRESS_NOTE.getCodeValue(),
							row[phcContentType]);

					elgaAreaMap.put(elgaAreaConfig.getOid(), elgaAreaConfig);
				}
			}
		} catch (Exception ex) {
			LOGGER.error(ex.getMessage(), ex);
		}
	}
	
	private void addBooleanRows(ElgaAreaConfig elgaAreaConfig, String[] row) {
		if(elgaAreaConfig == null) {
			return;
		}
		
		String urnOidNeeded = row[urnOid].trim();
		String diffContentTypeNeeded = row[diffContentType].trim();

		try {
			elgaAreaConfig.setUrnOidNeeded(Integer.valueOf(urnOidNeeded) == 1);
			elgaAreaConfig.setDifferentContentTypeNeeded(Integer.valueOf(diffContentTypeNeeded) == 1);
		} catch (NumberFormatException ex) {
			LOGGER.error(ex.getMessage(), ex);
		}
	}
}

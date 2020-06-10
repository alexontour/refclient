package arztis.econnector.ihe.queries.common;

public enum AssociationTypes {

	HAS_MEMBER("urn:oasis:names:tc:ebxml-regrep:AssociationType:HasMember"),
	RPLC("urn:ihe:iti:2007:AssociationType:RPLC"), XFRM("urn:ihe:iti:2007:AssociationType:XFRM"),
	APND("urn:ihe:iti:2007:AssociationType:APND"), XFRM_RPLC("urn:ihe:iti:2007:AssociationType:XFRM_RPLC"),
	SNAPSHOT_OF("urn:ihe:iti:2010:AssociationType:IsSnapshotOf"), SIGNS("urn:ihe:iti:2007:AssociationType:signs"),
	UPDATE_AVAILABILITY_STATUS("urn:ihe:iti:2010:AssociationType:UpdateAvailabilityStatus");

	private String code;

	private AssociationTypes(String code) {
		this.code = code;
	}

	public String getCode() {
		return code;
	}

	public static AssociationTypes getEnum(String value) {
		for (final AssociationTypes x : values()) {
			if (x.getCode().equals(value)) {
				return x;
			}
		}
		return null;
	}

	public static boolean isEnumOfValueSet(String enumName) {
		if (enumName == null) {
			return false;
		}
		try {
			Enum.valueOf(AssociationTypes.class, enumName);
			return true;
		} catch (final IllegalArgumentException ex) {
			return false;
		}
	}

	public static boolean isInValueSet(String value) {
		for (final AssociationTypes x : values()) {
			if (x.getCode().equals(value)) {
				return true;
			}
		}
		return false;
	}

}

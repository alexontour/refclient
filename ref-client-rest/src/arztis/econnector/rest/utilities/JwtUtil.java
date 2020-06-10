package arztis.econnector.rest.utilities;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import arztis.econnector.ihe.generatedClasses.assertion._0._2.saml.tc.names.oasis.AssertionType;
import arztis.econnector.ihe.model.HcpAssertion;
import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.SignatureAlgorithm;
import io.jsonwebtoken.security.Keys;

public class JwtUtil {
	private static final Logger LOGGER = LoggerFactory.getLogger(JwtUtil.class.getName());
	
	private JwtUtil() {
		throw new IllegalStateException("Utility class for JWT");
	}

	public static String buildJwtFromHcpAssertion(AssertionType assertion) {
		if (assertion == null) {
			return null;
		}

		LOGGER.debug("Hcp assertion: {}", assertion);
		
		HcpAssertion hcpAssertion = new HcpAssertion(assertion);

		return Jwts.builder().setIssuer(hcpAssertion.getIssuer()).setSubject(hcpAssertion.getSubject())
				.addClaims(hcpAssertion.getClaims()).setNotBefore(hcpAssertion.getNotBefore())
				.setExpiration(hcpAssertion.getNotOnOrAfter())
				.signWith(Keys.secretKeyFor(SignatureAlgorithm.HS256), SignatureAlgorithm.HS256).compact();
	}
}

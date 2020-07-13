/**
 * Copyright (C) 2020, ET-Innovations GmbH. All rights reserved
 *
 * This code is licensed under the GNU GENERAL PUBLIC LICENSE Version 2.
 * 
 */
package arztis.econnector.rest.utilities;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import arztis.econnector.ihe.generatedClasses.assertion._0._2.saml.tc.names.oasis.AssertionType;
import arztis.econnector.ihe.model.HcpAssertion;
import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.SignatureAlgorithm;
import io.jsonwebtoken.security.Keys;

/**
 * This class contains utilities to generate JWT token from received HCP or
 * context assertion.
 *
 * @author Anna Jungwirth
 *
 */
public class JwtUtil {
	
	/** The Constant LOGGER. */
	private static final Logger LOGGER = LoggerFactory.getLogger(JwtUtil.class.getName());

	/**
	 * Instantiates a new jwt util.
	 */
	private JwtUtil() {
		throw new IllegalStateException("Utility class for JWT");
	}

	/**
	 * generate JWT token from passed assertion. It extracts issuer, subject, claims
	 * and expiration date of assertion. This information is used to build the JWT
	 * token. The token is signed with JWA algorithm using SHA-256.
	 *
	 * @param assertion HCP or context assertion
	 *
	 * @return generated JWT token
	 */
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

/**
 * 
 * Contributors:
 *   ET-Innovations GmbH - initial API and implementation
 * 
 */
package arztis.econnector.rest.model.fhir;

import java.util.Date;
import java.util.List;

import org.hl7.fhir.r4.model.Bundle;
import org.hl7.fhir.r4.model.CodeableConcept;
import org.hl7.fhir.r4.model.Coding;
import org.hl7.fhir.r4.model.OperationOutcome.IssueSeverity;
import org.hl7.fhir.r4.model.OperationOutcome.IssueType;
import org.hl7.fhir.r4.model.OperationOutcome.OperationOutcomeIssueComponent;
import org.hl7.fhir.r4.model.Resource;
import org.hl7.fhir.r4.model.codesystems.OperationOutcome;

import arztis.econnector.rest.utilities.FhirUtil;
import ca.uhn.fhir.model.api.annotation.ResourceDef;

/**
 * A container for a collection of resources. Subclass of {@link Bundle}.
 *
 * @author Anna Jungwirth
 *
 */
@ResourceDef(name = "Bundle", profile = "http://hl7.org/fhir/StructureDefinition/Bundle")
public class FhirBundle extends Bundle {

	/** The Constant serialVersionUID. */
	private static final long serialVersionUID = 1L;

	/**
	 * Instantiates a new fhir bundle.
	 */
	public FhirBundle() {

	}

	/**
	 * Constructor to create error response.
	 *
	 * @param type     type of bundle
	 * @param status   HTTP Response Status e.g. 401 for Unauthorized
	 * @param severity severity of response
	 * @param issue    response code
	 * @param outcome  details about response
	 * @param diagnostics the diagnostics
	 */
	public FhirBundle(BundleType type, int status, IssueSeverity severity, IssueType issue, OperationOutcome outcome,
			String diagnostics) {
		setType(type);
		setTimestamp(new Date());
		setResponse(status, severity, issue, outcome, diagnostics);
	}

	/**
	 * Constructor to create error response.
	 *
	 * @param type    type of bundle
	 * @param outcome details about response
	 * @param status  HTTP Response Status e.g. 401 for Unauthorized
	 */
	public FhirBundle(BundleType type, org.hl7.fhir.r4.model.OperationOutcome outcome, int status) {
		setType(type);
		setTimestamp(new Date());
		setResponse(outcome, status);
	}

	/**
	 * Constructor to create successful response.
	 *
	 * @param type   type of bundle
	 * @param status HTTP Response Status e.g. 201 for Created
	 */
	public FhirBundle(BundleType type, int status) {
		setType(type);
		setTimestamp(new Date());
		setResponse(status);
	}

	/**
	 * Constructor to create searchset as response.
	 *
	 * @param foundResources all found resources
	 */
	public FhirBundle(List<Resource> foundResources) {
		setType(BundleType.SEARCHSET);
		setTimestamp(new Date());

		for (Resource resource : foundResources) {
			addResourceAsSearchResult(resource);
		}
	}

	/**
	 * creates JSON of this bundle instance like specified in <a href=
	 * "http://hl7.org/fhir/R4/bundle.html">http://hl7.org/fhir/R4/bundle.html</a>
	 *
	 * @return JSON string
	 */
	public String toJson() {
		return FhirUtil.toJson(this);
	}

	/**
	 * Adds a resource to {@link Bundle} as entry. This method also sets mode to
	 * {@link SearchEntryMode.<code>MATCH</code>}, which means that this resource
	 * matches the search specification. Therefore, this method should only be used
	 * to add resources from search results.
	 *
	 * @param resource to add to bundle
	 */
	private void addResourceAsSearchResult(Resource resource) {
		BundleEntryComponent component = new BundleEntryComponent();
		component.setResource(resource);

		BundleEntrySearchComponent searchComponent = new BundleEntrySearchComponent();
		searchComponent.setMode(SearchEntryMode.MATCH);
		component.setSearch(searchComponent);
		addEntry(component);
	}

	/**
	 * Adds a resource to {@link Bundle} as entry.
	 *
	 * @param resource to add to bundle
	 */
	protected void addResource(Resource resource) {
		BundleEntryComponent component = new BundleEntryComponent();
		component.setResource(resource);
		addEntry(component);
	}

	/**
	 * Adds {@link BundleEntryResponseComponent} with passed status to bundle.
	 *
	 * @param status of response
	 */
	private void setResponse(int status) {
		BundleEntryComponent component = new BundleEntryComponent();
		BundleEntryResponseComponent responseComponent = new BundleEntryResponseComponent();
		responseComponent.setStatus(String.valueOf(status));
		component.setResponse(responseComponent);
		addEntry(component);
	}

	/**
	 * Adds {@link BundleEntryResponseComponent} with passed status and
	 * {@link OperationOutcome} to bundle.
	 *
	 * @param outcome information about success or failure of an action
	 * @param status  of response
	 */
	private void setResponse(org.hl7.fhir.r4.model.OperationOutcome outcome, int status) {
		BundleEntryComponent component = new BundleEntryComponent();
		BundleEntryResponseComponent responseComponent = new BundleEntryResponseComponent();
		responseComponent.setStatus(String.valueOf(status));
		responseComponent.setOutcome(outcome);
		component.setResponse(responseComponent);
		addEntry(component);
	}

	/**
	 * Adds {@link BundleEntryResponseComponent} with passed details to bundle.
	 *
	 * @param status         of response
	 * @param severity       of issue
	 * @param issueType      type of issue
	 * @param outcomeDetails additional details about error
	 * @param diagnostics    additional diagnostic information about issue
	 */
	private void setResponse(int status, IssueSeverity severity, IssueType issueType, OperationOutcome outcomeDetails,
			String diagnostics) {
		BundleEntryComponent component = new BundleEntryComponent();
		BundleEntryResponseComponent responseComponent = new BundleEntryResponseComponent();
		responseComponent.setStatus(String.valueOf(status));
		org.hl7.fhir.r4.model.OperationOutcome outcome = new org.hl7.fhir.r4.model.OperationOutcome();
		OperationOutcomeIssueComponent issue = new OperationOutcomeIssueComponent();
		issue.setSeverity(severity);
		issue.setCode(issueType);
		issue.setDiagnostics(diagnostics);

		if (outcomeDetails != null) {
			CodeableConcept details = new CodeableConcept(new Coding(outcomeDetails.getSystem(),
					outcomeDetails.getDefinition(), outcomeDetails.getDisplay()));
			issue.setDetails(details);
		}

		outcome.addIssue(issue);
		responseComponent.setOutcome(outcome);
		component.setResponse(responseComponent);
		addEntry(component);
	}

}

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

@ResourceDef(name="Bundle", profile="http://hl7.org/fhir/StructureDefinition/Bundle")
public class FhirBundle extends Bundle {

	private static final long serialVersionUID = 1L;

	public FhirBundle() {
		
	}
	
	/**
	 * Constructor to create error response
	 * 
	 * @param status   HTTP Response Status e.g. 401 for Unauthorized
	 * @param type     type of bundle
	 * @param severity severity of response
	 * @param issue    response code
	 * @param outcome  details about response
	 */
	public FhirBundle(BundleType type, int status, IssueSeverity severity, IssueType issue, OperationOutcome outcome,
			String diagnostics) {
		setType(type);
		setTimestamp(new Date());
		setResponse(status, severity, issue, outcome, diagnostics);
	}
	
	/**
	 * Constructor to create error response
	 * 
	 * @param type type of bundle
	 * @param outcome details about response
	 * @param status   HTTP Response Status e.g. 401 for Unauthorized
	 * 
	 */
	public FhirBundle(BundleType type, org.hl7.fhir.r4.model.OperationOutcome outcome, int status) {
		setType(type);
		setTimestamp(new Date());
		setResponse(outcome, status);
	}

	/**
	 * Constructor to create successful response
	 * 
	 * @param status HTTP Response Status e.g. 201 for Created
	 * @param type   type of bundle
	 * 
	 */
	public FhirBundle(BundleType type, int status) {
		setType(type);
		setTimestamp(new Date());
		setResponse(status);
	}

	/**
	 * Constructor to create searchset as response
	 * 
	 * @param foundResources all found resources
	 * 
	 */
	public FhirBundle(List<Resource> foundResources) {
		setType(BundleType.SEARCHSET);
		setTimestamp(new Date());

		for (Resource resource : foundResources) {
			addResourceAsSearchResult(resource);
		}
	}
	
	/**
	 * creates JSON of this bundle instance like specified in
	 * http://hl7.org/fhir/R4/bundle.html
	 * 
	 * @return JSON string
	 */
	public String toJson() {		
		return FhirUtil.toJson(this);
	}

	private void addResourceAsSearchResult(Resource resource) {
		BundleEntryComponent component = new BundleEntryComponent();
		component.setResource(resource);

		BundleEntrySearchComponent searchComponent = new BundleEntrySearchComponent();
		searchComponent.setMode(SearchEntryMode.MATCH);
		component.setSearch(searchComponent);
		addEntry(component);
	}
	
	protected void addResource(Resource resource) {
		BundleEntryComponent component = new BundleEntryComponent();
		component.setResource(resource);
		addEntry(component);
	}

	private void setResponse(int status) {
		BundleEntryComponent component = new BundleEntryComponent();
		BundleEntryResponseComponent responseComponent = new BundleEntryResponseComponent();
		responseComponent.setStatus(String.valueOf(status));
		component.setResponse(responseComponent);
		addEntry(component);
	}
	
	private void setResponse(org.hl7.fhir.r4.model.OperationOutcome outcome, int status) {
		BundleEntryComponent component = new BundleEntryComponent();
		BundleEntryResponseComponent responseComponent = new BundleEntryResponseComponent();
		responseComponent.setStatus(String.valueOf(status));
		responseComponent.setOutcome(outcome);
		component.setResponse(responseComponent);
		addEntry(component);
	}

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

		if(outcomeDetails != null) {
			CodeableConcept details = new CodeableConcept(
					new Coding(outcomeDetails.getSystem(), outcomeDetails.getDefinition(), outcomeDetails.getDisplay()));
			issue.setDetails(details);			
		}
		
		outcome.addIssue(issue);
		responseComponent.setOutcome(outcome);
		component.setResponse(responseComponent);
		addEntry(component);
	}

}

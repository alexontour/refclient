# Supplied Gazelle release artifacts

These unchanged historical releases are required by the existing IPF/HUSKY
integration and were already used by the successful application build:

- net.ihe.gazelle:hl7v3-code-jar:1.3.7
- net.ihe.gazelle.common.code:common-code-jar:2.0.2
- net.ihe.gazelle.common.code:common-operations-jar:1.0.2

The files were recovered from the working Maven dependency cache because the
external IHE repository timed out from a fresh GitHub runner on 2026-11-03.
All six JAR/POM files match their original cached SHA-1 sidecars. SHA256SUMS
provides an additional manifest. No classes, POMs, versions or source notices
were modified. These are third-party artifacts, not newly authored application code.

Release repository referenced by the original POMs:
https://gazelle.ihe.net/nexus/content/repositories/releases/

Historical source locations recorded in those POMs:
- https://scm.gforge.inria.fr/anonscm/svn/gazelle/validators/src-gen/hl7v3/hl7v3-code-jar/tags/hl7v3-code-jar-1.3.7
- https://scm.gforge.inria.fr/anonscm/svn/gazelle/validators/src-gen/common-code-jar/tags/common-code-jar-2.0.2
- https://scm.gforge.inria.fr/anonscm/svn/gazelle/validators/src-gen/common-operations-jar/tags/common-operations-jar-1.0.2

The original release metadata is retained alongside each JAR. These locations
are provenance references; the application build does not require their availability.

<!-- This page is for the GoldenEye core team only -->

# NIST controls

This module implements the following NIST control enhancements.

_See the HTML comments in the Markdown source for details._

<!--
The controls listed in the readme file and in this file should be identical.
No controls should be listed in one file and not in the other.
-->

<!--
Provide a short description of how the controls are implemented by the module.

For an example, see the NIST controls page in the VPC module:
https://github.ibm.com/GoldenEye/vcp-module/blob/master/docs/controls.md.
-->

## NIST Controls required for compliance

These controls are required for compliance with the listed frameworks.

### Control mapping
<!--
List the programs that the controls applies to (for example, FedRamp and
Financial Services). Organize by the NIST impact level.

You can find the details about the impact level from the
NIST Risk Management Framework page at
https://csrc.nist.gov/Projects/risk-management/sp800-53-controls/release-search#/controls?version=4.0.

For example,

The controls that are implemented by this module fall into the following
FedRAMP impact levels:

- Moderate-impact controls: SC-7(3), SC-7(4), SC-7(5), SC-7(8), SC-8, SC-8(1)
- High-impact controls: SC-7(21)

Controls related to IBM Cloud for Financial Services: SC-7(4), SC-7(5), SC-7(8), SC-8, SC-8(1)
-->

<!-- Include an H3 called "Implementation information" -->
### Implementation information
Implementation information for the supported control enhancements.

<!--
In the implementation section, include an H4 for each NIST control family.
You can find the control families at
https://csrc.nist.gov/Projects/risk-management/sp800-53-controls/release-search#/families?version=5.1

- Include a list item for each control enhancement.
    - Link from the control enhancement to the NIST page that describes it. See the following examples.
    - Use the NIST summary for the heading title.
    - Include a nested list item for the description that identifies how the control enhancement is implemented in the module.
    - Include a nested "Implementation" block with details.
    - Include any additional details as needed.

Example:

#### System and communications protection family

- [SC-7(3](https://csrc.nist.gov/Projects/risk-management/sp800-53-controls/release-search#/control?version=5.1&number=SC-7#enhancement-3)) BOUNDARY PROTECTION | ACCESS POINTS
    - Limits the number of access points to the information system to allow for better monitoring of inbound and outbound network traffic.
    - Implementation
        - All outbound application network traffic must transit through ab egress gateway to reach external networks.
        - All inbound traffic must transit through an ingress gateway to reach the application workload.
        - The application workload is prevented from directly connecting to public or private out-of-boundary networks by the service mesh configuration and the [VPC network topology](https://github.ibm.com/GoldenEye/vpc-module).
-->

<!--
If the module inherits controls from other modules, include a section
that lists those controls
-->
### Inherited controls

The following controls can improve the general security posture. However, the service mesh module is not the primary enforcement mechanism for these controls and does not contribute to compliance.

<!-- List the remaining controls that the module implements. -->
## Additional controls

The following controls are not required in FedRamp (including high impact level controls) or IBM Cloud for Financial Services. You do not need to collect evidence for these areas. However, the controls can improve the security posture.

<!--
Example:

- [AC-4(2)](https://csrc.nist.gov/Projects/risk-management/sp800-53-controls/release-search#/control?version=5.1&number=AC-4) INFORMATION FLOW ENFORCEMENT | PROCESSING DOMAINS
    - Use protected processing domains to enforce organization-defined information flow control policies as a basis for flow control decisions.
    - Implementation
        - Ingress and egress gateways are on different subnets (edge or transit) for the application workload that is the source or target of the information flow. See the [VPC network topology](https://github.ibm.com/GoldenEye/vpc-module).
-->

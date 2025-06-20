# SCuBA-coe-starter-kit
##### Cloud Business Applications (SCUBA) CoE Starter Kit for the Microsoft Power Platform Center of Excellence (CoE)

### About the SCuBA CoE Starter Kit

The SCuBA CoE Starter Kit is solution based starter kit that extends Power Platform CoE by providing capabilities to Define, Apply, Assess, and Maintain secure configuration baselines as a function of Enterprise Power Platform Administration.


This initiative is inspired by, but not affilliated with CISA's [Secure Cloud Business Applications (SCuBA) project](https://www.cisa.gov/resources-tools/services/secure-cloud-business-applications-scuba-project).

This repository contains a [managed](https://github.com/Open-Strata-Commons/SCuBA-coe-starter-kit/raw/refs/heads/main/PowerPlatformSCuBACOE/PowerPlatformSCuBACOE.Solution_managed.zip) and [unmanaged](https://github.com/Open-Strata-Commons/SCuBA-coe-starter-kit/raw/refs/heads/main/PowerPlatformSCuBACOE/PowerPlatformSCuBACOE.Solution.zip) version of the SCuBA CoE Starter Kit.

### Getting Started
#### Dependencies
The SCuBA COE Starter Kit solution has the following dependencies:
- CenterofExcellenceCoreComponents (4.49.2)

#### Prerequisites

##### Command Center App Registration
The SCuBA CoE utilizes the Azure App registration associated with the Power Platform CoE Command Center to execute api calls which apply DLP policy settings.

> If the Command Center app registration is not configured, it will need to be to use the the SCuBA CoE.

The Command Center app registration will need to be a [Power Platform Service Principal](https://learn.microsoft.com/en-us/power-platform/admin/powershell-create-service-principal).

#### Install the solution
The installation is quick and easy.
1. Download the [managed](https://github.com/Open-Strata-Commons/SCuBA-coe-starter-kit/raw/refs/heads/main/PowerPlatformSCuBACOE/PowerPlatformSCuBACOE.Solution_managed.zip) or [unmanaged](https://github.com/Open-Strata-Commons/SCuBA-coe-starter-kit/raw/refs/heads/main/PowerPlatformSCuBACOE/PowerPlatformSCuBACOE.Solution.zip) solution package in accordance with your preference.
2. Import the solution in the target environment
3. When prompted, configure connections as required.
4. Ensure the solution cloud flows are turned on.
5. Run the "SCuBA Setup | Run Initial" cloud Flow.

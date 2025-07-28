# SCuBA-coe-starter-kit ([1.0.13](/ReleaseNotes.md#1013))

Secure Cloud Business Applications (SCUBA) CoE Starter Kit for the Microsoft Power Platform Center of Excellence (CoE)

## About the SCuBA CoE Starter Kit

The SCuBA CoE Starter Kit is solution based starter kit that extends Power Platform CoE by providing capabilities to Define, Apply, Assess, and Maintain secure configuration baselines as a function of Enterprise Power Platform Administration.

This initiative is inspired by, but not affilliated with CISA's [Secure Cloud Business Applications (SCuBA) project](https://www.cisa.gov/resources-tools/services/secure-cloud-business-applications-scuba-project).

This repository contains a [managed](https://github.com/Open-Strata-Commons/SCuBA-coe-starter-kit/raw/refs/heads/main/PowerPlatformSCuBACOE/PowerPlatformSCuBACOE.Solution_managed.zip) and [unmanaged](https://github.com/Open-Strata-Commons/SCuBA-coe-starter-kit/raw/refs/heads/main/PowerPlatformSCuBACOE/PowerPlatformSCuBACOE.Solution.zip) version of the SCuBA CoE Starter Kit.

## Getting Started

### Dependencies

The SCuBA COE Starter Kit solution has the following dependencies:

- CenterofExcellenceCoreComponents (4.49.2)

### Prerequisites

#### Command Center App Registration

The SCuBA CoE requires a Power Platform service principal to execute api calls which apply DLP policy settings.  More information can be found here: [Creating a service principal application using PowerShell](https://learn.microsoft.com/en-us/power-platform/admin/powershell-create-service-principal).

This repo contains a [sample powershell script](https://github.com/Open-Strata-Commons/SCuBA-coe-starter-kit/raw/refs/heads/main/powershell/register-pp-spn.ps1) for registering a pre-existing Azure App registration.

### Install the solution

The installation is quick and easy.
1. Download the [managed](https://github.com/Open-Strata-Commons/SCuBA-coe-starter-kit/raw/refs/heads/main/PowerPlatformSCuBACOE/PowerPlatformSCuBACOE.Solution_managed.zip) or [unmanaged](https://github.com/Open-Strata-Commons/SCuBA-coe-starter-kit/raw/refs/heads/main/PowerPlatformSCuBACOE/PowerPlatformSCuBACOE.Solution.zip) solution package in accordance with your preference.
2. Import the solution in the target environment.  Do not specify any environment variable values at this time.
3. Run the SCuBA CoE Setup Wizard found in the SCuBA CoE Application.  See image below.

    ![SCuBA CoE Setup Wizard](/media/guided-setup-01.png)

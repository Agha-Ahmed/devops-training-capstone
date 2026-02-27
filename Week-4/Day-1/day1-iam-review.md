# Week 4 – Day 1 – IAM Review

## Identity Type
Accessing AWS via IAM Identity Center (SSO).
Console confirms:
AdministratorAccess/ahmed.mehmood@arbisoft.com
Federated user: AWSReservedSSO_AdministratorAccess_...

This means I am assuming a role via SSO and using temporary credentials.


## Account Information
Account ID: 6049-7788-0911
Account Name: DevOps-Team
Region: us-east-1 (N. Virginia)

## Role Used
Role: AdministratorAccess  
Access Type: Assumed role via IAM Identity Center (SSO)

## IAM Identity Center Status
IAM Identity Center is managed at the organization level, not inside this member account.

## 5. IAM Users Observed in Account
There is one IAM user present:

User: aws-nuke  
Console Access: Enabled without MFA  
Access Key: Active  

This IAM user is not used for my login.
It appears to be a service or automation user.


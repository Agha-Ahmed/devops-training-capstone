# AWS Connectivity

Today I refreshed my AWS CLI credentials to ensure a connection:
1. I retrieved fresh temporary credentials from the AWS Access Portal.
2. I used the `aws configure` command to update my Access Key, Secret Key, and the required Session Token.
3. I verified the setup using `aws sts get-caller-identity`.

After configuration, I ran:
`aws ec2 describe-regions --output table`
The successful output (table of regions) confirmed that my local environment is ready for cloud-based tasks.
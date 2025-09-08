AMI_ID="ami-00ca32bbc84273381"  # Replace with your desired AMI ID
INSTANCE_TYPE="t3.micro"      # Replace with desired instance type (e.g., t2.micro, m5.large)
KEY_NAME="AwsKeyPair"     # Replace with your EC2 Key Pair name
SECURITY_GROUP_IDS="sg-0813b726e5c96b886" # Replace with your Security Group ID(s)
SUBNET_ID="subnet-0b714660af883eed1" # Replace with your Subnet ID
INSTANCE_NAME="MyNewEC2Instance" # Name tag for the instance

# --- Launch the EC2 Instance ---
echo "Launching EC2 instance..."
aws ec2 run-instances \
  --image-id "$AMI_ID" \
  --count 1 \
  --instance-type "$INSTANCE_TYPE" \
  --key-name "$KEY_NAME" \
  --security-group-ids "$SECURITY_GROUP_IDS" \
  --subnet-id "$SUBNET_ID" \
  --tag-specifications "ResourceType=instance,Tags=[{Key=Name,Value=$INSTANCE_NAME}]" \
  --query 'Instances[0].InstanceId' \
  --output text

echo "EC2 instance launch command executed. Check AWS console for status."

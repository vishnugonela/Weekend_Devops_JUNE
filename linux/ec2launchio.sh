read -p "Enter AMI ID: " ami_id
read -p "Enter instance type (e.g., t2.micro): " instance_type
read -p "Enter key pair name: " key_name
read -p "Enter security group ID(s) (comma-separated): " security_group_ids
read -p "Enter subnet ID: " subnet_id
read -p "Enter instance count (default: 1): " instance_count

# Set default instance count if not provided
instance_count=${instance_count:-1}

# Construct the AWS CLI command
aws ec2 run-instances \
    --image-id "$ami_id" \
    --instance-type "$instance_type" \
    --key-name "$key_name" \
    --security-group-ids "$security_group_ids" \
    --subnet-id "$subnet_id" \
    --count "$instance_count"

echo "EC2 instance launch initiated."

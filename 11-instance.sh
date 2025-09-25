
{
    "Groups": [],
    "Instances": [
        {
            "AmiLaunchIndex": 0,
            "ImageId": "ami-09c813fb71547fc4f",
            "InstanceId": "i-03ca0e831fdfd5e17",
            "InstanceType": "t3.micro",
            "LaunchTime": "2025-09-25T03:24:44+00:00",
            "Monitoring": {
                "State": "disabled"
            },
            "Placement": {
                "AvailabilityZone": "us-east-1d",
                "GroupName": "",
                "Tenancy": "default"
            },
            "PrivateDnsName": "ip-172-31-27-249.ec2.internal",
            "PrivateIpAddress": "172.31.27.249",
            "ProductCodes": [],
            "PublicDnsName": "",
            "State": {
                "Code": 0,
                "Name": "pending"
            },
            "StateTransitionReason": "",
            "SubnetId": "subnet-0bf9f5f0d070e51a0",
            "VpcId": "vpc-075bbbfa57c361913",
            "Architecture": "x86_64",
            "BlockDeviceMappings": [],
            "ClientToken": "5e291234-3823-4747-9bce-d601343afa1f",
            "EbsOptimized": false,
            "EnaSupport": true,
            "Hypervisor": "xen",
            "NetworkInterfaces": [
                {
                    "Attachment": {
                        "AttachTime": "2025-09-25T03:24:44+00:00",
                        "AttachmentId": "eni-attach-0be25d1ecb4e090e7",
                        "DeleteOnTermination": true,
                        "DeviceIndex": 0,
                        "Status": "attaching",
                        "NetworkCardIndex": 0
                    },
                    "Description": "",
                    "Groups": [
                        {
                            "GroupName": "allow-all",
                            "GroupId": "sg-0e9e29a7d8854c36b"
                        }
                    ],
                    "Ipv6Addresses": [],
                    "MacAddress": "0a:ff:ef:f4:97:6d",
                    "NetworkInterfaceId": "eni-047c4dd5763fda487",
                    "OwnerId": "327903110914",
                    "PrivateDnsName": "ip-172-31-27-249.ec2.internal",
                    "PrivateIpAddress": "172.31.27.249",
                    "PrivateIpAddresses": [
                        {
                            "Primary": true,
                            "PrivateDnsName": "ip-172-31-27-249.ec2.internal",
                            "PrivateIpAddress": "172.31.27.249"
                        }
                    ],
                    "SourceDestCheck": true,
                    "Status": "in-use",
                    "SubnetId": "subnet-0bf9f5f0d070e51a0",
                    "VpcId": "vpc-075bbbfa57c361913",
                    "InterfaceType": "interface"
                }
            ],
            "RootDeviceName": "/dev/sda1",
            "RootDeviceType": "ebs",
            "SecurityGroups": [
                {
                    "GroupName": "allow-all",
                    "GroupId": "sg-0e9e29a7d8854c36b"
                }
            ],
            "SourceDestCheck": true,
            "StateReason": {
                "Code": "pending",
                "Message": "pending"
            },
            "Tags": [
                {
                    "Key": "Name",
                    "Value": "Test"
                }
            ],
            "VirtualizationType": "hvm",
            "CpuOptions": {
                "CoreCount": 1,
                "ThreadsPerCore": 2
            },
            "CapacityReservationSpecification": {
                "CapacityReservationPreference": "open"
            },
            "MetadataOptions": {
                "State": "pending",
                "HttpTokens": "optional",
                "HttpPutResponseHopLimit": 1,
                "HttpEndpoint": "enabled",
                "HttpProtocolIpv6": "disabled",
                "InstanceMetadataTags": "disabled"
            },
            "EnclaveOptions": {
                "Enabled": false
            },
            "BootMode": "uefi-preferred",
            "PrivateDnsNameOptions": {
                "HostnameType": "ip-name",
                "EnableResourceNameDnsARecord": false,
                "EnableResourceNameDnsAAAARecord": false
            },
            "MaintenanceOptions": {
                "AutoRecovery": "default"
            },
            "CurrentInstanceBootMode": "uefi"
        }
    ],
    "OwnerId": "327903110914",
    "ReservationId": "r-036ec57902142baaf"
}


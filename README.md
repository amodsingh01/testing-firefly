# Creating a GKE Cluster with a New VPC

This Terraform code creates a new VPC with three subnets and a firewall rule to allow SSH traffic. It then creates a GKE cluster in the VPC with a single node pool.

To use this code, set the `project_id` variable to the ID of your GCP project. You can also set the `region` variable to the region where you want to create the resources (default is `us-central1`).

To create the resources, run the following commands:

```
terraform init
terraform apply
```

After the resources are created, you can get the cluster endpoint and CA certificate by running:

```
terraform output cluster_endpoint
terraform output cluster_ca_certificate
```

Example output:

```
Outputs:

cluster_ca_certificate = -----BEGIN CERTIFICATE-----
...
-----END CERTIFICATE-----

cluster_endpoint = https://XXX.XXX.XXX.XXX
```

Useful commands:

- `terraform init`: Initializes the Terraform working directory.
- `terraform plan`: Shows the execution plan for the current configuration.
- `terraform apply`: Applies the changes to the infrastructure.
- `terraform destroy`: Destroys the Terraform-managed infrastructure.
This code was generated by [Firefly](https://app.gofirefly.io)
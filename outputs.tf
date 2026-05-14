output "ec2_public_ip" {
  value       = module.compute_aws.public_ip
  description = "SSH: ssh -i ~/.ssh/oci_javaagent ubuntu@<ip> | Tunnel: ssh -i ~/.ssh/oci_javaagent -L 8000:localhost:8000 -L 5173:localhost:5173 ubuntu@<ip>"
}

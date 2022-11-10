resource "aws_eks_cluster" "test" {
  name     = "example"
  encryption_config {
    resources = ["secrets"]
  }
  labels = {
      test = ["MyExampleApp"]
    }
}

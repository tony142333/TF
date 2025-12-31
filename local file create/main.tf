terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "2.5.3"
    }
  }
}
resource "local_file" "example" {
  filename = "${path.module}/mission.txt"
  content = "This is the mission here!"

}
variable "TAG" {
    default = "3.61.0"
}

group "default" { 
    targets = ["ubi", "ubuntu"]

target "ubi" {
    output = ["type=registry"]
    platforms = ["linux/amd64", "linux/arm64"]
    dockerfile = "Dockerfile"
    tags = ["registry.pupgizmo.com/library/nexus3:ubi-${TAG}", "registry.pupgizmo.com/library/nexus3:ubi-latest"]
}
target "ubuntu" {
    output = ["type=registry"]
    platforms = ["linux/amd64", "linux/arm64"]
    dockerfile = "Dockerfile"
    tags = ["registry.pupgizmo.com/library/nexus3:ubuntu-${TAG}", "registry.pupgizmo.com/library/nexus3:ubuntu-latest"]
}


resource "google_cloudbuild_trigger" "filename-trigger" {
    provider = google-beta
    name = "hello-world"
    location = var.region
    project = var.project

    github {
        name = var.github_repository
        owner = var.github_owner
        push {
            branch = var.github_branch
        }
    }

    substitutions = {
        _REGISTRY_URL: "us-central1-docker.pkg.dev"
        _REGISTRY: "node-kubernetes"
    }

    filename = "cloudbuild.yaml"
}

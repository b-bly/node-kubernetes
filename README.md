## Node-kubernetes
Practicing deploying to gcp.

### Cloud build

I added a trigger to gcp to build the image on a push to the main branch.

## Running locally

Run the docker image (that has already been built by cloud build).  In the artifact registry, click on the image and click "pull."  It gives example commands.

```
npm i

gcloud auth configure-docker us-central1-docker.pkg.dev
docker pull us-central1-docker.pkg.dev/PROJECT_ID/REPOSITORY/IMAGE_NAME
docker run us-central1-docker.pkg.dev/PROJECT_ID/REPOSITORY/IMAGE_NAME
# Example:
docker pull \
    us-central1-docker.pkg.dev/node-kubernetes-349713/node-kubernetes/helloworld@sha256:d7dc9aab9426aa75b56411c282a55656f99ec3ca51de3833618d3e0301823bfc
docker run \
    us-central1-docker.pkg.dev/node-kubernetes-349713/node-kubernetes/helloworld:fecc224
```

- How to run IaC files
    The IaC files are written in yaml format so to run them I have used cloudformation. To run th IaC files upload the files to the cloufront and create a stack

- How to deploy the helm chart
    To install the helm chart this command is used 
     - helm install my-release oci://REGISTRY_NAME/REPOSITORY_NAME/nginx which is provided in the documentation of the chart which is available here https://github.com/bitnami/charts/tree/main/bitnami/nginx/#installing-the-chart

- How the CI/CD works
    So I have written a yaml file which triggers only when there's a push in html folder in whichever files.
    1) The pipeline will checkout from the branch
    2) The github actions will take secrets from the github itseld which are stored under Secrets and Variables
    3) The images will then be pushed to the mentioned ECR repo
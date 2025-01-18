# Terraform: Commands: show/state/import/refresh

## Pre-requirements

1. [Install Git](https://git-scm.com/downloads).
2. [Install the Visual Studio Code](https://code.visualstudio.com/).
3. Install some extensions in Visual Studio Code<sup>*</sup>:
   - [HashiCorp Terraform](https://marketplace.visualstudio.com/items?itemName=HashiCorp.terraform) (required).
   - [HashiCorp HCL](https://marketplace.visualstudio.com/items?itemName=HashiCorp.HCL) (required).
   - [Terraform AzApi Provider](https://marketplace.visualstudio.com/items?itemName=azapi-vscode.azapi) (required).
   - [YAML](https://marketplace.visualstudio.com/items?itemName=redhat.vscode-yaml) (required).
   - [Error Lens](https://marketplace.visualstudio.com/items?itemName=usernamehw.errorlens) (required).
   - [markdownlint](https://marketplace.visualstudio.com/items?itemName=DavidAnson.vscode-markdownlint) (required).
   - [Markdown All in One](https://marketplace.visualstudio.com/items?itemName=yzhang.markdown-all-in-one) (required).
   - [GitLens — Git supercharged](https://marketplace.visualstudio.com/items?itemName=eamodio.gitlens) (optional).
   - [Material Icon Theme](https://marketplace.visualstudio.com/items?itemName=PKief.material-icon-theme) (optional).
4. [Install Terraform](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli).

Comments:

*: The repository will automatically install and configure required extensions when opened in VS Code. It is also recommended to create a Flutter configuration [profile in VS Code](https://code.visualstudio.com/docs/editor/profiles).

## Configuration

1. Open the project on Visual Studio Code.
2. [Authenticate locally to AWS](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#authentication-and-configuration).
3. Prints required providers: `terraform providers`.
4. Initialize and download required modules and providers: `terraform init`.

## Create Resources

1. Validate code: `terraform validate`
2. If pass, create a plan to apply resources: `terraform plan -out plan.out`
3. After review the plan, apply plan to create resources: `terraform apply plan.out`

## Destroy Resources

Just run the command: `terraform destroy`

## Outputs

- To print all outputs: `terraform output`
- To print specific output: `terraform output -raw {{output_name}}`

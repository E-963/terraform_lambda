# week_eight - Lambda Workshop

Manage file Transfer between S3 Buckets using Lambda
FrogTech company has the challenge of automating a manual process, They are using S3 as a public storage for external/internal parties
authenticating using IAM credentials.
There are two main S3 buckets 1. frogtech-us-external and 2. frogtech-us-internal , The Challenge lies in the manual actions that
operators do daily in order to move files from one S3 to another.
You’re requested to automate this process using Lambda function, utilizing the native SDK of AWS (i.e. Python boto3 SDK,) FrogTech
engineers have no idea about lambda. Therefore you as an expert, should provide them with a document containing the basics of lambda,
besides explaining:
   >  1. Function event.

   >  2. Function context.
   
   >  3. Function environment variables.
   
   >  4. layers.
   
   >  5. Differences between Synchronous and Asynchronous.
    as well as provide a diagram explaining the entire process of the created resources; Use IaC Terraform to build all resources and consider the below requirements specifications.

#### 6. Resources must be created at the us-east-1 region.
   
     7. Resources must have tags as below:
        a. Key: “Environment”, Value: “terraformChamps”
        b. Key: “Owner”, Value: <“Your_first_name“>
        8. Preferd to use variables.

### Refrences

https://docs.aws.amazon.com/lambda/latest/dg/welcome.html

<https://mohamed-eleraky.hashnode.dev/aws-lambda-s3-trigger-terraform-project-10#heading-the-architecture-design-diagram>

<https://mohamed-eleraky.hashnode.dev/aws-lambda-concepts-essentials#heading-synchronous-invocation>
_____________________________________________________________________________________________________________________________________

# Steps

#### Step.1: Bash Command for Creat a Virtual Environment

      1. python -m venv venv
      2. pip install virtualenv
      3. source venv/bin/activate   
      4. sudo install pip
   

# Google Cloud

#### Common commands

###### Setup and Authentication

```
$ gcloud version
$ gcloud auth login
$ gcloud info --show-log
$ gcloud config set project <project-id>
$ gcloud init <project>

Verification
$ gcloud auth list
$ gcloud config list                        # List all the config except the default ones
$ gcloud config list --all                  # Lists all the configs including defaults
```

###### Application

```
$ gcloud init                          # Initializes current folder into a gcloud project and setup links
$ gcloud app deploy                    # Deploy your app in cloud App engine
$ gcloud app deploy app.yaml           # Deploy app with specific configurations
$ gcloud app browse                    # Open the application page in browser
                                         # or visit http://YOUR_PROJECT_ID.appspot.com
$ gcloud app describe                  # Displays GCloud app information
```

###### Help

```
$ gcloud -h                            # Lists all the available commands and command groups
$ gcloud --help                        # Detailed information on commands
$ gcloud help compute instances create # Help on specific command combination
```

#### Deployment

###### Basic

```
$ gcloud deployment-manager deployments list
$ gcloud deployment-manager deployments describe platform-qa-deployment
```

#### Cloud Storage

###### Basic

```
$ gsutil mb gs://[YOUR-BUCKET-NAME]                        # Create a bucket
$ gsutil defacl set public-read gs://[YOUR-BUCKET-NAME]    # Set the bucket's default ACL to public-read,
                                                             which enables users to see their uploaded images.
```




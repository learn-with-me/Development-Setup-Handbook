# Google Cloud

#### Common commands

###### Setup and Authentication

```
$ gcloud version
$ gcloud auth login
$ gcloud info --show-log
$ gcloud config set project <project-id>
$ gcloud init <project>
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

###### Deployment

```
$ gcloud deployment-manager deployments list
```

###### Help

```
$ gcloud help compute instances create
```




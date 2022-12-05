# Hosting Site built

This repository has GitHub workflow setup, which will automatically upload changes to GitHub pages on merge to `main` branch. No additional action needed.

However, in case there is a need to do it manually, below are a few options:

## Deploying to GitHub Pages

```
$ mkdocs gh-deploy
```

## Hosting via S3

Building the Site

```
$ mkdocs build --clean
```

The `site` directory will then contain the generated code. Upload the `site` directory to S3 with:

```
$ aws s3 cp site s3://docs.goel4ever.com --recursive --acl public-read
```

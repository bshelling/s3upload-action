
# S3 Bucket Upload Action
Action for uploading assets to an s3 bucket
## Input values
- Access Key ID
- Secret Access Key
- Region
- Filepath 
- Bucket
- Options


## Workflow usage
If the action is private, clone the action to the ./github directory
```
/.github
    |-> actions
        |-> s3upload-ation
```
```
- uses: ./.github/actions/s3upload-action
    with:
        keyid: ${{secrets.KEY}}
        accesskey: ${{secrets.ACCESS_KEY}}
        region: "us-east-1"
        filepath: "."
        bucket: "s3://test-bucket"
        options: "--recursive"
```

## Testing
Test action via command line
```
$> docker build -t [image_name] .
$> docker run [keyid] [accesskey] [region] [bucket] [options]
```
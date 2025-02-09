Use template (GitHub New Release to Twilio SMS) to send a Twilio SMS for new release in GitHub.

## Use case
It is important to be updated with a particular software development tool that you or your team are using in the 
day-to-day development process and get notified immediately on a new release of it. 
It is important to follow up with GitHub repositories as soon as they are released. 
There maybe a specific person who wanted to be on alert of new releases of a certain GitHub repository. 
Any time a new release is made in GitHub, an SMS message will automatically send to the specific person of 
interest via Twilio. This template can be used to send a Twilio SMS message to a given mobile number when a new 
release is made in a specific GitHub repository.

## Prerequisites
* Pull the template from central  
  `bal new -t choreo/github_new_release_to_twilio_sms <newProjectName>`
* GitHub account
* Twilio account with SMS capable phone number.

### Setting up Twilio account

1. Create a [Twilio developer account](https://www.twilio.com/).
2. Create a Twilio project with SMS capabilities.
3. Obtain the Account Sid and Auth Token from the project dashboard.
4. Obtain the phone number from the project dashboard and set as the value of the `fromMobile` variable in the `Config.toml`.
5. Give a mobile number where the SMS should be sent as the value of the `toMobile` variable in the `Config.toml`.

### Configure Github webhook with the URL of the service
* You can install webhooks on an organization or on a specific repository.
* To set up a webhook, go to the settings page of your repository or organization. From there, click Webhooks, then Add webhook.
* Webhooks require a few configuration options before you can make use of them
[More information on setting up a webhook for GitHub Async trigger](https://github.com/ballerina-platform/asyncapi-triggers/blob/main/asyncapi/github/Module.md#step-5-configure-github-webhook-with-the-url-of-the-service)

## Configuration
Create a file called `Config.toml` at the root of the project.

## Config.toml 
```
[<ORG_NAME>.github_new_release_to_twilio_sms]
accountSid = "<TWILIO_ACCOUNT_SID>"
authToken = "<TWILIO_AUTH_TOKEN>"
fromMobile = "<TWILIO_FROM_MOBILE>"
toMobile = "<TWILIO_TO_MOBILE>"

[<ORG_NAME>.github_new_release_to_twilio_sms.gitHubListenerConfig]
secret = "<SECRET>"
```

* TWILIO_ACCOUNT_SID - Twilio Account SID
* TWILIO_AUTH_TOKEN - Twilio Auth Token. [Create auth token](https://www.twilio.com/docs/iam/access-tokens)
* TWILIO_TO_MOBILE - Recipient mobile number.
* TWILIO_FROM_MOBILE - Sender mobile number.
* SECRET - This secret will be used in registering webhook

## Testing
Run the Ballerina project created by the integration template by executing `bal run` from the root.

You can check the SMS received to verify with information related to GitHub release.


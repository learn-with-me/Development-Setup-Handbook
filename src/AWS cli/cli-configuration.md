# AWS CLI

```shell
export AWS_ACCOUNT_ID=121212121212
export AWS_DEFAULT_REGION=us-east-1
AWS_DEFAULT_ROLE_NAME=personal-iot

# login to an account if necessary
s2al () { saml2aws login --skip-prompt --profile=${1} --role="arn:aws:iam::${2}:role/${AWS_DEFAULT_ROLE_NAME}"; }

# inject the active credentials for an account into your env
s2a () { eval $(saml2aws script --shell=bash --skip-prompt --profile=${1}); }
# shortcut to remember who you are (and which account you are in)
awho () { aws sts get-caller-identity; }

# these are the aliases to trigger login (if necessary)
alias astage="s2al stage ${AWS_ACCOUNT_ID}"

# these are the aliases to trigger account switch
alias sstage="s2a stage"

# these are the aliases to trigger account login (if necessary) and switch
alias jstage="s2al stage ${AWS_ACCOUNT_ID} && s2a stage"
```

privacy-seed.org website
============

Minimal website based on Jekyll and Minimal Mistakes

## TODO

* video play
* content: updates from buildup conference
* content: updates from RightCon conference
* content: updates from maker faire conference
* add password generator api
* content: selected material from fabacademy
* rephrase the main question: not "protect", use a different term



### AWS setup (with external DNS provider / no Route53)
~~~
aws s3 mb s3://privacy-seed.org

aws s3api put-bucket-policy --bucket privacy-seed.org --policy file://deploy/bucket_policy.json

aws s3 website s3://privacy-seed.org --index-document index.html

# create separate IAM user to write only to this bucket, policy file://deploy/circleci_policy.json
# https://privacy-seed.org.s3-website.eu-central-1.amazonaws.com/

# create domain certificate (US-Virginia zone)

aws cloudfront create-distribution --distribution-config file://deploy/cloudfront_distribution_config.json

# d3acm9kwgkz47y.cloudfront.net
# aws cloudfront update-distribution --distribution-config file://deploy/cloudfront_distribution_config.json --id E3G17MEVTKRIF5

# update DNS CNAMEs to AWS cloudfront url
~~~

## Build and deploy

[![CircleCI](https://circleci.com/gh/iliasbartolini/privacy-seed.org.svg?style=svg)](https://circleci.com/gh/iliasbartolini/privacy-seed.org)

See in `./.circleci/`

## License

* Jekyll original theme and changes are under [MIT](http://opensource.org/licenses/MIT)
* Website content is under [Creative Commons BY-NC-SA](https://creativecommons.org/licenses/by-nc-sa/4.0/)

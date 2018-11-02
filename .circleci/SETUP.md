# Steps to setup CI process

- Create a user with and separate private key to copy files
`adduser ...`

- Set the user permissions to copy files in the right folder
`chown -R ... ...`

- Add private key to circle ci user: https://circleci.com/gh/iliasbartolini/privacy-seed.org/edit#ssh

- Define environment variables in circleci: https://circleci.com/gh/iliasbartolini/privacy-seed.org/edit#env-vars
`$PS_USER` `$PS_DEPLOY_PATH`

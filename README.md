privacy-seed.org website
============

Minimal website based on Jekyll and Strange Case template

## Build and deploy

```
bundle install
JEKYLL_ENV=production && bundle exec jekyll clean && bundle exec jekyll build
rsync -avi --delete-after -e "ssh" _site/* <destination>
```

## License

* Jekyll original theme and changes are under [MIT](http://opensource.org/licenses/MIT)
* Website content is under [Creative Commons BY-NC-SA](https://creativecommons.org/licenses/by-nc-sa/4.0/)

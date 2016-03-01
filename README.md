# docker-logstash

Logstash in Docker. Images are tagged by Logstash versions.

## How to use this image

### Start with only one logstash config file

If you have a `logstash.conf` in current dir.

```
$ docker run -v $(pwd)/logstash.conf:/etc/logstash/conf.d/logstash.conf garyelephant/logstash:2.2.2
```

$(pwd) is required because the path of -v should be absolute path

### Start with a bunch of logstash config files in a dir

If you have many config files in `./conf.d`

```
$ docker run -v $(pwd)/conf.d:/etc/logstash/conf.d garyelephant/logstash:2.2.2
```

## User Feedback

### Issues
If you have any problems with or questions about this image, please contact us through a [GitHub issue](https://github.com/garyelephant/docker-logstash/issues).

### Contributing
You are invited to contribute new features, fixes, or updates, large or small; we are always thrilled to receive pull requests, and do our best to process them as fast as we can.

Before you start to code, we recommend discussing your plans through a [GitHub issue](https://github.com/garyelephant/docker-logstash/issues), especially for more ambitious contributions. This gives other contributors a chance to point you in the right direction, give you feedback on your design, and help you find out if someone else is working on the same thing.

### Contact us

garygaowork@gmail.com

## Contributors

Thanks to all [contributors of this project](https://github.com/garyelephant/docker-logstash/graphs/contributors).

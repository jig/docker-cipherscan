# docker-cipherscan

Dockerized version of [github.com/jvehent/cipherscan](https://github.com/jvehent/cipherscan)

# Usage

Example of use:

```
$ docker run -ti jordi/cipherscan google.com
```

More help:

```
$ docker run -ti jordi/cipherscan --help
```

## Note

If you want to access into the container (to change the config, or use `analyse.py`), you must use `--entrypoint` like this:

```
$ docker run --entrypoint bash -ti jordi/cipherscan 
```

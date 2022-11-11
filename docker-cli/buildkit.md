# BuildKit

[BuildKit](https://github.com/moby/buildkit) is a toolkit for converting source code to build artifacts in an efficient, expressive and repeatable manner. Simply put, it is what turns a Dockerfile into a Docker image. And it doesn’t just build Docker images; it can build OCI images and several other output formats.

> BuildKit is a proposal to separate out docker build experience into a separate project, allowing different users to collaborate on the underlying technology and reuse and customize it in different ways.
> One of the main design goals of BuildKit is to separate frontend and backend concerns during a build process

> Note: BuildKit has been integrated to docker build since Docker 18.09

## Installation & Setup

```
$ brew install buildkit
```

You need to run buildkitd as the root user on the host.
```
$ sudo buildkitd

Verify installation
$ buildctl -h
```

## Building a Dockerfile with buildctl

```
buildctl build \
    --frontend=dockerfile.v0 \
    --local context=. \
    --local dockerfile=.
# or
buildctl build \
    --frontend=dockerfile.v0 \
    --local context=. \
    --local dockerfile=. \
    --opt target=foo \
    --opt build-arg:foo=bar
```

## HLB

[HLB](https://openllb.github.io/hlb/) is a high-level build language for BuildKit.

Describe your build in containerized units of work, and BuildKit will build your target as efficiently as possible.

With BuildKit, we can substitute the dockerfile syntax for hlb and replace the docker image format for a pure tar file output. That is just one of the possible combinations BuildKit, with its pluggable backends and frontends, unlocks.

## References

- [What is BuildKit?](https://earthly.dev/blog/what-is-buildkit-and-what-can-i-do-with-it/) blog
- Creator's [blog](https://blog.mobyproject.org/introducing-buildkit-17e056cc5317)

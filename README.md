# GitBook Docker

This image base on [`node:13.10.1-alpine3.11`](https://hub.docker.com/layers/library/node/13.10.1-alpine3.11/images/sha256-e6fdbee53957e11fed5eb5ca11c0b151e8cee98bf1475ba5f89f4c6a4b889737?context=explore)

# Usage

### Build the Docker Image

To build the Docker image, run the following command:

```sh
docker build -t gitbook .
```

### Running GitBook
To serve your GitBook project, navigate to the directory containing your GitBook project and run:

```sh
docker run --rm -v "$PWD:/gitbook" -p 4000:4000 gitbook gitbook serve
```

### Handling Plugin Errors

If you encounter the following error:

```
Error: Couldn't locate plugins ".....". Run 'gitbook install' to install plugins from registry.
```

You can install the necessary plugins by running:

```sh
docker run --rm -v "$PWD:/gitbook" -p 4000:4000 gitbook gitbook install
```

After installing the plugins, you can serve your GitBook again:

```sh
docker run --rm -v "$PWD:/gitbook" -p 4000:4000 gitbook gitbook serve
```
### Generating

To manually generate alerts, dashboards, and rules files, you'll need to install the following dependencies:

#### Install dependencies

First, install `jsonnet-bundler` and `jsonnet`:

```sh
go install github.com/jsonnet-bundler/jsonnet-bundler/cmd/jb@latest
brew install jsonnet
```

Next, initialize the Jsonnet Bundler and install the Kubernetes mixin:

```sh
jb init
jb install github.com/kubernetes-monitoring/kubernetes-mixin
```

#### Generate

Finally, generate the required files:

```sh
make generate
```

This will process the mixins and output the necessary alerting rules, dashboards, and other configurations.

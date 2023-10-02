# Nunjucks CLI

A simple CLI implementation of a nunjucks with globbing capabilities. _(Inspired by [handlebars-cli](https://github.com/RealOrko/nodejs-handlebars-cli))_

## Prerequisites

You must make sure you have the following pre-requisites installed:

 - [nodejs](https://nodejs.org/en/download/package-manager/)


#### Using source

```
git clone https://github.com/testruction/nunjucks-cli.git && cd nunjucks-cli && npm install -g . && njk --help
```

#### Using npm

```
npm install https://github.com/testruction/nodejs-nunjucks-cli.git -g --force
```

#### Using package

Or alternatively you can use the latest [published package](https://github.com/testruction/nodejs-nunjucks-cli/packages/).

## Guide

[nunjunks/getting-started](https://mozilla.github.io/nunjucks/getting-started.html)

## Examples

All examples can be run from the root folder for where this repository is checked out.

To see the effects of:
 - One template to one input
 - Many templates to one input
 - One template to many inputs
 - Many templates to many inputs

Please run `test/test.sh` and navigate to the output in `build/`.

#### Help

```shell
njk --help
```

#### Single transform

```shell
njk -t examples/bands.yml.hbs -i examples/bands.yml -o build/single-template-with-single-input-with-file-output/bands.yml
njk -t examples/fruits.yml.hbs -i examples/fruits.yml -o build/single-template-with-single-input-with-file-output/fruits.yml
```

#### Single transform (stdout)

```shell
njk -t examples/bands.yml.hbs -i examples/bands.yml -s true > build/single-template-with-single-input-with-std-output/bands.yml
njk -t examples/fruits.yml.hbs -i examples/fruits.yml -s true > build/single-template-with-single-input-with-std-output/fruits.yml
```

#### Single template transform with glob inputs

```shell
njk -t examples/bands.yml.hbs -i examples/**/*.yml -o build/single-template-with-glob-input-with-file-output/bands.yml
njk -t examples/fruits.yml.hbs -i examples/**/*.yml -o build/single-template-with-glob-input-with-file-output/fruits.yml
```


#### Single template transform with glob inputs (stdout)

```shell
njk -t examples/bands.yml.hbs -i examples/**/*.yml -s true > build/single-template-with-glob-input-with-std-output/bands.yml
njk -t examples/fruits.yml.hbs -i examples/**/*.yml -s true > build/single-template-with-glob-input-with-std-output/fruits.yml
```

#### Multiple template transform with single input

```shell
njk -t examples/**/*.yml.hbs -i examples/all.yml -o build/glob-template-with-single-input-with-file-output/bands.yml
njk -t examples/**/*.yml.hbs -i examples/all.yml -o build/glob-template-with-single-input-with-file-output/fruits.yml
```

#### Multiple template transform with single input (stdout)

```shell
njk -t examples/**/*.yml.hbs -i examples/all.yml -s true > build/glob-template-with-single-input-with-std-output/bands.yml
njk -t examples/**/*.yml.hbs -i examples/all.yml -s true > build/glob-template-with-single-input-with-std-output/fruits.yml
```

#### Multiple template transform with multiple inputs

```shell
njk -t examples/**/*.yml.hbs -i examples/**/*.yml -o build/glob-template-with-glob-input-with-file-output/bands.yml
njk -t examples/**/*.yml.hbs -i examples/**/*.yml -o build/glob-template-with-glob-input-with-file-output/fruits.yml
```

#### Multiple template transform with multiple inputs (stdout)

```shell
njk -t examples/**/*.yml.hbs -i examples/**/*.yml -s true > build/glob-template-with-glob-input-with-std-output/bands.yml
njk -t examples/**/*.yml.hbs -i examples/**/*.yml -s true > build/glob-template-with-glob-input-with-std-output/fruits.yml
```

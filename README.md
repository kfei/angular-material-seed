This is a Docker image for my Angular Material application development.

## Binaries

  - NodeJS: `node` and `npm`
  - Ruby: `ruby` and `gem`
  - gulp: `gulp`
  - Sass: `sass`
  - and some developer's kits: `curl`, `git`, `make`, `tmux` and `vim`

## Usage

Build the development container:

```bash
git clone --depth=1 https://github.com/kfei/angular-material-seed
cd angular-material-seed
docker build -t angular-material-seed .
```

Create project directory and run the container:

```bash
mkdir my-awesome-project
docker run -it -v $PWD/my-awesome-project:/code angular-material-seed
```

Bootstrap the project inside the container:

```bash
bootstrap
```

Now start coding in the `/code` directory!

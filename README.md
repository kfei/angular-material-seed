This is my web application development seed.

## Binaries

  - NodeJS: `node` and `npm`
  - Ruby: `ruby` and `gem`
  - gulp: `gulp`
  - Sass: `sass`
  - and some developer's kits: `curl`, `git`, `make`, `tmux` and `vim`

## Usage

Build and run the development container:

```bash
git clone https://github.com/kfei/web-devel-seed
cd web-devel-seed
docker build -t web-devel-seed .
docker run -it -v $PWD/code:/code web-devel-seed
```

Inside the container:

```bash
bootstrap
```

Note that `bootstrap` will install following packages in the project directory
(`/code`) if they don't exist:
  - gulp
  - angular-material

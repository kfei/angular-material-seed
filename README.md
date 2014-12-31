This is my Angular Material application development seed.

## Binaries

  - NodeJS: `node` and `npm`
  - Ruby: `ruby` and `gem`
  - gulp: `gulp`
  - Sass: `sass`
  - and some developer's kits: `curl`, `git`, `make`, `tmux` and `vim`

## Usage

Build and run the development container:

```bash
git clone --depth=1 https://github.com/kfei/angular-material-seed
cd angular-material-seed
docker build -t angular-material-seed .
docker run -it -v $PWD/code:/code angular-material-seed
```

Inside the container:

```bash
bootstrap
```

Note that `bootstrap` will install following packages in the project directory
(`/code`) if they don't exist:
  - `gulp`, `gulp-sass`, `gulp-minify-css` and `gulp-minify-html`
  - `angular-material`

Now start coding in the `/code` directory.

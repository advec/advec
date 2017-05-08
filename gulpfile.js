'use strict';

const gulp = require('gulp');
const stylus = require('gulp-stylus');
const poststylus = require('poststylus');
const rupture = require('rupture');
const gcmq = require('gulp-group-css-media-queries');
const lost = require('lost');
const pxtorem = require('postcss-pxtorem');
const uglify = require('gulp-uglify');
const rucksack = require('rucksack-css');
const concat = require('gulp-concat');
const plumber = require('gulp-plumber');
const cssnano = require('gulp-cssnano');
const autoprefixer = require('autoprefixer');
const browserSync = require('browser-sync');
const hexo = require('hexo');
const imagemin = require('gulp-imagemin');
const pngquant = require('imagemin-pngquant');
const cp = require('child_process');
const clean = require('gulp-clean');

const srcPaths = {
  styl: 'themes/advec/_source/css/**/*.styl',
  js: 'themes/advec/_source/js/**/*.js',
  jade: 'source/**/*.jade',
  pug: 'source/**/*.pug',
  swig: 'themes/advec/layout/**/*.swig'

};

const buildPaths = {
  css: 'public/css/',
  js: 'public/js/'
};

gulp.task('css', () => {
  return gulp.src(srcPaths.styl)
    .pipe(plumber())
    .pipe(stylus({
      use: [rupture(), poststylus([lost(), rucksack(), autoprefixer({ browsers: ['> 1%', 'last 3 versions', 'Firefox >= 20', 'iOS >=7'] })])],
      compress: false
    }))
    .pipe(gcmq())
    .pipe(concat('application.css'))
    .pipe(cssnano({ mergeRules: false, zindex: false }))
    .pipe(gulp.dest(buildPaths.css))
    .pipe(browserSync.reload({stream:true}))
});

gulp.task('js', () => {
  return gulp.src(srcPaths.js)
    .pipe(plumber())
    .pipe(concat('application.js'))
    .pipe(uglify())
    .pipe(gulp.dest(buildPaths.js))
});

gulp.task('img', function () {
    return gulp.src('imagem/*')
        .pipe(imagemin({
            progressive: true,
            use: [pngquant()]
        }))
        .pipe(gulp.dest('imagemin-img'));
});

gulp.task('clean', function() {
  return gulp.src([buildPaths.css, buildPaths.js], {read: false})
    .pipe(clean());
});

gulp.task('hexo-generate', function (done) {
    browserSync.notify('Building Hexo');
    return cp.spawn('hexo', ['generate'], {stdio: 'inherit'})
        .on('close', done);
});

gulp.task('hexo-regenerate', ['hexo-generate', 'js'], function () {
    browserSync.reload();
});

gulp.task('browser-sync', ['hexo-generate'], function() {
    browserSync({
        server: {
            baseDir: 'public'
        },
        host: "localhost"
    });
});

gulp.task('watch', function() {
  gulp.watch(srcPaths.styl, ['css']);
  gulp.watch(srcPaths.js, ['js']);
  gulp.watch([srcPaths.jade, srcPaths.pug, srcPaths.swig], ['hexo-regenerate']);
});

gulp.task('default', function() {
    gulp.start('css', 'js', 'browser-sync', 'watch');
});

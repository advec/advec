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
const RevAll = require('gulp-rev-all');
const awspublish = require('gulp-awspublish');
const cloudfront = require("gulp-cloudfront");
const rename = require('gulp-rename');
const path = require('path');
const del = require('del');
const runSequence = require('run-sequence');

const srcPaths = {
  styl: 'themes/advec/_source/css/**/*.styl',
  js: 'themes/advec/_source/js/**/*.js',
  jade: 'source/**/*.jade',
  pug: 'source/**/*.pug',
  swig: 'themes/advec/layout/**/*.swig'

};

const buildPaths = {
  css: 'devl/assets/',
  js: 'devl/assets/'
};

// CSS MIN
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
});

// JS MIN
gulp.task('js', () => {
  return gulp.src(srcPaths.js)
    .pipe(plumber())
    .pipe(concat('application.js'))
    .pipe(uglify())
    .pipe(gulp.dest(buildPaths.js))
});

// IMG MIN
gulp.task('img', function () {
    return gulp.src('public/assets/images/**/*')
        .pipe(imagemin({
            progressive: true,
            use: [pngquant()]
        }))
        .pipe(gulp.dest('public/assets/images'));
});

// REV
gulp.task('rev', function () {
  return gulp.src(['devl/**']) 
    .pipe(RevAll.revision({ 
        dontRenameFile: ['.html', '.xml', '.txt', '.eot', '.ttf', 'woff'],
        prefix: 'https://assets.adv.ec/'
    }))
    .pipe(gulp.dest('public/'))  
    .pipe(RevAll.manifestFile())
    .pipe(gulp.dest('public/')); 
});

gulp.task('clean-assets', () => {
    del(['public/assets/']);
});

// AWS PUBLISH
var aws = {
  "params": {
  "Bucket": "assets.adv.ec"
  },
  "distributionId": "E1SYAKGEMSK3OD"
};

gulp.task('aws', function() {
  var publisher = awspublish.create({
    params: {
      Bucket: 'assets.adv.ec'
    }
  });
  var headers = {
    'Cache-Control': 'max-age=315360000, no-transform, public'
  };
  return gulp.src('public/assets/**')
    .pipe(rename(function(filePath) {
        filePath.dirname = path.join('assets/', filePath.dirname);
    }))
    .pipe(awspublish.gzip())
    .pipe(publisher.publish(headers))
    .pipe(publisher.cache())
    .pipe(awspublish.reporter())
    .pipe(cloudfront(aws));
});

// HEXO GENERATE
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
            baseDir: 'devl'
        },
        host: "localhost"
    });
});

gulp.task('server', function() {
    browserSync({
        server: {
            baseDir: 'devl'
        },
        host: "localhost"
    });
});

gulp.task('watch', function() {
  gulp.watch(srcPaths.styl, ['css']);
  gulp.watch(srcPaths.js, ['js']);
  gulp.watch([srcPaths.jade, srcPaths.pug, srcPaths.swig], ['hexo-regenerate']);
});


///////////////////
///////////////////
///////////////////
///////////////////


gulp.task('default', function(done) {
    runSequence('css', 'js', 'hexo-generate', function() {
        console.log('Funcionando corretamente.');
        done();
    });
});
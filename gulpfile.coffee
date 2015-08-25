gulp    = require 'gulp'
scss    = require 'gulp-coffee'
coffee  = require 'gulp-coffee'
watch   = require 'gulp-watch'
plumber = require 'gulp-plumber'

gulp.task 'compile',
  [
    'compile-coffee',
    'compile-scss',
    'compile-html'
  ]

gulp.task 'compile-scss', ->
  gulp.src('src/**/*.scss')
    .pipe(plumber())
    .pipe(scss())
    .pipe(gulp.dest('app/'))

gulp.task 'compile-coffee', ->
  gulp.src('src/**/*.coffee')
    .pipe(plumber())
    .pipe(coffee())
    .pipe(gulp.dest('app/'))

gulp.task 'compile-html', ->
  gulp.src('src/**/*.html')
    .pipe(gulp.dest('app/'))

gulp.task 'watch', ->
  gulp.watch('src/**/*', ['compile'])

var gulp = require('gulp'); //node busque en node_modules por un package named gulp
var sass = require('gulp-sass') //required sass plugin npm install gulp-sass --save-dev
//var browserSync = require('browser-sync').create();
// gulp.task('hello', function() { //to run gulp hello
//   console.log('Hello Luis');
// });
//gulp.src tells the Gulp task what files to use for the task
//gulp.dest tells Gulp where to output the files once the task is completed.

gulp.task('sass', function() {

  return gulp.src('./public/app/scss/**/*.+(scss|sass)')
    .pipe(sass()) //Converts Sass to CSS with gulp-sass
    .pipe(gulp.dest('./public/app/css'))
    // .pipe(browserSync.reload({
    //     stream: true
    // }))
});

gulp.task('watch', ['browserSync', 'sass'], function (){
  gulp.watch('./public/app/scss/**/*.+(scss|sass)', ['sass']);
  // Reloads the browser whenever HTML or JS files change
  //gulp.watch('./public/app/js/**/*.js', browserSync.reload);
  //gulp.watch('./public/app/*.html', browserSync.reload);
  // Other watchers
})

/*Gulp-sass uses LibSass to convert Sass into CSS.
 It's much quicker than Ruby-based methods.
 If you want, you can still use Ruby methods with Gulp by
  using gulp-ruby-sass or gulp-compass instead.*/

  /*Globbing in Node

Globs are matching patterns for files that allow you to add more than one file
 into gulp.src.
 It's like regular expressions, but specifically for file paths.

When you use a glob, the computer checks file names and paths
 for the specified pattern. If the pattern exists, then a file is matched.
 https://css-tricks.com/gulp-for-beginners/
 */

 gulp.task('browserSync', function() {
   browserSync.init({
     server: {
       baseDir: 'app'
     },
   })
 })

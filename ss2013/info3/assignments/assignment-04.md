---
title: 'Assignment 4: First Rails Steps'
author: kleinen
layout: page
---
In this exercise, you will create a rails application for the first one or two features / user stories of your application. Pick one simple thing that you can solve mainly with the provided CRUD (Create Read Update Delete) features of a rails scaffold using just one or two model classes. If the first things seems to simple for that, add a second &#8211; but the goal is really to implement just a little bit of functionality in this first step and mainly set up the whole rails app together with Continuous Integration &#8211; we will add Continuous Deployment in the next exercise.

As we are going to use minitest for testing, it&#8217;s probably easier to go ahead and upgrade rails to 4.0.0.rc1 before starting.

1.  Create a rails application
2.  Share the rails app on github
3.  Create your model classes using rails generate scaffold (see [https://github.com/info3/rails\_01\_fragen][1] for an example)
4.  create many small commits:
5.  Develop your story test driven. See the example in [https://github.com/info3/rails\_testing\_example][2] for integration test examples (and setup!)
6.  Continuous Integration: copy the .travis.yml travis setup (you might want to delete one of the ruby versions from it) to your repository and set up a travis-ci.org build for it.


  Submit a short PDF summary containing:

  * the story/feature you&#8217;ve implemented
  * the model you used (that is, the one or two model classes in a class diagram)
  * a link to your github repository with a link to the travis build in its readme.


 [1]: https://github.com/info3/rails_01_fragen
 [2]: https://github.com/info3/rails_testing_example/

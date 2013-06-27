A Rails App For Making Playlists
---------------------------------

Purpose
========

This is a project for the Nashville Software School.  We are developing an app that uses Ruby on Rails.

User Stories:
==============
* As a DJ I want to know what music is currently popular so that I can stay current and be able to know what new music is worth playing.
* As a fan of certain artists I want to know what people are listening to so that I can stay familiar with my favorite artists.

Usage:
======

* This is a standard rails app.  To run the tests, use `rake`.  To run the app, use `rails s`.
* To view the app online go to nss-capstone.herokuapp.com.

Features:
=========

1. User can enter artist(s), album(s), and/or track(s)
2. User can view list of artists, albums, and tracks
3. User can sort any column of any table

ToDo/Project State:
===================

V1
* x rvmrc
* x rails new
* x write tests
* x create model & migration
* x create controller & index view/action
* x ability to add artists
* x ability to add albums
* x ability to add tracks
* x sortable view for artists, albums, and tracks

V2
* x ability to log-in
* custom list capability based on user input
* ability to favorite tracks
* ability to have separate playlists for each user
* last.fm api capability


Changelog:
==========

* 2013-06-11: Started Project
* 2013-06-15: Basic app with artist table
* 2013-06-20: Added albums page
* 2013-06-24: Added users log-in
* 2013-06-25: Added tracks page, bootstrap, sorting

Author:
=======

Eric Wright

License:
========

The MIT License (MIT)

Copyright (c) 2013 Eric Wright

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.

---
layout: page
title: Projects
permalink: /projects
description: An overview of some of the interesting projects I've bee a part of.
---

## The Grants Hub

{% image {"src":"projects/the_grants_hub.png", "alt":"The Grants Hub"} %}

The Grants Hub is an online directory for finding grants funding in Australia.
They also provide resources for applying for grants, networking opportunities and grant writing.

I am currently working at The Grants Hub as their web developer.

## Songdown

A web app for musicians to store their chord charts in a simple format.
Features include search, integrated song player, transposing (changing the key), and setlist planning.

- Languages: Ruby, JavaScript
- Frameworks: Bulma.css, Ruby on Rails, Heroku

{% image {"src":"projects/songdown.png", "alt":"SongDown screenshot"} %}

You can try it out at [songdown.app](http://songdown.app)

## The Lacuna Expanse / Kenó Antigen

The Lacuna Expanse is a region of space with millions of habitable worlds.
You can play with or compete against thousands of players as you build your empire, fight off spies in a battle for cold war supremacy, form alliances, search the expanse for lost ancient artifacts, and more.

Since the beginning the game has been open source on [GitHub](https://github.com/plainblack).
Contributing fixes to the game or working on my own projects was how I really originally learned how to program.
My early projects included: a very basic Android client, client libraries for accessing the game using both Ruby and Javascript, a browser-based automation toolkit, and an Electron.js wrapper around the TLE web app.

My favourite contribution was redesigning the web client's main interface.
The old one was based on YUI2, buggy, and of course the code was a mess.
I used React, Semantic UI, and Reflux.js to build a new one that would better meet player's needs.

Here's how the game looked before my redesign:

{% image {"src":"projects/tle-old.jpg", "alt":"Lacuna Expanse screenshot"} %}

And after:

{% image {"src":"projects/tle.png", "alt":"Lacuna Expanse screenshot"} %}

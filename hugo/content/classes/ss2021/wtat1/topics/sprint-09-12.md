---
title: Sprint 09-12 - Real Time Communication and React
author: kleinen
layout: default
---
## Sprint 09-12: Real Time Communication and React

You should plan the remaining 4 sprints together, as you may want to
postpone Sprint 09 to combine it with a React frontend.

Thus, the following order is tentative:
* Sprint 09: Real-Time-Communication (Unit 7, "Adding Chat Functionality")
* Sprint 10: React Tutorial ([Main Concepts in the React Doc](https://reactjs.org/docs/hello-world.html))
* Sprint 11-12: Implement Stories with React

Please plan the following sprints using the backlog planning tool at:

[https://backlog.f4.htw-berlin.de/](https://backlog.f4.htw-berlin.de/)

You'll find the following topics there, please attach them to the stories before
you finish your sprint planning:

* Real Time Communication with socket.io
* React Tutorial
* React Stories
* Test for Route that needs authentication
* Test for React
* Test for Real-Time Communication

## Real Time Communication with socket.io
Find something in your app that may benefit from real-time communication, possibly using react.
Unit 07 in the book. You may also postpone this and combine it with react, see
[this blog article](https://www.valentinog.com/blog/socket-react/) and my [tryout](https://github.com/htw-imi-wtat1/react-socketio-tryout) for an example.

## React Tutorial
* create a new react app using npx create-react-app: (Webstorm uses the same generator)


     npx create-react-app


Use the created app for the tutorial, rather than codepen, and commit it to a new repository.
(you may want to do this on your own and only work together on the last step)
* work through the main concepts in the React Doc: [https://reactjs.org/docs/hello-world.html](https://reactjs.org/docs/hello-world.html)
* decide on something you want to build with react and create a mockup as described in [Step 12 - Thinking in React](https://reactjs.org/docs/thinking-in-react.html).

See [https://github.com/htw-imi-wtat1/react-doc-tryout](https://github.com/htw-imi-wtat1/react-doc-tryout) for my example.

## React Stories
Use two sprints for creating something with react - that may be a story that benefits from richer interaction,
or a new project alltogether.

## Test for Route that needs authentication
Your finished app should have at least one test tackling authorization.
See [https://github.com/htw-imi-wtat1/module-handbook-2021/blob/master/doc/authentication_authorization.md](https://github.com/htw-imi-wtat1/module-handbook-2021/blob/master/doc/authentication_authorization.md) about how to test this.

## Test for React
Create a Jest test for your React Components. Example TBD.

## Test for Real-Time Communication
Test your socket.io Story. Example TBD.

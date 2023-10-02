---
title: A very simple ClockDisplay
author: kleinen
draft: true
tags: ['bluej']
courses: ['info1']
weight: 40
---


All the ClockDisplay example really does is returning a String like "13:45" from `getTime()`  after either the time has been set to 13:45 by calling `setTime()` or after calling the `timeTick()` method the appropriate amount of times.

This can, of course, be implemented in a much simpler way. While this is most probably true for most of the small examples we use in Programming and Software Engineering classes, the original example teaches distributing the model over several view classes. 

The Interface is in `ClockDisplay`, `NumberDisplay` is an implementation detail.

The Interface of `ClockDisplay` consists of three methods, as can be seen in the BlueJ menu:

![](../cd_interface.jpg)


Here's a much simpler and shorter implementation of this Interface:

## Simple Version: Class Diagram
```mermaid
%%{
  init: {
    'theme': 'base',
    'themeVariables': {
      'primaryColor': '#f0cd91', 
      'primaryTextColor': '#000',
      'primaryBorderColor': '#000',
      'lineColor': '#F8B229',
      'secondaryColor': '#006100',
      'tertiaryColor': '#fff'
    }
  }
}%%
classDiagram
    class ClockDisplay

    ClockDisplay: -int ticks
    ClockDisplay: -String displayString
    ClockDisplay: void timeTick()
    ClockDisplay: void setTime(int hour, int minute)
    ClockDisplay: String getTime()
    
    

```


## Simple Version: Creation
```mermaid
%%{
  init: {
    'theme': 'base',
    'themeVariables': {
      'primaryColor': '#f69e9d', 
      'primaryTextColor': '#000',
      'primaryBorderColor': '#000',
      'lineColor': '#F8B229',
      'secondaryColor': '#f4f4f4',
      'activationBorderColor': '#000',
      'tertiaryColor': '#fff'
    }
  }
}%%

sequenceDiagram
    actor YOU
    create Participant ClockDisplay
    YOU->>+ClockDisplay: new()
    ClockDisplay-->>-YOU:clockDisplay

```
## Simple Version: setTime()
```mermaid
%%{
  init: {
    'theme': 'base',
    'themeVariables': {
      'primaryColor': '#f69e9d', 
      'primaryTextColor': '#000',
      'primaryBorderColor': '#000',
      'lineColor': '#F8B229',
      'secondaryColor': '#f4f4f4',
      'activationBorderColor': '#000',
      'tertiaryColor': '#fff'
    }
  }
}%%

sequenceDiagram
    actor YOU
    YOU->>+ClockDisplay: setTime(13,45)
    ClockDisplay->>+ClockDisplay:updateDisplay()
    deactivate ClockDisplay
    ClockDisplay-->>-YOU:void

```
## Simple Version: timeTick()

```mermaid
%%{
  init: {
    'theme': 'base',
    'themeVariables': {
      'primaryColor': '#f69e9d', 
      'primaryTextColor': '#000',
      'primaryBorderColor': '#000',
      'lineColor': '#F8B229',
      'secondaryColor': '#f4f4f4',
      'activationBorderColor': '#000',
      'tertiaryColor': '#fff'
    }
  }
}%%
sequenceDiagram
    actor YOU
    participant ClockDisplay

    YOU->>+ClockDisplay: timeTick()
    
    ClockDisplay->>+ClockDisplay:updateDisplay()
    deactivate ClockDisplay

    ClockDisplay-->>-YOU:void

```

This example can no longer be used to show Object interaction. It only shows an object calling its own method (`updateDisplay()`) and how to use a modulo operator.


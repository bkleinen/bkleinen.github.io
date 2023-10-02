---
title: Reflections and Improvements on the Clock Display Example
author: kleinen
draft: true
tags: ['bluej']
courses: ['info1']
---

The ClockDisplay project is used in the Book ...TBD ad the first example for modularizing a program 
using communicating objects.

Here's a class diagram with the private fields and public methods (Constructors are omitted for clarity):

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
    class NumberDisplay
    ClockDisplay ..> NumberDisplay
    
    ClockDisplay: -NumberDisplay hours
    ClockDisplay: -NumberDisplay minutes
    ClockDisplay: -String displayString
    ClockDisplay: void timeTick()
    ClockDisplay: void setTime(int hour, int minute)
    ClockDisplay: String getTime()
    
    
    NumberDisplay: -int limit
    NumberDisplay: -int value
    NumberDisplay: int getValue()
    NumberDisplay: String getDisplayValue()
    NumberDisplay: void setValue(int)
    NumberDisplay: void increment()

```

All this example really does is returning a String like "13:45" from `getTime()`  after either the time has been set to 13:45 by calling `setTime()` or by calling the `tick()` method the appropriate amount of times.

The Interface is in `ClockDisplay`, `NumberDisplay` is an implementation detail.

This makes the program way simpler:

```mermaid

sequenceDiagram
    actor YOU
    create Participant ClockDisplay
    YOU->>+ClockDisplay: new()
    create Participant hours_NumberDisplay
    ClockDisplay->>+hours_NumberDisplay:new(24)
    hours_NumberDisplay-->>-ClockDisplay:void
    create Participant minutes_NumberDisplay
    ClockDisplay->>+minutes_NumberDisplay:new(60)
    minutes_NumberDisplay-->>-ClockDisplay:void
    ClockDisplay-->>-YOU:void

```


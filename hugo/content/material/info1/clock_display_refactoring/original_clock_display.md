---
title: Design of the Original ClockDisplay Example
author: kleinen
draft: true
tags: []
courses: []
weight: 10
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

## Original Version: Creation
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
    create Participant hours_NumberDisplay
  
    ClockDisplay->>+hours_NumberDisplay:new(24)
    hours_NumberDisplay-->>-ClockDisplay:hours
    create Participant minutes_NumberDisplay
    ClockDisplay->>+minutes_NumberDisplay:new(60)
    minutes_NumberDisplay-->>-ClockDisplay:minutes
    ClockDisplay-->>-YOU:clockDisplay

```
## Original Version: setTime()
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
    ClockDisplay->>+hours_NumberDisplay:setValue(13)
    hours_NumberDisplay-->>-ClockDisplay:void
    ClockDisplay->>+minutes_NumberDisplay:setValue(45)
    minutes_NumberDisplay-->>-ClockDisplay:void
    
    ClockDisplay->>+ClockDisplay:updateDisplay()
    ClockDisplay->>+hours_NumberDisplay:getDisplayValue()
    hours_NumberDisplay-->>-ClockDisplay:displayString
    ClockDisplay->>+minutes_NumberDisplay:getDisplayValue()
    minutes_NumberDisplay-->>-ClockDisplay:displayString
    
    deactivate ClockDisplay

    ClockDisplay-->>-YOU:void

```
## Original Version: timeTick()

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
    participant hours_NumberDisplay
    participant minutes_NumberDisplay

    YOU->>+ClockDisplay: timeTick()
    ClockDisplay->>+minutes_NumberDisplay:increment()
    minutes_NumberDisplay-->>-ClockDisplay:void

    ClockDisplay->>+minutes_NumberDisplay:getValue()
    minutes_NumberDisplay-->>-ClockDisplay:value

    alt [value == 0]

    ClockDisplay->>+hours_NumberDisplay:increment()
    hours_NumberDisplay-->>-ClockDisplay:void
    end

    ClockDisplay->>+ClockDisplay:updateDisplay()
    ClockDisplay->>+hours_NumberDisplay:getDisplayValue()
    hours_NumberDisplay-->>-ClockDisplay:displayString
    ClockDisplay->>+minutes_NumberDisplay:getDisplayValue()
    minutes_NumberDisplay-->>-ClockDisplay:displayString
    

    ClockDisplay-->>-YOU:void

```


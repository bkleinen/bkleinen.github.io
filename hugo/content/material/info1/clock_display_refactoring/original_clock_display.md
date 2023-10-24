---
title: Design of the Original ClockDisplay Example
author: kleinen
draft: false
tags: ['bluej', 'karaclock']
courses: []
weight: 10
---

{{<prev_next >}}

The ClockDisplay project is the first example for solving a problem using communicating objects. (in the Book ["Objects First with Java: A Practical Introduction Using Bluej." by David J Barnes and Michael Kölling][2]) 

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
    

    class ClockDisplay{
      -NumberDisplay hours
      -NumberDisplay minutes
      -String displayString
      void timeTick()
      void setTime(int hour, int minute)
      String getTime()
      -void updateDisplay()
    }
    
    NumberDisplay: -int limit
    NumberDisplay: -int value
    NumberDisplay: int getValue()
    NumberDisplay: String getDisplayValue()
    NumberDisplay: void setValue(int)
    NumberDisplay: void increment()

```

Within the example the field `displayString` in ClockDisplay is used to simulate the digital display. It is updated after every change to the time by calling the private method `updateDisplay` after every change to the time. The two instances of NumberDisplay generate their part of the displayString in `getDisplayValue`.
But they also hold their part of the model - the value for hours and minutes respectively.

The observable behavior of this example is returning a String like "13:45" from `getTime()` after either the time has been set to 13:45 by calling `setTime()` or by calling the `tick()` method the appropriate amount of times.

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
    deactivate ClockDisplay

    ClockDisplay-->>-YOU:void
```
## Original Version: getTime()

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

    YOU->>+ClockDisplay: getTime()
   
    ClockDisplay-->>-YOU:displayString

```


[2]: https://www.bluej.org/objects-first/
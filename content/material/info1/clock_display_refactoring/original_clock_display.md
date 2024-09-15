---
title: Design of the Original #colon;ClockDisplay Example
author: kleinen
draft: false
tags: ['bluej', 'karaclock']
courses: []
weight: 10
---

{{<prev_next >}}

The #colon;ClockDisplay project is the first example for solving a problem using communicating objects. (in the Book ["Objects First with Java: A Practical Introduction Using Bluej." by David J Barnes and Michael Kölling][2]) 

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
    create Participant #colon;ClockDisplay
    YOU->>+#colon;ClockDisplay: new ClockDisplay()
    create Participant hours#colon;NumberDisplay
  
    #colon;ClockDisplay->>+hours#colon;NumberDisplay:new NumberDisplay(24)
    hours#colon;NumberDisplay-->>-#colon;ClockDisplay:hours
    create Participant minutes#colon;NumberDisplay
    #colon;ClockDisplay->>+minutes#colon;NumberDisplay:new NumberDisplay(60)
    minutes#colon;NumberDisplay-->>-#colon;ClockDisplay:minutes
    #colon;ClockDisplay-->>-YOU:#colon;ClockDisplay

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
    YOU->>+#colon;ClockDisplay: setTime(13,45)
    #colon;ClockDisplay->>+hours#colon;NumberDisplay:setValue(13)
    hours#colon;NumberDisplay-->>-#colon;ClockDisplay:void
    #colon;ClockDisplay->>+minutes#colon;NumberDisplay:setValue(45)
    minutes#colon;NumberDisplay-->>-#colon;ClockDisplay:void
    
    #colon;ClockDisplay->>+#colon;ClockDisplay:updateDisplay()
    #colon;ClockDisplay->>+hours#colon;NumberDisplay:getDisplayValue()
    hours#colon;NumberDisplay-->>-#colon;ClockDisplay:displayString
    #colon;ClockDisplay->>+minutes#colon;NumberDisplay:getDisplayValue()
    minutes#colon;NumberDisplay-->>-#colon;ClockDisplay:displayString
    
    deactivate #colon;ClockDisplay

    #colon;ClockDisplay-->>-YOU:void

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

    participant #colon;ClockDisplay
    participant hours#colon;NumberDisplay
    participant minutes#colon;NumberDisplay

    YOU->>+#colon;ClockDisplay: timeTick()
    #colon;ClockDisplay->>+minutes#colon;NumberDisplay:increment()
    minutes#colon;NumberDisplay-->>-#colon;ClockDisplay:void

    #colon;ClockDisplay->>+minutes#colon;NumberDisplay:getValue()
    minutes#colon;NumberDisplay-->>-#colon;ClockDisplay:value

    alt [value == 0]

    #colon;ClockDisplay->>+hours#colon;NumberDisplay:increment()
    hours#colon;NumberDisplay-->>-#colon;ClockDisplay:void
    end
  

    #colon;ClockDisplay->>+#colon;ClockDisplay:updateDisplay()
    #colon;ClockDisplay->>+hours#colon;NumberDisplay:getDisplayValue()
    hours#colon;NumberDisplay-->>-#colon;ClockDisplay:displayString
    #colon;ClockDisplay->>+minutes#colon;NumberDisplay:getDisplayValue()
    minutes#colon;NumberDisplay-->>-#colon;ClockDisplay:displayString
    deactivate #colon;ClockDisplay

    #colon;ClockDisplay-->>-YOU:void
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
    participant #colon;ClockDisplay

    YOU->>+#colon;ClockDisplay: getTime()
   
    #colon;ClockDisplay-->>-YOU:displayString

```


[2]: https://www.bluej.org/objects-first/
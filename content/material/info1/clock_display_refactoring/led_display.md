---
title: LED ClockDisplay
author: kleinen
draft: false
tags: ['bluej', 'karaclock']
courses: []
weight: 80
---
{{<prev_next >}}

## Documentation


## LEDDisplay extends ClockDisplay

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
    class LEDDisplay
    class NumberDisplay
    ClockDisplay <|-- LEDDisplay
    LEDDisplay ..> NumberDisplay
    

    class ClockDisplay{
      -String displayString
      -int minutesInDay
      void timeTick()
      void setTime(int hour, int minute)
      String getTime()
      void updateDisplay()
      String getDisplayValue(int value)
      initRealDisplay(int hour, int minute)
      updateRealDisplay()

    }
    class LEDDisplay{
      -NumberDisplay hours
      -NumberDisplay minutes
      initRealDisplay(int hour, int minute)
      updateRealDisplay()
    }

    NumberDisplay: void setValue(int)
    
```
## ClockDisplay: additional methods for clock and automatic Ticker


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

    class ClockDisplay{
      void start()
      void stop()
      void toggleTicker()
      void setTickerSpeed(int)
    }

```
## LEDDisplay: setTime() - complete 
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
    activate #colon;LEDDisplay
    YOU->>+#colon;LEDDisplay: setTime(13,45)
    #colon;LEDDisplay->>+#colon;LEDDisplay: updateDisplay()
    

    activate #colon;LEDDisplay
    #colon;LEDDisplay->>+#colon;LEDDisplay: updateRealDisplay()

    activate hours#colon;NumberDisplay

    #colon;LEDDisplay->>+hours#colon;NumberDisplay: updateDisplay(13)
    activate lower#colon;LEDDigit
    hours#colon;NumberDisplay->>+lower#colon;LEDDigit:display(3)
    deactivate lower#colon;LEDDigit
    activate upper#colon;LEDDigit
    hours#colon;NumberDisplay->>+upper#colon;LEDDigit:display(1)
    deactivate upper#colon;LEDDigit
    deactivate hours#colon;NumberDisplay


    activate minutes#colon;NumberDisplay
    #colon;LEDDisplay->>+minutes#colon;NumberDisplay: updateDisplay(45)

    activate lower_m#colon;LEDDigit
    minutes#colon;NumberDisplay->>+lower_m#colon;LEDDigit:display(5)
    deactivate lower_m#colon;LEDDigit
    activate upper_m#colon;LEDDigit
    minutes#colon;NumberDisplay->>+upper_m#colon;LEDDigit:display(4)
    deactivate upper_m#colon;LEDDigit

    deactivate minutes#colon;NumberDisplay


    deactivate #colon;LEDDisplay

    deactivate #colon;LEDDisplay
    deactivate #colon;LEDDisplay
    #colon;LEDDisplay-->>-YOU:void
```

## LEDDisplay: setTime() - ClockDisplay & NumberDisplay 
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
    activate #colon;LEDDisplay
    YOU->>+#colon;LEDDisplay: setTime(13,45)
    #colon;LEDDisplay->>+#colon;LEDDisplay: updateDisplay()
    

    activate #colon;LEDDisplay
    #colon;LEDDisplay->>+#colon;LEDDisplay: updateRealDisplay()

    activate hours#colon;NumberDisplay

    #colon;LEDDisplay->>+hours#colon;NumberDisplay: updateDisplay(13)
    
    deactivate hours#colon;NumberDisplay


    activate minutes#colon;NumberDisplay
    #colon;LEDDisplay->>+minutes#colon;NumberDisplay: updateDisplay(45)


    deactivate minutes#colon;NumberDisplay


    deactivate #colon;LEDDisplay

    deactivate #colon;LEDDisplay
    deactivate #colon;LEDDisplay
    #colon;LEDDisplay-->>-YOU:void
```



## LEDDisplay: setTime() - both NumberDisplays &  LEDDigit
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
  
    #colon;LEDDisplay->>+#colon;NumberDisplay: updateDisplay(13)
    activate lower#colon;LEDDigit
    #colon;NumberDisplay->>+lower#colon;LEDDigit:display(3)
    deactivate lower#colon;LEDDigit
    activate upper#colon;LEDDigit
    #colon;NumberDisplay->>+upper#colon;LEDDigit:display(1)
    deactivate upper#colon;LEDDigit
    deactivate #colon;NumberDisplay

```

## ClockDisplay original: setTime() copy
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


## LEDDisplay: setTime() NumberDisplay->LEDDigit
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
  activate #colon;LEDDigit
  #colon;NumberDisplay->>+#colon;LEDDigit: display(9)
  loop each Segment
    alt segment needs to be shown for value
      activate #colon;Segment
      #colon;LEDDigit->>+#colon;Segment: makeVisible()
      deactivate #colon;Segment
    else
      #colon;LEDDigit->>+#colon;Segment: makeInvisible()
      deactivate #colon;Segment
    end
  end
  deactivate #colon;LEDDigit
```

### Initialization (maybe old)

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
    create participant ClockDisplay
    YOU->>+ClockDisplay: new()

    create participant LEDClockDisplay
    ClockDisplay->>+LEDClockDisplay: new()
    create participant Canvas
    LEDClockDisplay->>+Canvas: new()
    Canvas-->>-LEDClockDisplay: canvas
    LEDClockDisplay-->>-ClockDisplay: leds

    loop [ for each number display part]
    create participant NumberDisplay
    ClockDisplay->>+NumberDisplay:new()
    NumberDisplay-->>-ClockDisplay:aNumberDisplay
    ClockDisplay->>+LEDClockDisplay: add(aNumberDisplay)
    LEDClockDisplay->>+NumberDisplay:initDisplay(pos, canvas)
    
    loop [ for each led digit]
    create participant LEDDigit
    NumberDisplay->>+LEDDigit:new(pos, canvas)

    loop [ for each led segment]
    create participant Segment
    LEDDigit->>+Segment:new(pos, canvas)
    Segment-->>-LEDDigit: segment
    end

    LEDDigit-->>-NumberDisplay: digit
    end

    NumberDisplay-->>-LEDClockDisplay:void
    LEDClockDisplay-->>-ClockDisplay:void


    end

    ClockDisplay-->>-YOU:void


```


loop [ for each display part]
---
title: LED ClockDisplay
author: kleinen
draft: true
tags: ['bluej', 'karaclock']
courses: []
weight: 80
---
{{<prev_next >}}

## Documentation


## LEDDisplay: setTime()
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
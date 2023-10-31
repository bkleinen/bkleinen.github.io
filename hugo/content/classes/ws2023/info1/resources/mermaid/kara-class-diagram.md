---
title: Kara Class Diagram 
author: kleinen
draft: false
weight: 30
CourseNav: Resources
subpages: false
---
## Kara Class Diagram 

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
classDiagram
    Kara <|-- MyKara
    Actor <|-- Kara
    
    class Actor{
      -int x
      -int y
      -int rotation
      +int getX()
      +int getY()
      +int getRotation()
    }
    class Kara{

      void move()
      void turnLeft()
      void turnRight()
      void putLeaf()
      void removeLeaf()
      boolean onLeaf()
      boolean treeFront()
      boolean treeLeft()
      boolean treeRight()
      boolean mushroomFront()
    }
    class MyKara{
      void act()
      void aroundTree()
    }
``````

### With Object (top of inheritance hierarchy)


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
classDiagram

    Kara <|-- MyKara
    Actor <|-- Kara
    Object <|-- Actor
    
    class Object{
      String toString()
      ...()
    }
    class Actor{
      -int x
      -int y
      -int rotation
      +int getX()
      +int getY()
      +int getRotation()
    }
    class Kara{

      void move()
      void turnLeft()
      void turnRight()
      void putLeaf()
      void removeLeaf()
      boolean onLeaf()
      boolean treeFront()
      boolean treeLeft()
      boolean treeRight()
      boolean mushroomFront()
    }
    class MyKara{
      void act()
      void aroundTree()
    }
``````
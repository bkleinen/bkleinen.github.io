---
title: JUnit in BlueJ
author: kleinen
draft: false
tags: ['bluej', 'junit', 'testing']
courses: ['info1']
---

## Monday, 04.December 2023

JUnit is not part of the Java API, it is a third-party software.
You find all information about JUnit, including a [user guide](https://junit.org/junit5/docs/current/user-guide/) and information about and download of the latest version on [https://junit.org](https://junit.org).

As of this writing, the current version is 5.10.1, but the version included in BlueJ 5.2.1 is JUnit 5.5.2, as you can check within the installation of BlueJ:

```zsh
BlueJ.app/Contents/Java>ls junit*
junit-4.12.jar				junit-jupiter-params-5.5.2.jar		junit-platform-suite-api-1.5.2.jar
junit-jupiter-5.5.2.jar			junit-platform-commons-1.5.2.jar	junit-vintage-engine-5.5.2.jar
junit-jupiter-api-5.5.2.jar		junit-platform-engine-1.5.2.jar
junit-jupiter-engine-5.5.2.jar		junit-platform-launcher-1.5.2.jar
```

As we only use a *very* small portion of JUnit this should not matter - but if you look something up
in the BlueJ documentation, keep this in mind. (you could also try updating JUnit in the above directory, of course. I haven't tried it.)

Also, there have been major changes for writing test cases between JUnit 4 and JUnit 5. You may find old BlueJ-Example projects which still use JUnit 4. As you can see above, both junit-4.12.jar and the vintage engine are included in BlueJ, so they will work. While mixing JUnit 4 and 5 in your source code will work, I recommend migrating old examples to JUnit 5 if you want use them, as anything else will turn out to be confusing.
You can tell by the imports which version is used in the examples:

## Minimal JUnit imports

### JUnit 5 imports

```java
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.*;
```

### Old JUnit 4 imports

```java
import org.junit.Before;
import org.junit.Test;
import static org.junit.Assert.*;
```

Note that the annotation of the setup method has also changed from `@Before` to `@BeforeEach`. 
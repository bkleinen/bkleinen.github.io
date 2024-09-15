---
title: Info2 Questions & Answers Sommersemester 2015
author: kleinen
layout: page
---



# Questions

See [https://ba-thesis.herokuapp.com/questions]({{ site.BaseURL }}/miscellany/grasp/questions)

Ask new questions here: [https://ba-thesis.herokuapp.com/questions]({{ site.BaseURL }}/miscellany/grasp/questions)

# Answers


##Question #11
This question was asked on May 29, 2015 22:29.

Ich habe ein Problem mit der Anpassung des Dreiecks an die Fenstergröße, dies soll entweder abhängig von der Höhe oder der Breite von Dreieck und Fenster geschehen. Das Problem ist nun, dass sich das Dreieck entweder nicht wirklich proportional der Fenstergröße anpasst, oder sich die Seitenverhältnisse ändern, sodass die Grundseite kürzer erscheint als die zum oberen Punkt führenden Seiten. Wie könnte man dafür sorgen, dass die Seiten wirklich immer gleichlang bleiben ?

### Answer

Indem sie zunächst ausrechnen, ob die Höhe oder die Breite die Größe Ihres Dreiecks limitiert: die Höhe ist (Wurzel 3) halbe der Grundseitenlänge; (Siehe [Wikipedia zu gleichseitigem Dreieck](https://de.wikipedia.org/wiki/Gleichseitiges_Dreieck)) - d.h. wenn Ihr Fenster höher ist als das, beschränkt die Breite die Größe, ist es niedriger, müssen Sie sich nach der maximalen Höhe richten. Das Dreieck bleibt immer gleichseitig, indem sie einen Punkt (z.B. links unten) festlegen und die zwei anderen Punkte daran orientieren, nicht an der Fenstergröße.

##Question #10

This question was asked on May 29, 2015 21:00.

Wenn ich Ihre Klasse als Grundlage nehme und bei paintSierpinskiTriangle eine Linie zeichne (g.drawLine), passiert nichts, also wird keine Linie gezeichnet und wenn ich dann das Fenster durch Ziehen vergrößere, ist alles was dazugekommen ist an Fläche schwarz. Woran kann das liegen ?


### Answer

Ist ohne Ihren Source Code zu sehen für mich nicht nachzuvollziehen - ich habe im [Branch line](https://github.com/htw-imi-info2/Lab08_SierpinskiTriangle/blob/line/src/triangle/SierpinskiTriangle.java) eine Linie und ein Dreieck hinzugefügt und beide resizen mit. (das Dreieck das hier gezeichnet wird ist <font face = "bold">nicht</font> gleichseitig!)

## Question 3 .:  how can I draw a Rectangle on the screen?

This question was asked on May 26, 2015 10:57.

### Answer:
I've provided a scaffold project which can be found here in case you can't find your sources from last
semester ;-) - [https://github.com/htw-imi-info2/Lab08_SierpinskiTriangle/tree/ss2015](https://github.com/htw-imi-info2/Lab08_SierpinskiTriangle/tree/ss2015)

## Question 4+5: static context

This question was asked on May 26, 2015 17:29.

 Ich bekomme ständig die Fehlermeldung "Cannot make a static reference to the non-static field/method [..]". Dieses Problem lässt sich zwar sehr leicht durch ein "static" vor dem entsprechenden Feld bzw. Methode lösen. Ich wüsste aber trotzdem gern was genau hinter "static reference" bzw. "non-static ..." steht.

 Ein Nachtrag zur vorhergehenden Frage (#4): Ebenfalls verwirren mich Fehlermeldungen wie "The static method [..] from the type [..] should be accessed in a static way".

### Answer:

Das Keyword `static` vor einem Feld oder einer Methode bedeutet, dass dieses Feld zur Klasse gehört. Man kann sich das so vorstellen, als sei die Klasse selbst wie ein Objekt, d.h. eine Instanz (in anderen Programmiersprachen sind sie das tatsächlich, z.B. ist in Ruby die Klasse eine Instanz der Klasse `Class`).

D.h. wenn sie z.B eine Klasse "Auto" haben, dann können sie ganz viele Instanzen (Objekte, die zu dieser Klasse gehören) haben: `auto1`, `auto2`, `auto3`, und sie haben immer die
Klasse selbst, `Auto`, die ein bischen wie ein Objekt ist, d.h. sie kann Felder (Klassenvariablen im Unterschied zu Instanzvariablen) und Methoden haben, beides mit `static`gekennzeichnet.

    class Auto{
      static int standardFarbeFuerNeueAutos = Color.BLACK;
      Color farbe;
    }

Jede dieser Instanzen hat einen eigenen Satz von Instanzvariablen (Feldern) - d.h. `auto1.farbe`, `auto2.farbe`, `auto3.farbe` sind verschiedene Variablen und können verschiedene Werte haben.
Wenn eine Variable zur Klasse gehört, d.h. mit static gekennzeichnet ist, dann gehört sie zur Klasse, also zu `Auto` - wie hier `standardFarbeFuerNeueAutos` - diese "hängt" nicht an einer der drei Instanzen, sondern der Klasse selbst, und muss ggfs. entsprechend referenziert werden: `Auto.standardFarbeFuerNeueAutos`.

Den Fehler bekommen Sie vermutlich, weil Sie in der main - Klasse - die immer statisch sein muss, weil man beim Start des Programms noch keine Instanz von irgendwas hat - anfangen zu programmieren.

Eine gute Lösung dafür ist, direkt in den Kontext einer Instanz zu wechseln, z.B.:

    class MyProgram{
      public static void main(String [] args){
        // this is within the static context
        MyProgram theInstance = new MyProgram();
        theInstance.doSomething();
      }
      void doSomething(){
        // and now we are within an instance.
      }

    }

Siehe auch [Understanding Class Members](https://docs.oracle.com/javase/tutorial/java/javaOO/classvars.html) im Java-Tutorial
oder entsprechende Abschnitte über den Unterschied zwischen Klassen und Objekten und Klassenvariablen in anderen Quellen.


## Question #6

This question was asked on May 28, 2015 07:44.

Wie schafft man es, dass ein 'Canvas' darauf reagiert, dass man das umgebene Fenster durch Ziehen vergrößert bzw. verkleinert. Es würde mir auch schon reichen zu wissen, welche Methode welcher Klasse man dafür nutzen kann sich die Maße des größer gezogenen Fensters ausgeben zu lassen. Zudem würde mich interessieren, ob man das Canvas darauf coden muss, dass es auf eine Größenänderung des Fensters reagiert, oder ob es das bei einer bestimmten Methode von selbst macht.

### Answer:

Sie finden ein Beispiel hier: [https://github.com/htw-imi-info2/Lab08_SierpinskiTriangle/tree/ss2015](https://github.com/htw-imi-info2/Lab08_SierpinskiTriangle/tree/ss2015) - das funktioniert über das Observer/Listener-Pattern:

Zunächst wird Hauptpanel die paint() Methode überschrieben und durch den Aufruf von paintSierpinskiTriangle() ergänzt:

    panel = new JPanel() {
      @Override
      public void paint(Graphics g) {
        super.paint(g);
        paintSierpinskiTriangle(g, getSize());
      }
    };

Dann wird über addComponentListener() ein Listener hinzugefügt, der "benachrichtigt" wird, wenn das Panel resized wurde. Dieser ruft repaint() auf ()

    panel.addComponentListener(new ComponentAdapter() {
      @Override
      public void componentResized(ComponentEvent e) {
        panel.repaint();
      }
    });

Siehe auch [Panel#repaint](https://docs.oracle.com/javase/8/docs/api/java/awt/Component.html#repaint--)

# Question #7

This question was asked on May 28, 2015 08:15.

Vorab etwas off-topic: Ich habe versucht die seite über den rechner abzurufen (firefox). Jedoch kommt dort die meldung: "Application Offline for Maintenance - This application is undergoing maintenance right now. Please check back later." Woran auch immer das liegt.

Welche Seite? Funktioniert es jetzt wieder?

### Und zur&uuml;ck zu info2:

Mein sierpinksy dreieck wird mir bis stufe x angezeigt. Doch habe ich das problem, dass es "schräg" verläuft. Ausgangspunkt für die obere spitze ist 0/0 auf dem bildschirm. Wie schaffe ich es, dass es "normal" aussieht?!

### Answer

Sie müssen sich einen Punkt als Ausgangspunkt nehmen und die jeweils zwei anderen Punkte daraus berechnen. Das geht mit Hilfe des [Satz des Phytagoras](https://de.wikipedia.org/wiki/Satz_des_Pythagoras), wenn Sie sich die Eigenschaften eines [gleichseitigen Dreiecks](https://de.wikipedia.org/wiki/Gleichseitiges_Dreieck) in Erinnerung rufen und die Abstände der Punkte auf der x- und y-Achse berechnen.
Zeichnen Sie sich das Dreieck auf und notieren sie dort, wo welcher Punkt ist und nennen Sie ihre Variablen genau so wie auf Ihrer Zeichnung.


# Question #8
This question was asked on May 28, 2015 08:18.

Mein dreieck wird mit lines gezeichnet. Ich kann auch jede neue line mit einer anderen farbe versehen (randomized r/g/b). Gemäß aufgabenstellung sollen die dreiecke aber jeweils einfarbig und von stufe zu stufe andersfarbig sein. Sollen die dreiecke gefüllt sein und wie kann ich die einfarbigkeit bewerkstelligen?!

### Answer

Bei der Farbgebung können Sie gerne experimentieren, Sie können auch selbst entscheiden, ob Sie die Dreiecke füllen wollen oder nicht.
Ihre Frage ist schwierig zu beantworten ohne den Sourcecode zu sehen, weil es ja eigentlich erstmal einfacher sein müsste, drei Linien in derselben Farbe zu zeichnen
als in jeweils einer anderen, insofern kann ich hier nur sagen: indem Sie die selbe Farbe verwenden bzw. zwischen dem Zeichnen nicht ändern.

# About

Felix Brix has taken on the project of developing an gamified Q&A application for Info1 and Info2.

Currently, he is collecting Questions to have material for his concept.
Eventually, this will be an App that can be used by IMI (and other students)
for Q&A, maybe somewhat like Stack Overflow with the possibility to upvote
questions and also encouraging students to answer questions and earning credits
for the course if they provided useful answers to their peers.

You can enter questions anonymously here: [https://ba-thesis.herokuapp.com/]({{ site.BaseURL }}/miscellany/grasp/),
and I'll answer them around Saturday at noon latest for the current week.
You find a list of questions here [https://ba-thesis.herokuapp.com/questions]({{ site.BaseURL }}/miscellany/grasp/questions) and
their answers there: [QUAME](../quame)

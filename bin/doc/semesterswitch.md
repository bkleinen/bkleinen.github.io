# How to switch semester / term

- update link aktuelles_semester
- update main menu in config/_default/menu.toml
- Daten für LV generieren: (anpassen und ausführen) ruby bin/ruby-dates.rb,
mit multi-column selection in den schedule kopieren


## Additional changes

- fix the reference links introduced in sose 2021:

- introduced video.html shortcut

replace links 

\[(.*)\]\[(\d\d\d\d?)\]
{{< video "$1" $2 >}}

{% comment %}
the new videos cover chapter 01-02,
but there's an older channel with videos related to the 5th edition:

https://www.youtube.com/channel/UCCSsr1P1FmCeRVQ1--WZj5Q

sorted:

https://www.youtube.com/user/objectsfirstwithjava/videos?view=0&sort=da&flow=grid

9 - 7 in 5th https://www.youtube.com/watch?v=_CvzkTVaBxQ same examples
10 - 8 in 5th same examples
11 - 9 in 5th - same examples

13- 11 - but new 13 adds lambdas as event handlers

Chapter 8: VN 8.1 Identifying code duplication as possible grounds for inheritance

Chapter 2 hat in der neuen fassung 9 videos, in der alten nur 3 mit ca 40 min altogether
{% endcomment %}

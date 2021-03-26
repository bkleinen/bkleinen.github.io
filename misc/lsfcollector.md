---
title: LSF Email Collector
author: kleinen
---
<html>
<body>
<script>
  function convert(){
    const source = document.getElementById("lsfstuff").value;
    const arrayOfLines = source.match(/[^\r\n]+/g);
    const emails = arrayOfLines.map(x => x.replace(/\s*(\d{6}) - .*/, "s0$1@htw-berlin.de"));
    const emailSet = new Set(emails);
    const emailsSingle = Array.from(emailSet);
    document.getElementById("emailarea").innerHTML = emailsSingle.join("\n");
    document.getElementById("number_emails").innerHTML = emailsSingle.length + " unique addresses";
  }
</script>
<h2>Email Collector for LSF</h2>
Links Liste aus "Spezielle Information (Namenliste mit Anmeldungen und Ablehnungen)"pasten.
<a href="#anleitung">mehr info unten.</a>
  <table>
    <tr valign="top">
      <td>
        <div>Paste list from LSF here</div>
        <textarea id = "lsfstuff" cols="60" rows="100" onchange="convert()" ></textarea>
      </td>
      <td><button onclick="convert()">Show Email Adresses</button></td>
      <td><div id = "number_emails">here be dragons</div>
         <textarea id = "emailarea" cols="30" rows="100"></textarea>
      </td>
    </tr>
  </table>
<hr/>
<h2 id ="anleitung">Anleitung</h2>
<p>In die Box links den Inhalt der Tabelle "Spezielle Information (Namenliste mit Anmeldungen und Ablehnungen)"
  pasten.<br/> Weg dorthin: Unten auf "Anmeldezahlen" und dann "Spezielle Information" klicken.</p>
  <p><img src="{{ site.baseurl }}/misc/images/anmeldezahlen.png" alt="anmeldezahlen.png">
  <img src="{{ site.baseurl }}/misc/images/SpezielleInformation.png" alt="SpezielleInformation.png"/>
  </p>
  </body>
  </html>

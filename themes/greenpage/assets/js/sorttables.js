//https://stackoverflow.com/questions/14267781/sorting-html-table-with-javascript

function sort_all_tables(){
    const getCellValue = (tr, idx) => tr.children[idx].innerText || tr.children[idx].textContent;
    const comparer = (idx, asc) => (a, b) => ((v1, v2) =>
        v1 !== '' && v2 !== '' && !isNaN(v1) && !isNaN(v2) ? v1 - v2 : v1.toString().localeCompare(v2)
        )(getCellValue(asc ? a : b, idx), getCellValue(asc ? b : a, idx));

document.querySelectorAll('th').forEach(th => th.addEventListener('click', (() => {
    const table = th.closest('table');
    const tbody = table.querySelector('tbody')
    Array.from(tbody.querySelectorAll('tr:nth-child(n+1)'))
        .sort(comparer(Array.from(th.parentNode.children).indexOf(th), this.asc = !this.asc))
        .forEach(tr => { tbody.appendChild(tr) });
})));


    var table_headings = document.getElementsByTagName("th");
    for (i = 0; i < table_headings.length; i++) {
      table_headings[i].classList.add("sortable");
    }
}

if (sortTables){
  sort_all_tables();
} else {
  if (stripedTables) {
    var tables = document.getElementsByTagName("table");
    for (i = 0; i < tables.length; i++) {
      tables[i].classList.add("table");
      tables[i].classList.add("table-sm");
      tables[i].classList.add("table-striped");
    }
  }
}

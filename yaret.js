// Cookie functions
function createCookie(name,value,days) {
  if (days) {
    var date = new Date();
    date.setTime(date.getTime()+(days*24*60*60*1000));
    var expires = "; expires="+date.toGMTString();
  }
  else var expires = "";
  document.cookie = name+"="+value+expires+"; path=/";
}
function readCookie(name) {
  var nameEQ = name + "=";
  var ca = document.cookie.split(';');
  for(var i=0;i < ca.length;i++) {
    var c = ca[i];
    while (c.charAt(0)==' ') c = c.substring(1,c.length);
    if (c.indexOf(nameEQ) == 0) return c.substring(nameEQ.length,c.length);
  }
  return null;
}
function eraseCookie(name) {
        createCookie(name,"",-1);
}
function hidetr(i) {
        var color = document.getElementById(i).style.color;
        if (color != "rgb(76, 76, 76)") {
                document.getElementById(i).style.color = "#4C4C4C";
                document.getElementById(i).oldColor = color;

                var children = document.getElementById(i).getElementsByTagName("TD");
                for (var i=0; i<children.length; i++) {
                        children[i].oldColor = children[i].style.color;
                        children[i].style.color = "#4C4C4C";
                }
                sessionStorage.setItem(i,"hide");
        }
        else {
                document.getElementById(i).style.color = document.getElementById(i).oldColor;
                var children = document.getElementById(i).getElementsByTagName("TD");
                for (var i=0; i<children.length; i++) {
                        children[i].style.color = children[i].oldColor;
                }
                sessionStorage.removeItem(i);
        }
}
function initialize() {
  // Add handlers to th's to set sort col pref
  var headers = ["Event", "Shard", "Zone", "Age"]; 
  var headerfuncs = [];
  function clickheader(i) {
    return function() { createCookie("sort",i,365); };
  }
  for (var h=0; h<headers.length; h++) {
    var elements = document.getElementsByClassName(headers[h]);  
    headerfuncs[h] = clickheader(headers[h]);
    for (var i=0; i<elements.length; i++) { 
      elements[i].addEventListener('click', headerfuncs[h]);
    }
  }
  // If sort col pref is set, sort on page load
  var sortpref = readCookie('sort');
  if (sortpref) {
    var sortname = sortpref + "";
    var elements = document.getElementsByClassName(sortname);
    for (var i=0; i<elements.length; i++) {
      sorttable.innerSortFunction.apply(elements[i], []);
    }
  }
  // If HTML5 local storage is available, use it to keep track of
  // events user does not want to see
  if (typeof(Storage) != "undefined") {
        var trfuncs = [];
        function clicktr(i) {
                return function() { hidetr(i); };
        }
        var elements = document.querySelectorAll('.relevant, .oldnews');
        for (var i=0; i<elements.length; i++) {
               trfuncs[i] = clicktr(elements[i].id);
               elements[i].addEventListener('click', trfuncs[i]);
               var id = elements[i].id;
               if (sessionStorage.getItem(id) == "hide") { hidetr(id); }
        }
  }
}
function clearLocalStorage() {
        sessionStorage.clear();
}
window.onload = initialize;
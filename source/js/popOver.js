var obj;
var state;

window.onload = function() {
  obj = document.getElementById('popOverImg');
  readCookie();
  document.getElementById('remove').onclick = function() {
    obj.className = 'hide';
  }
}

function setCookie() {
  exp = new Date();
  plusDay = exp.getTime() + (24 * 60 * 60 * 1000);   /* cookie is set for 24 hours*/
  exp.setTime(plusDay);
  document.cookie = 'State=' + state + ';expires=' + exp.toGMTString();
}

function readCookie() {
  if (document.cookie) {
    state = document.cookie.split('State=')[1];
    obj.className = state;
  } else {
    state = 'hide';
    setCookie();
  }
}

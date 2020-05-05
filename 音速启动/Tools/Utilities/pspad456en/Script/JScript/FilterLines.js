// FilterLines 0.002a now works on lines that contain [ and ] (and probably other special characters as well)
var module_name = "FilterLines";
var module_author = "John Schroeder (updated it from 0.001a)";
var module_ver = "0.002a";

// Returns all lines that contain what the user has selected (case sensitive I think)
function FilterForSelection() {
  var edLog = newEditor();
  edLog.assignActiveEditor();

  var edFilter = newEditor();
  edFilter.NewFile();

  var d = edLog.selText();
  //var r = new RegExp(d, i);
  var s = edLog.Text();
  var l = s.split("\n");
  var i;

  for (i in l) {
    var t = l[i];
    //var x = t.search(r);
    //var x = t.search(d);
    x = t.indexOf(d);

    if (x >= 0) {
      edFilter.appendText(t);
    }
  }
}

// Returns all lines that DO NOT contain what the user has selected (case sensitive I think)
function FilterOutSelection() {
  var edLog = newEditor();
  edLog.assignActiveEditor();

  var edFilter = newEditor();
  edFilter.NewFile();

  var d = edLog.selText();
  //var r = new RegExp(d, i);
  var s = edLog.Text();
  var l = s.split("\n");
  var i;

  for (i in l) {
    var t = l[i];
    //var x = t.search(r);
    //var x = t.search(d);
    x = t.indexOf(d);

    if (x < 0) {
      edFilter.appendText(t);
    }
  }
}

function Init() {
  addMenuItem("Filter For Selection", "Filter lines", "FilterForSelection");
  addMenuItem("Filter Out Selection", "Filter lines", "FilterOutSelection");
}


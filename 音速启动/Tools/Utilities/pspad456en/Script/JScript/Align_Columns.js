// Copy this in the Script/JScript subfolder of your PSPad installation.
// Access it from PSPad in Script/Align Column.
// ---------------------------------------------------------------------------
// Align Columns for PSPad
//
// Raw version (2010-08-13). May be subject to rewrite for better
// readability.
//
// Author, contact ("complaints", questions and comments):
//    Yannick Duchêne
//    yannick_duchene@yahoo.fr
//    France (somewhere in Europe)
//
// Align columns in the current selection using a prompeted
// delimiter which may be either a single character of a string.
//
// Each line must contains at least one occurence
// of the delimiter. If not, then this does not
// change the content of the selection.

// ---------------------------------------------------------------------------
// JSLint configuration: do not remove.
// This is used to check for potential errors
// in JavaScript sources.
/*jslint adsafe:false */
/*jslint bitwise:true */
/*jslint browser:false */
/*jslint debug:false */
/*jslint eqeqeq:true */
/*jslint evil:false */
/*jslint forin:true */
/*jslint nomen:false */
/*jslint plusplus:true */
/*jslint undef:true */

/*extern
   newEditor
   echo
   inputText
   addMenuItem
*/

// ---------------------------------------------------------------------------
// Integration into PSPad

var module_name = "AlignColumnJS";
var module_ver = "0.001a";

// ---------------------------------------------------------------------------

var editor;
// The current editor.
// Must be initialized by entry points.

// ---------------------------------------------------------------------------
// A procedure entry point procedures must invok before doing theire work.

function initializeCommand () // Returns nothing
{
   editor = newEditor ();
   editor.assignActiveEditor ();
}

// ---------------------------------------------------------------------------
// If in a selected block, the selection does not start at the first
// character of its first line, then set the selection start at the first
// character of the first line. If the selection does not include the full
// last line, then update the selection so that the last line is
// entirely selected.

function ensureSelectionCoverLinesInWhole () // Returns nothing
{
   var firstLineNumber; // Number
   var lastLineNumber; // Number

   firstLineNumber = editor.blockBeginY ();
   lastLineNumber = editor.blockEndY ();
   lastLineNumber = lastLineNumber + 1;
   // lastLineNumber + 1 with X set to 1, beceause blockEnd is a limit
   // and we want to select the whole last line.

   if (editor.blockEndX () === 1) {
      lastLineNumber = lastLineNumber - 1;
      // If the selection's limit is 1, then the last line is not to
      // be selected.
   }

   editor.setBlockBegin (1, firstLineNumber);
   editor.setBlockEnd (1, lastLineNumber);
}

// ---------------------------------------------------------------------------
// Test is a character stands for an end of line marker.

function isEndOfLine (c) // Returns boolean
{
   if (c === "\n") {
      return true;
   }
   else if (c === "\r") {
      return true;
   }
   else {
      return false;
   }
}

// ---------------------------------------------------------------------------
// Returns either the last character of a string, the last item
// of an array, or null.

function last (a) // Return null of the type of element of "a"
{
   if (a.length === 0) {
      return null;
   }

   if (typeof(a) === "object") {
      return a[a.length - 1];
   }
   else if (typeof(a) === "string") {
      return a.substring (a.length - 1, a.length);
   }
   else {
      return null;
   }
}

// ---------------------------------------------------------------------------
// Returns a string composed of count spaces.

function spaces (count) // Returns strings
{
   var result = "";

   while (result.length < count) {
      result += " ";
   }
   
   return result;
}

// ---------------------------------------------------------------------------
// Returns true if a selection is present is the editor.

function editorHasSelection () // Returns boolean
{
   return editor.selLength () > 0;
}

// ---------------------------------------------------------------------------
// Get all lines in the actual selection and return these lines in an array of
// lines. If the first and last line are partially selected, the the selection
// if first updated to ensure all lines are fully covered by the selection.

function getSelectedLines () // Returns array of strings
{
   var text; // String
   var lines; // Array of strings
   var i; // Index in lines
   var line; // item from lines at i
   var lastCharacter;

   ensureSelectionCoverLinesInWhole ();
   text = editor.selText ();
   lines = text.split ("\n");

   // We still have to remove end of line characters.

   for (i = 0; i < lines.length; i += 1) {
      line = lines[i];
      lastCharacter = last (line);
      if (isEndOfLine (lastCharacter)) {
         lines[i] = line.substring (0, line.length - 1);
      }
   }

   // Get ride of the last-blank-line artifact.
   // In our interpretation, after the last end of line,
   // there is nothing ; so remove the last-blank-line if
   // this was caused by a last end of line.
   lastCharacter = last (text);

   if (isEndOfLine (lastCharacter)) {
      if (last (lines) === "") {
         // This should indeed be "", but better to check.
         lines.pop ();
      }
   }

   return lines;
}

// ---------------------------------------------------------------------------
// Returns an array of lines from the current editor selection. While
// doing so, it ensures all lines are fully selected.
// See also ensureSelectionCoverLinesInWhole, which this method invoks.

function setSelectedLines (lines) // Returns nothing
{
   var text; // String

   ensureSelectionCoverLinesInWhole ();

   text = lines.join ("\n") + "\n";
   // CheckMe: Does PSPad always handle this properly
   // whatever is the line-ending mode of the file ?

   editor.selText (text);
}

// ---------------------------------------------------------------------------

function commandAlignColumn () // Returns nothing
{
   // ------------------------------------------------------------------------
   // May return an empty array, which means the delimiter
   // was not found, so the line contains no column at all.

   function getColumnsInLine (line, delimiter) // Array of strings
   {
      if (line.indexOf (delimiter) === -1) {
         // This makes no sense to split a line using
         // a delimiter which does not exist in the
         // line.
         return [];
      }

      return line.split (delimiter);
   }

   // ------------------------------------------------------------------------
   // May return an empty array, which means the delimiter
   // was not found, so the line contains no column at all.

   function getColumnWidthsInLine (line, delimiter) // Array of numbers
   {
      var columns;
      var result;
      var i;

      columns = getColumnsInLine (line, delimiter);
      result = [];

      for (i = 0; i < columns.length; i += 1) {
         result.push (columns[i].length);
      }
      
      return result;
   }

   // ------------------------------------------------------------------------
   // Returns column width, exluding the width of the column
   // delimiter.

   function getColumnWidthsInLines (lines, delimiter) // Array of numbers
   {
      var result = [];
      var widths;
      var i;
      var j;

      for (i = 0; i < lines.length; i += 1) {

         widths = getColumnWidthsInLine (lines[i], delimiter);
         
         if (widths.length === 0) {
            // Each line should hold at least a column.
            return [];
         }

         if (result.length < widths.length) {
            while (result.length < widths.length) {
               result.push (0);
            }
         }
         for (j = 0; j < widths.length; j += 1) {
            if (widths[j] > result[j]) {
               result[j] = widths[j];
            }
         }
      }
      
      return result;
   }

   // ------------------------------------------------------------------------
   // Set all column, delimited by delimiter, to the widths
   // with given by widths at the corresponding column index.
   // Column content are first extracted and delimiters added back
   // after. No delimiter is added back after the last column.
   // The result is like this : get all column contents, set
   // columns content widths according to widths, rebuild the line
   // using resized columns content adding delimiter between
   // columns.

   function withColumnsWidthsAdjusted (line, delimiter, widths) // String
   {
      var columns = getColumnsInLine (line, delimiter);
      var column;
      var result = "";
      var i;
      
      for (i = 0; i < columns.length; i += 1) {
         column = columns[i];
         if (i < columns.length - 1) {
            column += spaces (widths[i] - column.length);
            column += delimiter;
         }
         result += column;
      }
      
      return result;
   }

   // ------------------------------------------------------------------------
   // Compute and apply column width.
   // See getColumnWidthsInLines and withColumnsWidthsAdjusted which
   // this one invok.
   // If ever one line does not contain the delimiter, then
   // return lines unchanged.

   function withColumnsAligned (lines, delimiter) // Array of strings
   {
      var widths;
      var line;
      var i;

      widths = getColumnWidthsInLines (lines, delimiter);

      if (widths.length === 0) {
         echo (
            "The delimiter \"" +
            delimiter +
            "\" is missing from at least one line.");
         return lines; // Do not change lines.
      }
      
      for (i = 0; i < lines.length; i += 1) {
         lines[i] = withColumnsWidthsAdjusted (
            lines[i], 
            delimiter, 
            widths);
      }
      
      return lines;
   }

   // ------------------------------------------------------------------------
   // Main

   var lines;
   var delimiter;
   var cancelValue = "[--canceled--]";

   initializeCommand ();

   // Get selection content
   
   if (!editorHasSelection ()) {
      echo ("Missing a selection");
      return;
   }

   lines = getSelectedLines ();

   // Get the column delimiter

   delimiter = inputText (
      "Input delimiter (may be a string)",
      "",
      cancelValue);
   
   if (delimiter === cancelValue) {
      return;
   }

   if (delimiter === "") {
      echo ("Error: the delimiter may not be empty");
      return;
   }

   // Do the useful stuff

   lines = getSelectedLines ();
   lines = withColumnsAligned (lines, delimiter);
   setSelectedLines (lines);
}

// ---------------------------------------------------------------------------
// Integration into PSPad

function Init ()
{
   addMenuItem ("Align Column", "", "commandAlignColumn");
}

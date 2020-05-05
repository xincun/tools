


SearchMyFiles v1.80
Copyright (c) 2009 - 2011 Nir Sofer
Web site: http://www.nirsoft.net



Description
===========

SearchMyFiles is an alternative to the standard "Search For Files And
Folders" module of Windows. It allows you to easily search files in your
system by wildcard, by last modified/created/last accessed time, by file
attributes, by file content (text or binary search), and by the file
size. SearchMyFiles allows you to make a very accurate search that cannot
be done with Windows search. For Example: You can search all files
created in the last 10 minutes with size between 500 and 700 bytes.
After you made a search, you can select one or more files, and save the
list into text/html/csv/xml file, or copy the list to the clipboard.

SearchMyFiles is portable, and you can use it from a USB flash drive
without leaving traces in the Registry of the scanned computer.



System Requirements
===================

This utility works on any version of Windows starting from Windows 2000
and up to Windows 7.



Versions History
================


* Version 1.80:
  o Drag & Drop support: You can now drag one or more files from
    SearchMyFiles into a folder of Windows Explorer or any other software
    that supports Drag & Drop of files.

* Version 1.76:
  o Added 'Duplicate Group' column for duplicate search mode. You can
    use this column to easily delete duplicate files found by the
    duplicate search mode: Simply click the 'Duplicate Group' header to
    sort the files list by duplicate groups, and then you can leave the
    first group (group number 1) and delete the other groups (2 and
    above).

* Version 1.75:
  o On multiple values search - added option to choose 'Or' (Find one
    of the values) or 'And' (Find all values).

* Version 1.72:
  o The size and position of the 'Search Options' window are now
    saved in the .cfg file and loaded in the next time that you run the
    SearchMyFiles utility.

* Version 1.71:
  o Added /ExplorerCopy command-line option, which allows you to
    automatically copy the search result into the clipboard in Windows
    Explorer format, and then paste the found files into another folder
    in Windows Explorer.
  o Added x64 version, for making proper search under system32
    directory of Windows. (On the 32-bit version of SearchMyFiles, the
    search is redirected to WOW64 folder).

* Version 1.70:
  o Added 'Scan NTFS symbolic links/junction points' option.
  o The date/time values are now saved/loaded in the .cfg file.
  o Added command-line options to set date/time range to scan:
    /FileTimeAccessed1, /FileTimeAccessed2 , /FileTimeModified1,
    /FileTimeModified2, /FileTimeCreated1, /FileTimeCreated2

* Version 1.66:
  o Fixed bug: SearchMyFiles failed to find any file when 'File
    Contains' option is set to none and you previously set SearchMyFiles
    to search only in alternate streams.

* Version 1.65:
  o Added option to search text inside alternate streams of NTFS file
    system. This feature can be useful if your want to locate a file by
    its summary information, like Title, Subject, Author, Keywords, and
    so on... because this information is stored inside alternate stream.

* Version 1.62:
  o Fixed bug: SearchMyFiles failed to load properly the
    configuration with 'Load From Config File' option.

* Version 1.61:
  o Added "File Doesn't Contain..." option, which allows you to find
    all files that doesn't contain the specified text/data.

* Version 1.60:
  o Added new search mode - 'Non-Duplicates Search' which allows you
    to find all files in the specified folders that are not duplicated.

* Version 1.56:
  o Added option to search multiple text/binary values, delimited by
    comma (in 'File Contains...' option)

* Version 1.55:
  o Added 'Minimize/Restore Both Windows At Once' option. When this
    option is turned on, minimizing/restoring the main window also
    automatically minimizes/restores the 'Search Options' window.

* Version 1.53:
  o Added 'Add Header Line To CSV/Tab-Delimited File' option. When
    this option is turned on, the column names are added as the first
    line when you export to csv or tab-delimited file.

* Version 1.52:
  o Fixed bug: When running SearchMyFiles with /BaseFolder
    command-line option or by using the Explorer context menu,
    SearchMyFiles sometimes started with the wrong folder.

* Version 1.51:
  o Added 'Explorer Context Menu' option. When it's turned on,
    'SearchMyFiles' menu item is added to the context menu of any folder
    in Windows Explorer. Choosing this menu item opens SearchMyFiles with
    selected folder as the base folder of the search.

* Version 1.50:
  o Added 'Exclude Extensions' option, which allows you to exclude
    one or more extensions from the search result. For example, if you
    specify 'exe dll ocx' in this field, exe/dll/ocx files won't be
    displayed in the search result.
  o When saving the search result to html, the files are now
    displayed as links that open the specified file.

* Version 1.48:
  o Fixed issue: Removed the wrong encoding from the xml string,
    which caused problems to some xml viewers.

* Version 1.47:
  o You can now send the search result to stdout by specifying an
    empty filename ("") in the command-line. (For example:
    SearchMyFiles.exe /stab "" >> c:\temp\search.txt)
  o Fixed bug: SearchMyFiles continued to search infinitely if the
    subfolder wildcard was empty.

* Version 1.46:
  o Fixed bug: pressing the Delete key in the 'Search Options' or in
    the find window activated the 'Move To Recycle Bin' option in the
    main window.

* Version 1.45:
  o The 'Search Options' window is now a Modeless dialog-box, which
    means that it won't be closed when you start the search and you can
    leave it open during the search and after the search is finished.
  o Added 'Set Focus On Search Start' and 'Set Focus On Search End'
    options to determine whether the focus is moved to the main window
    when the search is started and finished.

* Version 1.40:
  o Added /StartSearch command-line option, which allows you to start
    a search without displaying the Search Options window.
  o The 'Browse' button of 'Base Folders' and 'Excluded Folders' in
    the 'Search Options' window now allows you to add more than one
    folder, when one or more folders are already listed in the text-box.
  o Added 'File Position' and 'File Content' columns for file content
    search. When the 'File Contains' field is not 'None' (text or
    binary), the 'File Position' column displays the position (in bytes)
    that the data was found, and the 'File Content' column displays the
    characters around the found text/binary data.

* Version 1.37:
  o Fixed bug: On duplicate search, SearchMyFiles displayed zero size
    files.

* Version 1.36:
  o Fixed the location of 'Read Only' and 'System' labels, which was
    mistakenly changed in v1.35 release.

* Version 1.35:
  o New search mode: Duplicate Search - allows you to easily find
    duplicate files on your system. (See below)
  o Changed the delete accelerator key to Shift+Delete, like Explorer.

* Version 1.30:
  o Added 'Reset To Default' button that allows you to easily reset
    the 'Search Options' dialog-box.
  o Added 'Open File On Double-Click' option. When this option is
    checked, double-clicking a file will open it with the default
    program, like double-click in Explorer.
  o Added new actions that you can make on the selected files of the
    search result: Explorer Cut, Delete, Move To Recycle Bin, and Rename.
  o In the search option of file times, added 'Today' and 'Since Last
    Reboot'.
  o Added most-recently-used (MRU) list in combo-boxes of the search
    dialog-box. SearchMyFiles automatically remembers the last 10 strings
    that you used for every field, and allows you to easily select them
    from the Combo-Box. If you don't want that your last search strings
    will be saved in the .cfg file (from privacy reasons), you can select
    the "Don't Save MRU Lists" option in the Options menu.
  o Fixed the 'Subfolders Wildcard' issue according to users request.
    Just for example: In previous version, if you tried to search in c:\
    with abc*.* as subfolders wildcard, and you had a folder in
    c:\hello\bbbbb\abc123, SearchMyFiles utility didn't search in this
    folder even when abc123 folder matched the folder name, and that's
    because the folder below, bbbbb, wasn't match the subfolders
    wildcard. Starting from this version, SearchMyFiles scan all
    subfolders, even if they don't match the wildcard, but the actual
    file search is only made for subfolders that match the subfolders
    wildcard.

* Version 1.20:
  o Added /sort command-line option for sorting the search result you
    save from command-line.

* Version 1.16:
  o Added 'Copy Full Filenames Path' - Allows you to copy the list of
    selected filenames as a full path filenames list, delimited by enter
    (CRLF).

* Version 1.15:
  o Added command-line support.
  o Added 'Select File In Explorer' option.

* Version 1.10:
  o Fixed bug: Base folder combo-box limited the number of characters
    that you could type.
  o Added option to save/load all search option to .cfg file.
  o Added 'Explorer Copy' option - Allows you to copy the selected
    files and then paste them inside a folder of Windows Explorer.
  o Added 'Open With' option.
  o Added option to choose the subfolders depth to scan.

* Version 1.00 - First release.



Future Versions
===============

The following features might be added in future versions, according to
user requests and my own ideas:
* Add Explorer-like context-menu that will allow to do some actions on
  the files appeared in the search result.
* Fix the folder wildcard feature to work like most users expect.
* Add 'Aggregate Reports' option - Instead of displaying all found
  files, display only summary of found files - count, total size, average
  file size, and so on.
* Search files by alternate stream data.
* Search the content of files by regular expressions.
* An option to search file names by regular expression, as alternative
  for wildcard search.



Using SearchMyFiles
===================

SearchMyFiles doesn't require any installation process or additional DLL
files. In order to start using it, simply run the executable file -
SearchMyFiles.exe
After running it, the 'Search Options' dialog-box is displayed. Select
the base folders or drives that you want to search, the wildcard, and
other search option that you need. After choosing the right search
option, click 'Ok' in order to start the search. While in search process,
the found files will be displayed in the main window. If you want to stop
the search, you can simply click the 'Stop' menu.

After the search is finished, you can select one or more files, and then
save the list into text/csv/html/xml file by using the 'Save Selected
Items' option. You can also select a single file and open it with the
default program by using the 'Open Selected File' option.



Search Options
==============

Here's a small explanation about all available search options:
* Base Folder: Specifies the folder that you want to scan. if 'Scan
  Subfolders' option is also checked, all subfolders under this folder
  will also be scanned. You can also specift multiple folders, delimited
  by semicolon. For example: c:\temp;d:\myfolder;d:\nirsoft
* Excluded Folders: Allows you to specify one or more folders
  (delimited by semicolon) that you want to exclude from the scan. For
  example: If you want to scan you entire C: drive, but without
  C:\Windows and C:\Documents and Settings, you should type 'C:\' in the
  Base Folder, and 'C:\Windows;C:\Documents and Settings' in the Excluded
  Folders field.
* Files Wildcard: Specifies the wildcard for scanning the files. You
  can specify multiple wildcards delimited by semicolon or by comma, for
  example: *.exe;*.dll;*.ocx or *.exe,*.dll,*.ocx. Be aware that if you
  want to search a filename containing semicolon or comma, you must put
  it in quotes. For example: "Hello, World.txt". If you don't put it in
  quotes, SearchMyFiles will consider it as 2 separated files.
* Subfolders Wildcard: Specifies the wildcard for scanning the
  subfolders. For example, If you want to only scan the subfolders
  beginning with 'a' letter, you can specify a*.* in this field.
* Exclude Extensions: Specifies one or more file extensions to exclude
  from the search. You can specify multiple extensions delimited by
  semicolon, by comma, or by space character, for example: exe dll ocx
* File Contains: Allows you to search by the content of the files. You
  can make a text search or binary search. On binary search, you should
  specify the binary sequence that you want to search in Hex dump format,
  for example: 'A2 C5 2F 8A 9E AC'.
* Search multiple values (comma delimited): When this option is
  selected, you can specify multiple values to search in the 'File
  Contains' field. The multiple values are delimited by comma, and
  optionally also with quotes.
  For example:
  NirSoft, Nir Sofer, Search, 123, "abc,123"
  A1 82 A7 AC, 27 9A CC FF, A1 B2 71 22
* File Size: Specifies that you want to search files in specified size
  range (For example: search all files with size between 238 and 741
  bytes).
* Attributes: Specifies that you want to search files with specific
  attributes. For example: if you want to find all files that are
  read-only but are not hidden, you should select 'Yes' for Read Only
  attribute and 'No' for Hidden attribute.
* File Time: Allows you to search files that have been created,
  modified, or accessed in the specified time range. You can specify an
  accurate time range (For example: 10/12/2008 12:32:11 - 12/12/2008
  13:32:56) or you can specify the last number of
  seconds/minutes/hours/days. For example, you can search all files that
  have been modified in the last 10 minutes.
* Search Subfolders: If this option is checked, SearchMyFiles will scan
  all subfolders under the specified base folders.
* Find Folders: If this option is checked, SearchMyFiles will search
  for folders according to the other search options. If this options is
  not selected, SearchMyFiles will only search for files.



Getting MD5/SHA hashes of the found files
=========================================

If you want to get the MD5/SHA hashes of the files that you found with
SearchMyFiles, you can easily do it with HashMyFiles utility.
First, in the SearchMyFiles window, select the desired files and press
Ctrl+E (Explorer Copy). In the HashMyFiles window, press Ctrl+V (Paste)
to add the files that you previously selected in SearchMyFiles.



Duplicate Search Mode
=====================

Starting from version 1.35, SearchMyFiles also allows you to search
duplicate files on your system. In order to use this feature, simply
change the search mode in the 'Search Options' window to 'Duplicates
Search'.
When you switch to 'Duplicates Search' mode, all other search options are
still relevant, and SearchMyFiles will scan your files according to these
settings. For example: if you choose to search for files larger than
500KB, SearchMyFiles will only search for duplicate files that their size
is larger than 500KB. In fact, it's highly recommended to narrow your
duplicate search by using date/size restrictions, because if you don't do
it, the duplicate search will be very slow, and it'll consume a large
amount of memory.

When you are in 'Duplicates Search' mode, SearchMyFiles will first scan
all files and folders according to your settings, and only after the scan
is finished, it'll locate the duplicate files and add them to the files
list on the main window. SearchMyFiles automatically mark the duplicate
files with identical colors (up to 64 different colors). There is also a
'Duplicate Number' column, which displays identical number for each chunk
of duplicate files. You can click the 'Duplicate Number' column header in
order to sort by this column and to easily view the chunks of duplicate
files.



Non-Duplicates Search Mode
==========================

This mode is the opposite of Duplicate Search Mode, which means that it
displays all files in the specified folders that are not duplicated.



Command-Line Options
====================

You can use the following command-line option in order to execute a
search without displaying any user interface and save the result into a
file. Be aware that when you do that, the only way to stop the search is
by termintaing the process of SearchMyFiles (SearchMyFiles.exe).

/config <Filename>
Loads the configuration from the specified .cfg file. Can be used in
conjunction with the save options, like /stext, /scomma and so on.

/StartSearch
Tells SearchMyFiles utility to start the search immediately, without
displaying the 'Search Options' dialog-box, according to the last
configuration or according to the config file specified in /config
parameter.

/ExplorerCopy
Search files without user interface according to the configuration file,
and then copy the found files list to the clipboard in Windows Explorer
format (Like 'Explorer Copy' option)

/stext <Filename>
Search and save the result into a regular text file.

/stab <Filename>
Search and save the result into a tab-delimited text file.

/scomma <Filename>
Search and save the result into a comma-delimited text file (csv).

/stabular <Filename>
Search and save the result into a tabular text file.

/shtml <Filename>
Search and save the result into HTML file (Horizontal).

/sverhtml <Filename>
Search and save the result into HTML file (Vertical).

/sxml <Filename>
Search and save the result to XML file.

/sort <column>
This command-line option can be used with other save options for sorting
by the desired column. If you don't specify this option, the list is
sorted according to the last sort that you made from the user interface.
The <column> parameter can specify the column index (0 for the first
column, 1 for the second column, and so on) or the name of the column,
like "Filename" and "Created Time". You can specify the '~' prefix
character (e.g: "~Created Time") if you want to sort in descending order.
You can put multiple /sort in the command-line if you want to sort by
multiple columns.

Examples:
SearchMyFiles.exe /shtml "f:\temp\1.html" /sort 2 /sort ~1
SearchMyFiles.exe /shtml "f:\temp\1.html" /sort "~Extension" /sort
"Filename"

/nosort
When you specify this command-line option, the list will be saved without
any sorting.

You can also use the following command-line option to override the
configuration loaded from the .cfg file:



/FilesWildcard <Wildcard>
Specifies the files wildcard.

/SubfoldersWildcard <Wildcard>
Specifies the subfolders wildcard.

/BaseFolder <Folder>
Specifies the base folders to search.

/ExcludedFolder <Folder>
Specifies the folders to exclude in the search.

/ScanSubfolders <0 | 1>
Specifies whether to search in subfolders. 1 = Yes, 0 = No.

/ExcludeExtensions <Extensions>
Specifies one or more extensions to exclude.

/FindFiles <0 | 1>
Specifies whether to find files. 1 = Yes, 0 = No.

/FindFolders <0 | 1>
Specifies whether to find folders. 1 = Yes, 0 = No.

/UseFileSizeAtLeast <0 | 1>
/UseFileSizeAtMost <0 | 1>
Specifies whether to use the "At Least" and "At Most" file size filter. 1
= Yes, 0 = No.


/FileSizeAtLeast <Value>
/FileSizeAtMost <Value>
Specifies the values of file size filters.


/FileSizeAtLeastUnit <Value>
/FileSizeAtMostUnit <Value>
Specifies the units of file size filters. 1 = Bytes, 2 = KB, 3 = MB, 4 =
GB


/FileAttrReadOnly <Value>
/FileAttrSystem <Value>
/FileAttrHidden <Value>
/FileAttrArchive <Value>
/FileAttrCompressed <Value>
/FileAttrEncrypted <Value>
Specifies the file attributes filter. 1 = Both, 2 = No, 3 = Yes.

/FileContains <Value>
Specifies the 'File Contains' option. 0 = None, 1 = Text, 2 = Binary.

/FileContainsText <String>
Specifies the 'File Contains' text.

/FileContainsCaseSensitive <0 | 1>
Specifies whether the 'File Contains' string is case sensitive. 1 = Yes,
0 = No.


/FileTimeCreated <Value>
/FileTimeModified <Value>
/FileTimeAccessed <Value>
Specifies the filter option by file time. 0 = All Times, 1 = Time Range,
2 = Last XX Seconds, 3 = Last XX Minutes, 4 = Last XX Hours, 5 = Last XX
Days.


/FileTimeCreatedLastXX <Value>
/FileTimeModifiedLastXX <Value>
/FileTimeAccessedLastXX <Value>
Specifies the last xx seconds/minutes/hours/days values.


/FileTimeAccessed1 <Value>
/FileTimeAccessed2 <Value>
/FileTimeModified1 <Value>
/FileTimeModified2 <Value>
/FileTimeCreated1 <Value>
/FileTimeCreated2 <Value>
Specifies date/time range values. The date/time value must be in the
following format: dd-mm-yyyy hh:nn:ss

For example:
SearchMyFiles.exe /FileTimeModified1 "10-01-2010 12:00:00"
/FileTimeModified2 "18-01-2010 08:00:00"

/SubFolderDepth <Value>
Specifies the subfolders depth. 0 = Unlimited.

/UseMaxNumOfFiles <0 | 1>
Specifies whether to limit the number of files to find. 1 = Yes, 0 = No.

/MaxNumOfFiles <Value>
Specifies the maximum number of files to find.

/SearchMode <1 | 2>
Specifies the search mode. 1 = Standard Search, 2 = Duplicate Search.

Examples:
SearchMyFiles.exe /scomma c:\temp\bfiles1.csv /FilesWildcard b*.*
SearchMyFiles.exe /config c:\temp\myconfig.cfg /BaseFolder "c:\Program
Files" /shtml c:\temp\result.html
SearchMyFiles.exe /stab c:\temp\searchfiles.txt



Translating SearchMyFiles to other languages
============================================

In order to translate SearchMyFiles to other language, follow the
instructions below:
1. Run SearchMyFiles with /savelangfile parameter:
   SearchMyFiles.exe /savelangfile
   A file named SearchMyFiles_lng.ini will be created in the folder of
   SearchMyFiles utility.
2. Open the created language file in Notepad or in any other text
   editor.
3. Translate all string entries to the desired language. Optionally,
   you can also add your name and/or a link to your Web site.
   (TranslatorName and TranslatorURL values) If you add this information,
   it'll be used in the 'About' window.
4. After you finish the translation, Run SearchMyFiles, and all
   translated strings will be loaded from the language file.
   If you want to run SearchMyFiles without the translation, simply
   rename the language file, or move it to another folder.



License
=======

This utility is released as freeware. You are allowed to freely
distribute this utility via floppy disk, CD-ROM, Internet, or in any
other way, as long as you don't charge anything for this. If you
distribute this utility, you must include all files in the distribution
package, without any modification !



Disclaimer
==========

The software is provided "AS IS" without any warranty, either expressed
or implied, including, but not limited to, the implied warranties of
merchantability and fitness for a particular purpose. The author will not
be liable for any special, incidental, consequential or indirect damages
due to loss of data or any other reason.



Feedback
========

If you have any problem, suggestion, comment, or you found a bug in my
utility, you can send a message to nirsofer@yahoo.com

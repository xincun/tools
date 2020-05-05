


OpenedFilesView v1.52
Copyright (c) 2006 - 2011 Nir Sofer
Web site: http://www.nirsoft.net



Description
===========

OpenedFilesView displays the list of all opened files on your system. For
each opened file, additional information is displayed: handle value,
read/write/delete access, file position, the process that opened the
file, and more...
Optionally, you can also close one or more opened files, or close the
process that opened these files.

This utility is especially useful if you try to delete/move/open a file
and you get one of the following error messages:
* Cannot delete [filename]: There has been a sharing violation. The
  source or destination file may be in use.
* Cannot delete [filename]: It is being used by another person or
  program. Close any programs that might be using the file and try again.
When you get one of these error messages, OpenedFilesView will show you
which process lock your file. Closing the right process will solve this
problem. optionally, you can also release the file by closing the handle
from OpenedFilesView utility. However, be aware that after closing a file
in this way, the program that opened the file may become unstable, and
even crash.



System Requirements
===================

This utility works properly on Windows 2000, Windows XP, Windows
2003/2008, Windows Vista, and Windows 7 (32-bit only !). Older versions
of Windows (NT/9x/ME) are not supported. Also, you must have
administrative privilege in order to run this utility.



Versions History
================


* Version 1.52:
  o Added 'Open File Folder' option (F8), which opens the folder of
    selected file in Windows Explorer.

* Version 1.51:
  o Added 'Mark Odd/Even Rows' option, under the View menu. When it's
    turned on, the odd and even rows are displayed in different color, to
    make it easier to read a single line.

* Version 1.50:
  o Added 'Mark Files With Position Change' - When it's turned on,
    files with position change are marked in green color.
  o Added '% Position' column - Displays the position of the file in
    % , relative to the current file size.
  o Fixed bug: OpenedFilesView failed to close network files from
    command-line.

* Version 1.47:
  o Added 'Add Header Line To CSV/Tab-Delimited File' option. When
    this option is turned on, the column names are added as the first
    line when you export to csv or tab-delimited file.

* Version 1.46:
  o /filefilter now allows you to specify a filename without a path.
    For example, if you run OpenedFilesView with '/filefilter index.dat',
    all opened index.dat filenames will be displayed.

* Version 1.45:
  o Added command-line option for sorting the list in the save
    command-line options.
  o When saving from command-line, OpenedFilesView now only save the
    items according to the options selected in the last time that you
    used it. For example: if the 'Show Opened Directories' options is
    unchecked, opened directories won't be saved into the file.

* Version 1.41:
  o Added 'Explorer Copy' option - You can selected one or more
    files, choose 'Explorer Copy', and then paste them into Explorer
    window.

* Version 1.40:
  o Added 'Put Icon In Tray' option.

* Version 1.35:
  o Added /processfilter command-line option.
  o Added drag And drop icon in the toolbar that allows to to easily
    view only the opened files of the desired application simply by
    dragging the target icon from the OpenedFilesView toolbar into the
    application.

* Version 1.30:
  o New option: Bring process to front.
  o Added more accelerator keys.

* Version 1.26:
  o Fixed bug: Extension column displayed wrong value when folder
    name contained a dot character.

* Version 1.25:
  o New option: Hide System Process Files.
  o New option: Hide Svchost Files.

* Version 1.22:
  o Added error message when OpenedFilesView fails to load the opened
    files list.
  o You can now send the information to stdout by specifying an empty
    filename ("") in the command-line. (For example: openedfilesview.exe
    /stab "" >> c:\temp\of.txt)

* Version 1.21:
  o Fixed bug: When using command-line options, the opened files of
    OpenedFilesView itself were added into the list.

* Version 1.20:
  o New option: Mark Modified Filenames (Mark filenames that their
    date/time or file size was changed since the previous snapshot)

* Version 1.18:
  o Fixed bug: The dates displayed in system locale, instead of user
    locale.

* Version 1.17:
  o Added new option: Convert short-path names to long-path names.

* Version 1.16:
  o Added file extension column, so you can sort the opened files
    list by file extension.

* Version 1.15:
  o Added support for saving as comma-delimited text file.
  o Fixed bug: AutoRefresh sub-menu selection wasn't displayed.
  o Fixed bug: The main window lost the focus when the user switched
    to another application and then returned back to OpenedFilesView.

* Version 1.12: On Vista, OpenedFilesView now automatically requires to
  run as administrator (When User Account Control is turned on)
* Version 1.11: Fixed bug: OpenedFilesView displayed wrong files when
  running it from context menu on a folder.
* Version 1.10:
  o New option: 'Enable Explorer Context Menu' - Allows you to launch
    OpenedFilesView utility directly from Explorer window, and display
    only the file handles of specific file or folder.
  o New command-line option: /filefilter - Run OpenedFilesView with a
    file filter - display only the file handles of the file or folder
    that you specify.
  o The configuration of OpenedFilesView is now saved to a file
    instead of the Registry.

* Version 1.05 - Added another memory address check in
  NirSoftOpenedFilesDriver.sys
* Version 1.04 - A small fix in NirSoftOpenedFilesDriver.sys to avoid
  crashes when a memory address of kernel object is invalid.
* Version 1.03 - Improved file closing under Vista.
* Version 1.02 - A tooltip is displayed when a string in a column is
  longer than the column length.
* Version 1.01 - New option: Hide Files In Windows Folder.
* Version 1.00 - First release.



Known Issues
============


* OpenedFilesView cannot close files opened by Windows kernel.



How does it work ?
==================

OpenedFilesView uses the NtQuerySystemInformation API to enumerate all
handles in the system. After filtering non-file handles, it uses a
temporary device driver - NirSoftOpenedFilesDriver.sys for reading the
information about each handle from the kernel memory. This device driver
is automatically unloaded from the system when you exit from
OpenedFilesView utility.



Using OpenedFilesView
=====================

OpenedFilesView doesn't require any installation process or additional
DLLs. In order to start using it, just run the executable file -
OpenedFilesView.exe
The main window of OpenedFilesView display the list of all files
currently opened in your system. In order to refresh the list of opened
files, press F5, or alternatively, use the Auto Refresh feature (Options
-> Auto Refresh -> Every x seconds) in order to automatically refresh the
opened files list every 1 - 5 seconds.



Explorer Context Menu
=====================

Starting from version 1.10, you can launch OpenedFilesView directly from
Windows Explorer, and view only the handles of the file or folder that
you want to inspect.
In order to enable this feature, check the 'Enable Explorer Context Menu'
under the Options menu. After you enable this feature, you can
right-click on any file or folder on Windows Explorer, and choose the
'OpenedFilesView' item from the menu.
If you run the OpenedFilesView option for a folder, it'll display all
opened files inside that folder.
If you run the OpenedFilesView option for a file, it'll display all
opened handles for that file.



Other Options
=============


* Show Opened Directories: By default, OpenedFilesView only display the
  opened files. If you also want to view the opened Directories
  (folders), select this option.
* Show Network Files: By default, OpenedFilesView only display the
  opened files on your local drives. If you also want to view the opened
  files on remote network drives, select this option.
* Sort On Refresh: If this option is selected, new opened files (after
  refresh) are added to the right position according to the current
  column sort. If this option is not selected, new opened files are added
  to the end of the opened files list.



Watch specific application with Drag & Drop
===========================================

If you want to view only the opened files of specific application instead
of the entire system, you can drag the target icon of the toolbar into
the window of the desired application. Whenever you want to view all
opened files again, simply use the 'Clear File/Process Filters' option.



Command-Line Options
====================



/stext <Filename>
Save the list of all opened files into a regular text file.

/stab <Filename>
Save the list of all opened files into a tab-delimited text file.

/scomma <Filename>
Save the list of all opened files into a comma-delimited text file.

/stabular <Filename>
Save the list of all opened files into a tabular text file.

/shtml <Filename>
Save the list of all opened files into HTML file (Horizontal).

/sverhtml <Filename>
Save the list of all opened files into HTML file (Vertical).

/sxml <Filename>
Save the list of all opened files to XML file.

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
OpenedFilesView.exe /shtml "f:\temp\1.html" /sort 2 /sort ~1
OpenedFilesView.exe /shtml "f:\temp\1.html" /sort "~Write Access" /sort
"Filename"

/nosort
When you specify this command-line option, the list will be saved without
any sorting.

/closefile <Filename>
Close all handles of the specified filename.

/closefolder <Folder>
Close all handles of all files in the specified folder.

/filefilter <Filename>
Start OpenedFilesView with file/folder filter. If you specify a file,
only the opened handles for the specified file will be displayed. If you
specify a folder, all the opened files under the specified folder will be
displayed.

For example, if you want to view all opened files under c:\Program Files :
OpenedFilesView.exe /filefilter "C:\Program Files"
If you want to view all opened files with 'index.dat' filename:
OpenedFilesView.exe /filefilter "index.dat"

/processfilter <Filename>
Start OpenedFilesView with process filter. When you use this filter, only
the files opened by the specified process will be displayed. You can
specify the full path of the process file, or only the filename without
path.

For example:
OpenedFilesView.exe /processfilter "F:\Program Files\Mozilla
Firefox\firefox.exe"
OpenedFilesView.exe /processfilter myapp.exe



Translating OpenedFilesView To Another Language
===============================================

OpenedFilesView allows you to easily translate all menus, dialog-boxes,
and other strings to other languages.
In order to do that, follow the instructions below:
1. Run OpenedFilesView with /savelangfile parameter:
   OpenedFilesView.exe /savelangfile
   A file named OpenedFilesView_lng.ini will be created in the folder of
   OpenedFilesView utility.
2. Open the created language file in Notepad or in any other text
   editor.
3. Translate all menus, dialog-boxes, and string entries to the
   desired language.
4. After you finish the translation, Run OpenedFilesView, and all
   translated strings will be loaded from the language file.
   If you want to run OpenedFilesView without the translation, simply
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

' it will print all open files to printer
const module_name  = "ListTransform"
const module_ver   = "1.1"          

sub ListString
	dim item, s
    set obj = NewEditor()
    obj.assignActiveEditor()
    s = ""
    for each item in obj
		if Trim(Item) <> "" then
	        s = s & "'" & Trim(item) & "', "
	    end if    
    next
    s = "(" & Left(s, len(s)-2) & ")"
    obj.command("ecSelectAll")
    obj.selText(s)
    setClipboardText(s)
end sub

sub ListItems
	dim item, s
    set obj = NewEditor()
    obj.assignActiveEditor()
    s = ""
    for each item in obj
		if Trim(Item) <> "" then
	        s = s & "'" & Trim(item) & "', "
	    end if    
    next
    s = "(" & Left(s, len(s)-2) & ")"
    obj.command("ecSelectAll")
    obj.selText(s)
    setClipboardText(s)
end sub

' name "Init" is required, its called automatically during initialization to create menu items
sub Init
  addMenuItem "&1. SQL list of string","List conversion", "ListString", "Shift+Ctrl+H"
  addMenuItem "&2. SQL list of numbers","List conversion", "ListItems", "Shift+Ctrl+J"
end sub

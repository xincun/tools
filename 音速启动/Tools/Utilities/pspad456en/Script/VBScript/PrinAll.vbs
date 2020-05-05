' it will create new editor window, copy all text from first window into new
' and save new file as C:\SAMPLE.TXT
const module_name  = "PrintAll"         'this name must be unique !!!
const module_ver   = "0.001a"            'version

sub PrintAll
  set obj = NewEditor()
  for i = 0 to editorsCount - 1
      obj.assignEditorByIndex(i)
      if i = 0 then
         obj.printFile(True)
      else    
         obj.printFile(False)
      end if
  next  
end sub

' name "Init" is required, its called automatically during initialization to create menu items
sub Init
  addMenuItem "Print all files","", "PrintAll"
end sub

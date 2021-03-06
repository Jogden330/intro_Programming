
    'fileExists.bas - Show how to determine if a file exists
    dim info$(10,10)
    input "Type a file path (ie. c:\windows\somefile.txt)?"; fpath$
    if fileExists(fpath$) then
        print fpath$; " exists!"
      else
        print fpath$; " doesn't exist!"
    end if
    end

'return a true if the file in fullPath$ exists, else return false
function fileExists(fullPath$)
    files pathOnly$(fullPath$), filenameOnly$(fullPath$), info$()
    fileExists = val(info$(0, 0)) > 0
end function

'return just the directory path from a full file path
function pathOnly$(fullPath$)
    pathOnly$ = fullPath$
    while right$(pathOnly$, 1) <> "\" and pathOnly$ <> ""
        pathOnly$ = left$(pathOnly$, len(pathOnly$)-1)
    wend
end function

'return just the filename from a full file path
function filenameOnly$(fullPath$)
    pathLength = len(pathOnly$(fullPath$))
    filenameOnly$ = right$(fullPath$, len(fullPath$)-pathLength)
end function


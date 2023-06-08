# helper functions for the other fish functions

# TODO: these need to be in different files 
#     (one per function, same name)

# note: same backends for sch.fish can work for prev.fish

# for sch.fish
function bat_file -a FILE
    # if file is text, bat $file
    # if file is pdf, convert to text with pandoc, then bat $file
    # if file is .odt, .docx, slides, convert to text
    # if file is speadsheet, convert to .csv 
    # if file is image, ffmpeg or that rust thing (symphonia or something)
end

# for sch.fish
function open_file -a FILE 
    # if file is text, hx $file
    # if file is pdf, xreader $file
    # if file is image, feh $file
    # for other kinds of files (document types, spreadsheets, ...) check if program exists to open and return error if not
end 

-- this requires gpt-cli
vim.cmd('command! -range=% -nargs=* Ask <line1>,<line2>!tr "\\n" " " | $ASKPATH/bin -path $ASKPATH <args>')

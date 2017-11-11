au! BufRead,BufNewFile *.pde setfiletype arduino
au! BufRead,BufNewFile *.ino setfiletype arduino

" Configuration for vim-arduino
""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:arduino_board = 'Intel:arc32:arduino_101'
let g:arduino_serial_tmux = 'split-window -d'

nnoremap <buffer> <leader>am :ArduinoVerify<CR>
nnoremap <buffer> <leader>au :ArduinoUpload<CR>
nnoremap <buffer> <leader>ad :ArduinoUploadAndSerial<CR>

" my_file.ino [arduino:avr:uno] [arduino:usbtinyisp] (/dev/ttyACM0:9600)
function! MyStatusLine()
  let port = arduino#GetPort()
  let line = '%f [' . g:arduino_board . '] [' . g:arduino_programmer . ']'
  if !empty(port)
    let line = line . ' (' . port . ':' . g:arduino_serial_baud . ')'
  endif
  return line
endfunction
setl statusline=%!MyStatusLine()

set tags=./tags,$HOME/Arduino/tags,$HOME/workspace/arduino/arduino-1.8.1/tags;$HOME/workspace/arduino/sketchbook/tags

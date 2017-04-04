au! BufRead,BufNewFile *.pde setfiletype arduino
au! BufRead,BufNewFile *.ino setfiletype arduino

" Configuration for vim-arduino
""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:arduino_board = 'Intel:arc32:arduino_101'
nnoremap <buffer> <leader>am :ArduinoVerify<CR>
nnoremap <buffer> <leader>au :ArduinoUpload<CR>
nnoremap <buffer> <leader>ad :ArduinoUploadAndSerial<CR>


set tags=./tags,$HOME/Arduino/tags,$HOME/workspace/arduino/arduino-1.8.1/tags;

function! ToggleBluetoothMode()
    if $bluetooth == 1
        echo "Toggle to Normal Mode"
        $bluetooth = 0

        unmap df
        cunmap df
        iunmap df
    else
        echo "Toggle to Bluetooth Mode"
        $bluetooth = 1

        map df <ESC>
        cmap df <ESC>
        imap df <ESC>
    endif
endfunction

command! -nargs=0 ToggleBluetoothMode call ToggleBluetoothMode()

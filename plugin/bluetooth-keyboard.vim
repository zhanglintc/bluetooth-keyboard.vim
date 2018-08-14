function! PresetBluetoothMode()
    if &term == 'xterm-256color' || $bluetooth == 1
        let $bluetooth = 1

        map ` <ESC>
        cmap ` <ESC>
        imap ` <ESC>
    endif
endfunction

function! ToggleBluetoothMode()
    if $bluetooth == 1
        echo "Toggle to [Normal] Mode"
        let $bluetooth = 0

        unmap `
        cunmap `
        iunmap `
    else
        echo "Toggle to [Bluetooth] Mode"
        let $bluetooth = 1

        map ` <ESC>
        cmap ` <ESC>
        imap ` <ESC>
    endif
endfunction

command! -nargs=0 ToggleBluetoothMode call ToggleBluetoothMode()

call PresetBluetoothMode()


ping

xadd application.log * level "info" message "contoh info message"

xadd application.log * level "error" message "contoh error message"

xadd application.log * level "warning" message "contoh warning message"

xread count 2 streams application.log 0

xadd problem * just test

xadd problem * just yan

xgroup create registration member $ mkstream

xgroup createconsumer registration member member-consumer-1

xgroup createconsumer registration member member-consumer-2

xadd registration * userId 1

xadd registration * userId 2

xadd registration * userId 3

xadd registration * userId 4

xadd registration * userId 5

xadd registration * userId 6
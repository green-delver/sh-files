    #!/bin/bash
    echo "###"
    echo "Datei auf Festplatte schreiben"
    dd if=/dev/zero of=tempfile bs=1M count=1024 conv=fdatasync,notrunc
    # echo "Cache leeren (benötigt Superuser)"
    echo 3 | tee /proc/sys/vm/drop_caches > /dev/null
    echo "###"
    echo "Datei von Festplatte lesen"
    dd if=tempfile of=/dev/null bs=1M count=1024 
    rm tempfile > /dev/null
    echo "###"

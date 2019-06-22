    #!/bin/bash
    ls --sort=t /var/log/installer/ -l | tail -n1 | awk '{print $7 " " $6 " " $8}'

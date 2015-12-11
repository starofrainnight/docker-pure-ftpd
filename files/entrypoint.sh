#!/bin/bash

if [ ! -f "/srv/ftpd/pure-ftpd.sh" ]; then
	chmod +x /srv/ftpd/pure-ftpd.sh
	/srv/ftpd/pure-ftpd.sh
fi

exec /bin/bash

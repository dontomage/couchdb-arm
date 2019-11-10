FROM dontomage/archlinux-arm
ENV ERL_FLAGS="-couch_ini /usr/lib/couchdb/etc/default.ini /usr/lib/couchdb/etc/datadirs.ini /etc/couchdb/local.ini"
RUN pacman -Sy --noconfirm couchdb && pacman -Scc --noconfirm
EXPOSE 5984
VOLUME ["/etc/couchdb","/var/lib/couchdb"]
USER couchdb:couchdb
ENTRYPOINT ["/usr/lib/couchdb/bin/couchdb"]


#!/bin/bash -x
### drush may create some files with wrong (root) permissions
### fix them (change owner to www-data)

for dir in /var/www/proj*/cache/ /var/www/proj*/sites/default/files/* ; do
    chown www-data: -R $dir
done

exit 0  # it is ok even if something above failed

#!/bin/bash
# Performs FSDB query and then exectutes Create_mod_staticsite.py to generate static site
cd /mnt/work1/users/home2/asood/DNA_Base_Database
# dbrow '_base_id =~ /c/' -i mod_base.fsdb | dbjoin -i - -i base.fsdb -R base_id | dbjoin -i - -i name.fsdb -R name_id | dbjoin -i - -i cov_modification.fsdb -R cmod_id | dbjoin -i - -i base_properties.fsdb -R property_id > result2.fsdb
dbjoin -i mod_base.fsdb -i base.fsdb -R base_id | dbjoin -i - -i name.fsdb -R name_id | dbjoin -i - -i cov_modification.fsdb -R cmod_id | dbjoin -i - -i base_properties.fsdb -R property_id > result.fsdb
echo "FSDB Concatenated"
cd /mnt/work1/users/home2/asood/DNA_Base_Database/DNA_mod_site
python Create_mod_staticsite.py

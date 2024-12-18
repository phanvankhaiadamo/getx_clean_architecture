#!bin/bash -e

cd ./../.. #dir: jbbase-app/
fvm install 3.25.4
fvm use 3.25.4
fvm flutter pub get
# fvm flutter pub global activate index_generator 

fvm flutter pub global run index_generator
fvm flutter pub run build_runner build --delete-conflicting-outputs
fvm flutter pub run intl_utils:generate
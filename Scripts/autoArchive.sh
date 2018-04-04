#!/usr/bin/env bash

#project dir
project_path="."
#project name
project_name="OCUnitTestDemo"
#scheme
scheme="OCUnitTestDemo"
#configureation(Debug or Release)
config="Release"
#build dir
build_path=${project_path}/build
#export option plist path
exportOptionsPlistPath=${project_path}/Scripts/ExportOptions.plist
#product dir
product_path=${project_path}/Product/${project_name}.ipa

#clean project
xcodebuild clean -alltargets

#archive
xcodebuild archive \
-scheme ${scheme} \
-configuration ${config} \
-archivePath ${build_path}/${project_name}.xcarchive

#exprot
xcodebuild -exportArchive \
-exportPath ${product_path} \
-archivePath ${build_path}/${project_name}.xcarchive \
-configuration ${config} \
-exportOptionsPlist ${exportOptionsPlistPath}

#clean build dir
rm -rf ${build_path}

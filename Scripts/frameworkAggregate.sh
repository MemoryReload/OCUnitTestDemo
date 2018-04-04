#!/usr/bin/env  bash
 
# Sets the target folders and the final framework product name.
# If project name is different from target, you should customize FMKNAME.
# eg: FMK_NAME = "MyFramework"
FMK_NAME=${PROJECT_NAME}
# Install dir will be the final output to the framework.Create it in the root folder of the current project.
INSTALL_DIR=${SRCROOT}/Products/${FMK_NAME}.framework
# Working dir will be deleted after the framework creation.
WRK_DIR=build
DEVICE_DIR=${WRK_DIR}/Release-iphoneos/${FMK_NAME}.framework
SIMULATOR_DIR=${WRK_DIR}/Release-iphonesimulator/${FMK_NAME}.framework
# Clean and Building both architectures.
xcodebuild -configuration "Release" -target "${FMK_NAME}" -sdk iphoneos clean build
xcodebuild -configuration "Release" -target "${FMK_NAME}" -sdk iphonesimulator clean build
# Cleaning the oldest.
if [ -d "${INSTALL_DIR}" ]
then
rm -rf "${INSTALL_DIR}"
fi
#Remake
mkdir -p "${INSTALL_DIR}"
#copy the whole framework with arm architecture
cp -R "${DEVICE_DIR}/" "${INSTALL_DIR}/"
# Uses the lipo Tool to merge both binary files (x86 and arm architecture) into one Universal final product.
lipo -create "${DEVICE_DIR}/${FMK_NAME}" "${SIMULATOR_DIR}/${FMK_NAME}" -output "${INSTALL_DIR}/${FMK_NAME}"
#clean working dir and open prudcut dir in Finder
rm -r "${WRK_DIR}"
open "${INSTALL_DIR}"

#!/usr/bin/env bash

#Run unit test with wich scheme configuration
TST_SCHM="OCUnitTestDemoTests"
#Run unit test on which platform(destination)
DST='platform=iOS Simulator,name=iPhone 5,OS=10.0'
#Clean all targets, prepare to run unit test
xcodebuild clean -alltargets
#Run
xcodebuild test -scheme "${TST_SCHM}" -destination "${DST}"

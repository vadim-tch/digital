#!/bin/zsh
java \
	-Xdock:name="Digital" \
	-Xdock:icon="../../src/main/resources/icons/icon128-apple.png" \
	-Dapple.awt.application.name="Digital" \
	-Dapple.laf.useScreenMenuBar=true \
	-Dapple.eawt.quitStrategy=CLOSE_ALL_WINDOWS \
	-jar ../../target/Digital.jar

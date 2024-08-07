.PHONY: build clean_build icon_build
build:
	fvm dart run build_runner build --delete-conflicting-outputs
clean_build:
	fvm dart run build_runner clean && fvm dart run build_runner build --delete-conflicting-outputs
icon_build:
	fvm dart pub run flutter_launcher_icons
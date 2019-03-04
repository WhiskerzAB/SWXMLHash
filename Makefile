project:
	swift package generate-xcodeproj

build:
	swift build -Xlinker -undefined -Xlinker dynamic_lookup
	
test:
	swift test
	
lint:
	swiftformat --disable unusedArguments .
	
release:
	swift build -c release -Xlinker -undefined -Xlinker dynamic_lookup

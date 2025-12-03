.PHONY: build run clean

build:
	swift build -c release

run:
	swift run aoc-cli $(DAY)

clean:
	swift package clean

install:
	swift build -c release
	cp .build/release/aoc-cli /usr/local/bin/

setup-day:
	@if [ -z "$(DAY)" ]; then \
		echo "Usage: make setup-day DAY=1"; \
		exit 1; \
	fi; \
	DAY_PADDED=$$(printf "%02d" $(DAY)); \
	if [ ! -f Solutions/Day$$DAY_PADDED.swift ]; then \
		cp Solutions/Day01.swift.template Solutions/Day$$DAY_PADDED.swift; \
		sed -i '' "s/Day01/Day$$DAY_PADDED/g" Solutions/Day$$DAY_PADDED.swift; \
		echo "Created Solutions/Day$$DAY_PADDED.swift"; \
	else \
		echo "Solutions/Day$$DAY_PADDED.swift already exists"; \
	fi; \
	if [ ! -f Inputs/day$$DAY_PADDED.txt ]; then \
		touch Inputs/day$$DAY_PADDED.txt; \
		echo "Created Inputs/day$$DAY_PADDED.txt (empty - add your input)"; \
	else \
		echo "Inputs/day$$DAY_PADDED.txt already exists"; \
	fi; \
	if [ ! -f Solutions/AllSolutions.swift ]; then \
		cp Solutions/AllSolutions.swift.template Solutions/AllSolutions.swift; \
	fi; \
	if ! grep -q "Day$$DAY_PADDED" Solutions/AllSolutions.swift; then \
		sed -i '' "s/public func registerAllSolutions() {/public func registerAllSolutions() {\n    SolutionRegistry.register(day: $(DAY), solution: Day$$DAY_PADDED.self)/" Solutions/AllSolutions.swift; \
		echo "Registered Day$$DAY_PADDED in AllSolutions.swift"; \
	else \
		echo "Day$$DAY_PADDED already registered in AllSolutions.swift"; \
	fi


.PHONY: all clean build

BUILD_DIR = build
ARCHIVE_NAME = $(BUILD_DIR)/pasteur-theme.zip

all: build

build:
	mkdir -p $(BUILD_DIR)
	zip -r $(ARCHIVE_NAME) . -x "*.zip" -x ".git/*" -x "$(BUILD_DIR)/*"
	open build

clean:
	rm -rf $(BUILD_DIR)

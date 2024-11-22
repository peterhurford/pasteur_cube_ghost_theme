.PHONY: all clean build

BUILD_DIR = build
ARCHIVE_NAME = $(BUILD_DIR)/pasteur-theme.zip

all: $(ARCHIVE_NAME)

build: $(ARCHIVE_NAME)

$(ARCHIVE_NAME):
	mkdir -p $(BUILD_DIR)
	zip -r $(ARCHIVE_NAME) . -x "*.zip" -x ".git/*" -x "$(BUILD_DIR)/*"

clean:
	rm -rf $(BUILD_DIR)

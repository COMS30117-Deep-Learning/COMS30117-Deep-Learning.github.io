.PHONY: check

HTML_FILES := $(shell find . -iname '*.xhtml' -type f)

check: $(HTML_FILES) vnu.jar
	java -jar vnu.jar $(HTML_FILES)

vnu.jar:
	curl -L "https://github.com/validator/validator/releases/download/latest/vnu.jar" -o vnu.jar


clean:
	rm -f vnu.jar

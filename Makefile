venv: requirements.txt
	test -d venv || python3 -m venv venv
	. venv/bin/activate; pip install -r requirements.txt

install-tesseract: venv
	sudo apt update
	sudo apt install tesseract-ocr tesseract-ocr-fra

clean:
	rm -rf venv
	find -iname "*.pyc" -delete

tesseract-uninstall:
	sudo apt remove tesseract-ocr tesseract-ocr-fra
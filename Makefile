TMPDIR=/tmp/zbuild

update: clean jquery.js underscore.js blueprint.css boilerplate.css compass.scss


clean:
	@rm -rf $(TMPDIR)
	@mkdir -p $(TMPDIR)
	@rm -f jquery.js
	@rm -f underscore.js
	@rm -rf blueprint
	@rm -f blueprint.css
	@rm -f boilerplate.css
	@rm -rf compass
	@rm -f compass.scss


jquery.js:
	echo "// jQuery is a fast and concise JavaScript Library." > jquery.js
	echo "// http://jquery.com" >> jquery.js
	echo "// Version 1.7" >> jquery.js
	@curl http://code.jquery.com/jquery-latest.min.js >> jquery.js


underscore.js:
	echo "// Undercore is library that provides a lot of the functional programming support" > underscore.js
	echo "// http://documentcloud.github.com/underscore/" >> underscore.js
	echo "// Version 1.2.2" >> underscore.js
	@git clone https://github.com/documentcloud/underscore.git $(TMPDIR)/underscore
	@cat $(TMPDIR)/underscore/underscore-min.js >> underscore.js


blueprint.css:
	echo "/* Blueprint is a CSS framework */" > blueprint.css
	echo "/* http://www.blueprintcss.org/ */" >> blueprint.css
	echo "/* Version 1.0 */" >> blueprint.css
	@git clone https://github.com/joshuaclayton/blueprint-css.git $(TMPDIR)/blueprint
	@cp -r $(TMPDIR)/blueprint/blueprint/src blueprint
	echo >> blueprint.css
	@echo "@import url('blueprint/reset.css');" >> blueprint.css
	@echo "@import url('blueprint/typography.css');" >> blueprint.css
	@echo "@import url('blueprint/forms.css');" >> blueprint.css
	@echo "@import url('blueprint/grid.css');" >> blueprint.css

boilerplate.css:
	echo "/* HTML5 Boilerplate is a professional front-end template */" > boilerplate.css
	echo "/* http://html5boilerplate.com/ */" >> boilerplate.css
	echo "/* Version 2.0 */" >> boilerplate.css
	git clone https://github.com/h5bp/html5-boilerplate.git $(TMPDIR)/boilerplate
	cat $(TMPDIR)/boilerplate/css/style.css >> boilerplate.css

compass.scss:
	echo "/* Compass is a stylesheet authoring framework */" > compass.scss
	echo "/* http://compass-style.org/ */" >> compass.scss
	echo "/* Version 0.12 */" >> compass.scss
	git clone https://github.com/chriseppstein/compass.git $(TMPDIR)/compass
	cp -r $(TMPDIR)/compass/frameworks/compass/stylesheets/compass .
	@echo "@import 'compass/utilities';" >> compass.scss
	@echo "@import 'compass/typography';" >> compass.scss
	@echo "@import 'compass/css3';" >> compass.scss


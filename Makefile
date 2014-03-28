all: charnames.js

charnames.js: namepl2charnamesjs.pl
	perl namepl2charnamesjs.pl > charnames.js

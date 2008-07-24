#!/usr/bin/perl 

$_ = join '', <>;	# Read file into a string
s#(^|\s)//.*##g;	# Remove single-line comments ( // ..)
s/\s+/ /g;		# Replace consecutive whitespace by a single space
s#/\*.*?\*/##ig;	# Remove comments (/* .. */)
s/([^\w]) /\1/ig;	# Remove unnecessary whitespace after tokens
s/ ([^\w])/\1/ig;	# Remove unnecessary whitespace before tokens
s/(^ )|( $)//sg;	# Remove leading/trailing whitespace
print;

%% File: `plainnat_entries.bst'
%% Entry handling for articles, books, inproceedings, etc.

FUNCTION {article}
{ output.bibitem
	author.full output
  	author format.key output
  	new.block
  	format.year.par output
  	new.block
	format.title output
	new.block
	format.journal emphasize output
	format.vol.number output
	pages "pages" output.check
	new.block
  	format.doi.or.url output
  	fin.entry
}

FUNCTION {book}
{ output.bibitem
  	author.empty$
    	{ editor.full output
      	  editor format.key output }
    	{ author.full output
      	  author format.key output }
  	if$
  	new.block
  	format.year.par output
  	new.block
  	format.title emphasize output
  	edition.empty$
  		{ version.empty$
  			'skip$
  			{ format.version tie.or.space.connect }
  			if$ }
  		{ format.edition.par tie.or.space.connect } 
  	if$
  	new.block
  	format.addr.publish output
  	new.block
  	format.doi.or.url output
   	fin.entry
}

%% Additional entry types here

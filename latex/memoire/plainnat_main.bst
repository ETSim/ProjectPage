%% File: `plainnat_main.bst'
%% Main structure of the plainnat.bst file

ENTRY
  { address
    author
    booktitle
    chapter
    day
    doi
    eid
    edition
    editor
    howpublished
    institution
    isbn
    issn
    journal
    key
    month
    note
    number
    organization
    pages
    publisher
    school
    series
    title
    type
    url
    volume
    version
    year
    urldate
  }
  {}
  { label extra.label sort.label short.list }

INTEGERS { output.state before.all mid.sentence after.sentence after.block }

FUNCTION {init.state.consts}
{ #0 'before.all :=
  #1 'mid.sentence :=
  #2 'after.sentence :=
  #3 'after.block :=
}

%% Initialize the core functions from the second file
INCLUDE "plainnat_core.bst"

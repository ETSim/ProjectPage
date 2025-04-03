%% File: `plainnat_formatting.bst'
%% Formatting functions

INTEGERS { nameptr namesleft numnames }

FUNCTION {format.names}
{ 's :=
  #1 'nameptr :=
  s num.names$ 'numnames :=
  numnames 'namesleft :=
    { namesleft #0 > }
    { 
      nameptr #1 >
      { s nameptr "{ff~}{vv~}{ll}{, jj}" format.name$ 't := }
      { s nameptr "{vv~}{ll}{, j}{, ff}" format.name$ 't := }
      if$
      nameptr #1 >
        { namesleft #1 >
            { ", " * t * }
            { numnames #2 >
                { "" * }
                'skip$
              if$
              t "others" =
                { " et~al." * }
                { "~\&~" * t * }
              if$
            }
          if$
        }
        't
      if$
      nameptr #1 + 'nameptr :=
      namesleft #1 - 'namesleft :=
    }
  while$
}

%% Include additional formatting functions here

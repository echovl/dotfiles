syn match goCustomParen     "(" contains=cParen
syn match goCustomFuncDef   "func\s\+\w\+\s*(" contains=goDeclaration,goCustomParen
" Exclude import as function name, for multi-line imports
syn match goCustomFunc      "import\s\+(\|\(\w\+\s*\)(" contains=goCustomParen,goImport
syn match goCustomScope     "\."
syn match goCustomAttribute "\.\w\+" contains=goCustomScope
syn match goCustomMethod    "\.\w\+\s*(" contains=goCustomScope,goCustomParen

hi def link goCustomMethod Function
hi def link goCustomAttribute Identifier

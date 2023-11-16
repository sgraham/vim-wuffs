if exists("b:current_syntax") && b:current_syntax == "wuffs"
  finish
endif

syn case match

syn match wuffsSpaceError display excludenl "\s\+$"
syn match wuffsComment /\/\/.*/

syn keyword wuffsKeyword ~mod+=
syn keyword wuffsKeyword ~mod-=
syn keyword wuffsKeyword ~mod*=
syn keyword wuffsKeyword ~mod<<=
syn keyword wuffsKeyword ~sat+=
syn keyword wuffsKeyword ~sat-=
syn keyword wuffsKeyword ~mod+
syn keyword wuffsKeyword ~mod-
syn keyword wuffsKeyword ~mod*
syn keyword wuffsKeyword ~mod<<
syn keyword wuffsKeyword ~sat+
syn keyword wuffsKeyword ~sat-

syn keyword wuffsKeyword <>
syn keyword wuffsKeyword <
syn keyword wuffsKeyword <=
syn keyword wuffsKeyword ==
syn keyword wuffsKeyword >=
syn keyword wuffsKeyword >
syn keyword wuffsKeyword and
syn keyword wuffsKeyword or
syn keyword wuffsKeyword as
syn keyword wuffsKeyword not

syn keyword wuffsKeyword break
syn keyword wuffsKeyword choose
syn keyword wuffsKeyword choosy
syn keyword wuffsKeyword const
syn keyword wuffsKeyword continue
syn keyword wuffsKeyword else
syn keyword wuffsKeyword endwhile
syn keyword wuffsKeyword io_bind
syn keyword wuffsKeyword io_limit
syn keyword wuffsKeyword if
syn keyword wuffsKeyword implements
syn keyword wuffsKeyword iterate
syn keyword wuffsKeyword return
syn keyword wuffsKeyword use
syn keyword wuffsKeyword var
syn keyword wuffsKeyword via
syn keyword wuffsKeyword while
syn keyword wuffsKeyword yield

syn keyword wuffsKeyword array
syn keyword wuffsKeyword nptr
syn keyword wuffsKeyword ptr
syn keyword wuffsKeyword roarray
syn keyword wuffsKeyword roslice
syn keyword wuffsKeyword rotable
syn keyword wuffsKeyword slice
syn keyword wuffsKeyword table

syn keyword wuffsKeyword false
syn keyword wuffsKeyword true
syn keyword wuffsKeyword nothing
syn keyword wuffsKeyword nullptr
syn keyword wuffsKeyword ok

syn keyword wuffsKeyword args
syn keyword wuffsKeyword coroutine_resumed
syn keyword wuffsKeyword this

syn keyword wuffsDeclaration status
syn keyword wuffsDeclaration struct
syn keyword wuffsDeclaration func

syn keyword wuffsType i8
syn keyword wuffsType i16
syn keyword wuffsType i32
syn keyword wuffsType i64
syn keyword wuffsType u8
syn keyword wuffsType u16
syn keyword wuffsType u32
syn keyword wuffsType u64
syn keyword wuffsType bitvec128
syn keyword wuffsType bitvec256
syn keyword wuffsType bool
syn keyword wuffsType base

syn keyword wuffsScope packageid
syn keyword wuffsScope pri
syn keyword wuffsScope pub

syn keyword wuffsAssertion assert
syn keyword wuffsAssertion inv
syn keyword wuffsAssertion pre
syn keyword wuffsAssertion post
syn match wuffsAssertion /!/
syn match wuffsAssertion /?/

syn region wuffsString start=+"+ end=+"+

hi def link wuffsSpaceError Error
hi def link wuffsComment Comment
hi def link wuffsAssertion Define
hi def link wuffsDeclaration Special
hi def link wuffsKeyword Keyword
hi def link wuffsType Type
hi def link wuffsString String
hi def link wuffsScope StorageClass

if !exists("b:current_syntax")
  let b:current_syntax = "wuffs"
endif

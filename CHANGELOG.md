# ChangeLog

## unreleased

- Fix highlighting of `type` keyword followed by parenthesis in an export
  list ([#267](https://github.com/haskell/language-haskell/issues/267)).
- Add support for `TypeData` type data declarations.
- Improvements to highlighting of GADTs:
    - allow the `where` to be on a different line than the `data`
    - accept a block comment between the `data` and the `where`,
    - handle explicit semicolons/braces for layout.
- Properly highlight `family`/`instance` in type/data family declarations and
  instances when `family`/`instance` is on a separate line.

## 3.8.0 - 14.06.2026

- Add automatic release workflows ([#257](https://github.com/haskell/language-haskell/pull/257)), thanks to [@fendor](http://github.com/fendor)
- Transfer ownership to Haskell community ([#256](https://github.com/haskell/language-haskell/pull/256)), thanks to [@fendor](http://github.com/fendor)

## 3.7.0 - 09.06.2026

- Add support for untrusted workspaces ([#211](https://github.com/haskell/language-haskell/pull/211)), thanks to [@maciej-irl](http://github.com/maciej-irl)
- Add support for `\cases` syntax ([#218](https://github.com/haskell/language-haskell/pull/218)), thanks to [@mixphix](https://github.com/mixphix)
- Fix bare unit type applications ([#225](https://github.com/haskell/language-haskell/issues/225)), thanks to [@mixphix](https://github.com/mixphix)
- Fix qualified type operators in export lists ([#191](https://github.com/haskell/language-haskell/issues/191)), thanks to [@mixphix]
- Add support for `elif` in Cabal files (`cabal-version` >= 2.2) ([#236](https://github.com/haskell/language-haskell/pull/236))
- Add support for cabal.project files ([#237] (https://github.com/haskell/language-haskell/issues/237)), thanks to [@rm41339]
- Fix language detection in markdown codeblocks ([#240](https://github.com/haskell/language-haskell/pull/240)), thanks to [@nopeless](https://github.com/nopeless)
- Fix incorrect highlighting when `=>` appears inside a comment ([#165](https://github.com/haskell/language-haskell/issues/165)).
- Fix incorrect highlighting of symbolic record fields, and of record fields
  whose type includes `=>` ([#167](https://github.com/haskell/language-haskell/issues/167)).
- Add support for `data` keyword in import/export lists.
- Fix incorrect parsing when the "specialise" keyword occurs inside an SCC
  pragma ([#195](https://github.com/haskell/language-haskell/issues/195)).
- Fix highlighting for `PackageImports`
  ([#219](https://github.com/haskell/language-haskell/issues/219)).
- Fix highlighting of type signature inside pattern synony declaration
  ([#194](https://github.com/haskell/language-haskell/issues/194)).
- Fix highlighting of data types with fields that contain constraints
  ([#179](https://github.com/haskell/language-haskell/issues/179)).
- Updated the list of known LANGUAGE extensions to be current as of GHC 10.0.
- Fix parsing of character literals with Unicode code point above U+007E,
  such as `'à'`, `'£'`... ([#183](https://github.com/haskell/language-haskell/issues/183)).
- Update the `wordPattern` used for autocompletion
  ([#224](https://github.com/haskell/language-haskell/issues/224)), thanks to @lierdakil.
- Allow Unicode general letters to start characters, e.g. `価格`.
- Prevent the interaction of the C preprocessor with multiline strings from
  marking the entire rest of the file as invalid
  ([#110](https://github.com/haskell/language-haskell/issues/110)).
- Decimal and hexadecimal escape codes in string literals now have the
  appropriate scopes (instead of using octal).
- Handle declarations that don't appear at the start of a line, e.g.
  `import A; import B; import C` or `class C a; instance C Int`.
- Prevent slowness when parsing data declarations, in particular
  with data constructors with long parenthesised arguments.
- Fix an issue in which `do { let x = .. }` would be incorrectly highlighted
  as record syntax (when the opening brace is on a separate line).
- Properly highlight postfix magic hash when followed by an opening parenthesis,
  e.g. `import Data.Tuple (Solo#(..))`.

## 3.6.0 - 15.03.2022

- Overwriting previous release due to a packaging error
## 3.5.0 - 14.03.2022

- Add support for Alex and Happy ([#97](https://github.com/haskell/language-haskell/issues/97)), thanks to [@matthewess](https://github.com/matthewess).
- Default to .hs when saving files ([#197](https://github.com/haskell/language-haskell/issues/197)), thanks to [@noughtmare](https://github.com/noughtmare).
- Fix highlighting for custom quasi quoters with immediate `|`
  ([#203](https://github.com/haskell/language-haskell/issues/203)).
- Be more specific about scope of this project in the README

## 3.4.0 - 25.02.2021

- Fix lists of the form ['|'...] being highlighted as quasiquotations
  ([#170](https://github.com/haskell/language-haskell/issues/170)).
- Proper highlighting of lambda case, including fixing the highlighting of subsequent braces (which were wrongly highlighted as record syntax).
- Recognize indented `\begin{code}` boundary in literate haskell files.
- Fix highlighting of symbolic data constructors within fixity declarations (e.g. `infixl 9 :$`).
- Add `meta.embedded.block.{quasi-quoter}` scope to quasi-quotations.
- Ensure highlighting of unicode forall syntax matches that of alphabetic forall syntax
  ([#175](https://github.com/haskell/language-haskell/issues/175)).
- Fix highlighting of empty quasi-quotations such as `[i||]`.
- Support GHC 9.0 pragmas: `LinearTypes`, `QualifiedDo`, `LexicalNegation`.
- Add support for [modifiers](https://github.com/ghc-proposals/ghc-proposals/pull/370), e.g. `id :: a %1 -> a`.

## 3.3.0 - 25.06.2020

- Different approach to fixing slow highlighting of data declarations
  ([#161](https://github.com/haskell/language-haskell/issues/161)).
- Fix highlighting for existential data constructor when the
  class constraint spans multiple lines.
- Fix highlighting for GADT with where clause using `{`/`}` for indentation.
- Improve highlighting of existential data constructor in complex situations.
- Fix highlighting of symbolic pattern declarations and symbolic data constructors.
- Improvements to highlighting of pragmas [#163](https://github.com/haskell/language-haskell/issues/163),
  including support for Haddock options.
- Fix highlighting of record at syntax following an identifier that ends with an apostrophe.
- Improve highlighting of symbolic constructors in import/export lists.

## 3.2.1 - 14.05.2020

- Attempt to limit backtracking in regular expression for data declarations
  ([#161](https://github.com/haskell/language-haskell/issues/161)).
- Improved highlighting for multi-line standalone kind signatures.
- Improved type highlighting in multiline deriving declarations.

## 3.2.0 - 11.05.2020

- Improvements to highlighting data constructors:
  - support for infix data constructors
    - in definitions ([#132](https://github.com/haskell/language-haskell/issues/132)),
    - in other situations ([#120](https://github.com/haskell/language-haskell/issues/120)),
  - correctly parse comments on the same line as a data declaration,
  - fix regression with GADT constructors when `::` follows on a new line
    ([#119](https://github.com/haskell/language-haskell/issues/119)),
  - fix regression: allow data constructor preceded by a symbol (e.g. parenthesis, comma) [#122](https://github.com/haskell/language-haskell/issues/122),
  - fix highlighting of GADT constructors that end with apostrophes,
  - highlighting now also applies to data families ([#72](https://github.com/haskell/language-haskell/issues/72)).
- Correct highlighting of types in type families.
- Improvements to pattern synonyms
  - support multiline type signatures,
  - allow several pattern synonyms to be declared at once ([#72](https://github.com/haskell/language-haskell/issues/72)).
- Fix regression: LiquidHaskell highlighting ([#131](https://github.com/haskell/language-haskell/issues/136))
- Improvements to deriving:
  - improve leniency for whitespace in deriving declarations,
  - allow unparenthesised `via` clauses, and highlight the derived instance code as usual,
  - highlight multiline `deriving via` clauses (in most situations),
  - highlight deriving strategies ([#72](https://github.com/haskell/language-haskell/issues/72)).
- Improvements to records:
  - fix regression: allow extra spaces between record field and type signature ([#118](https://github.com/haskell/language-haskell/issues/118)),
  - support record syntax in GADTs,
  - highlight record fields,
  - highlight record `@` syntax,
  - fix regression for comments inside record definitions ([#131](https://github.com/haskell/language-haskell/issues/136)).
- Improve highlighting of ticks ([#136](https://github.com/haskell/language-haskell/issues/136)),
  ([#71](https://github.com/haskell/language-haskell/issues/71)).
- Module imports/exports improvements:
  - allow C preprocessor instructions to appear in module exports,
  - improved highlighting of `type T` and `pattern P` declarations,
  - improve support for unusual indentation.
- Foreign import/export declarations:
   - more calling conventions recognised,
   - recognise safe/unsafe/interruptible keywords,
   - correct highlighting of type signature, including over multiple lines.
- Fix several issues with comments:
  - allow intervening comments in type/data declarations,
  - fix pragmas sometimes being highlighted as comments ([#150](https://github.com/haskell/language-haskell/issues/150)),
  - fix wrong highlighting when a pragma is found inside a block comment
  ([#116](https://github.com/haskell/language-haskell/issues/116)),
  - support for Haddock documentation heralds `*`, `^`, `$`.
- Highlight recognised language extensions.
- Highlight type signature in `SPECIALISE` annotations.
- Improvements to multi-line declarations:
  - fixed several issues involving multi-line type/data declarations ([#147](https://github.com/haskell/language-haskell/pull/147)),
  - fix regression in highlighting subsequent lines in a multi-line type signature
    when the initial `::` appears appears first on a line,
  - fix wrong highlighting in multi-line class declarations.
- Add support for visible kind application (and miscellaneous fixes for visible type application).
- Improved support for reserved symbolic operators.
- Bugfix for escaped character literals (e.g. `'\^A'`).
- Fix for floating point numeric literals not being highlighted properly.
- Newly highlighted items:
  - bang patterns and irrefutable patterns ([#145](https://github.com/haskell/language-haskell/issues/145)),
  - as mentioned above: record `@` syntax (tight infix `@`), and record fields,
  - bang patterns (prefix `!`) and irrefutable patterns (prefix `~`),
  - arrow operators such as `-<`,
  - opt-in: magic hash using `keyword.operator.hash` and `keyword.operator.postfix.hash`,
  - unrestricted OverloadedLabels ([#68](https://github.com/haskell/language-haskell/issues/68)),
  - role annotation keywords (nominal/representational/phantom).
  - GHC language extensions (including deprecated highlighting for deprecated extensions).
- Simple support for Haskell quasi-quoters `e`, `p`, `d` and `t` ([#23](https://github.com/haskell/language-haskell/issues/23)),
  as well as typed quotes.
  Other quasi-quoters simply disable Haskell highlighting.
- Support for `.hs-boot` files ([#117](https://github.com/haskell/language-haskell/issues/117)).
- Preliminary support for `C2Hs` and `Hsc2Hs` filetypes.
- Support for cabal [internal libraries](https://www.haskell.org/cabal/users-guide/developing-packages.html#sublibs).
- Fix type signature not always ending when encountering a closing bracket.
- Allow a qualified type to be the first argument of an infix constructor inside a data declaration.

## 3.1.0 - 11.05.2020

Released in error without any changes.

## 3.0.0 - 26.04.2020

- Integrated several contributions from [@robrix](https://github.com/robrix)
  - Highlight `common` stanzas in `.cabal` files
    ([#105](https://github.com/haskell/language-haskell/pull/105))
  - Highlight `benchmark` components in `.cabal` files
    ([#105](https://github.com/haskell/language-haskell/pull/105))
  - Highlight the `import` and `autogen-modules` fields in `.cabal` files
    ([#105](https://github.com/haskell/language-haskell/pull/105))
  - Fix an issue where operators starting with `::` were incorrectly treated as type signatures
    ([#106](https://github.com/haskell/language-haskell/pull/106))
  - Highlight `COMPLETE` pragmas ([#107](https://github.com/haskell/language-haskell/pull/107))
  - Highlight `INLINEABLE` pragmas ([#107](https://github.com/haskell/language-haskell/pull/107))
  - Highlight `COLUMN` pragmas ([#107](https://github.com/haskell/language-haskell/pull/107))
- Fixed highlighting for multi line type aliases
  ([#111](https://github.com/haskell/language-haskell/issues/111))
- Fixed highlighting of string literals in deprecation pragmas
  ([#112](https://github.com/haskell/language-haskell/issues/112))
- Specialized highlighting for `signature`, to permit it as an identifier
  ([#108](https://github.com/haskell/language-haskell/issues/108))
- Fixed comments occurring in place of export lists
  ([#104](https://github.com/haskell/language-haskell/issues/104))
- Pragmas are now case insensitive ([#81](https://github.com/haskell/language-haskell/issues/81))
- Fixed matcher for end of type annotations. Facilitates indented `module` blocks
  ([#91](https://github.com/haskell/language-haskell/issues/91)) and standalone deriving
  ([#89](https://github.com/haskell/language-haskell/issues/89))
- Updated cabal grammar ([#93](https://github.com/haskell/language-haskell/issues/93))
- Shoddily fixed promotion ticks ([#71](https://github.com/haskell/language-haskell/issues/71))
- Added support for custom type operators
  ([#70](https://github.com/haskell/language-haskell/issues/70))
- Support for single-line `deriving via` and `deriving ... via ...` ([#72](https://github.com/haskell/language-haskell/issues/72))
- Rudimentary support for pattern synonyms ([#72](https://github.com/haskell/language-haskell/issues/72))
- Better support for type families and type instances ([#72](https://github.com/haskell/language-haskell/issues/72))
- Fixed highlighting for type level integers ([#51](https://github.com/haskell/language-haskell/issues/51))
- Improved support for type definitions
  - Constructors are now highlighted properly in definitions
  - Fixed highlighting for records ([#38](https://github.com/haskell/language-haskell/issues/38))
  - Type signatures are now highlighted properly in single-line type definitions
  - GADT's can now span multiple lines ([#102](https://github.com/haskell/language-haskell/issues/102))
  - Implemented existential types ([#39](https://github.com/haskell/language-haskell/issues/39))
  - `data` and `newtype`s can now include kind signatures ([#35](https://github.com/haskell/language-haskell/issues/35))
- Support for foreign imports (see https://www.haskell.org/onlinereport/haskell2010/haskellch8.html)
  ([#44](https://github.com/haskell/language-haskell/issues/44))
- Support for visible type applications ([#73](https://github.com/haskell/language-haskell/issues/73))
- Support for nested block comments by [@reactormonk](https://github.com/reactormonk)
- `module` and `pattern` keyword in export lists
  ([#18](https://github.com/haskell/language-haskell/issues/18))
- Fixed parentheses handling in export lists and made the colouring more consistent
  ([#69](https://github.com/haskell/language-haskell/issues/69))
- Corrected comment delimiter for literate Haskell files. By [@sjorn3](https://github.com/sjorn3) in
  [#87](https://github.com/haskell/language-haskell/pull/87/files)
- As a substantial internal change the grammar migratd to the YAML format, to make it easier to
  maintain and develop with.
- Refined many of the tm scopes with new information available from the parser

## 2.7.0 - 29.12.2019

- Fixed the no-indent regex
  ([#86](https://github.com/haskell/language-haskell/issues/86))
- Changing auto indent rules to only trigger on first line after indent.
  Contributed in [#92](https://github.com/haskell/language-haskell/pull/92)
  by [@hanjinko](https://github.com/hajinko)

## 2.6.0 - 05.04.2019

- Highlighting for backpack signature files added. Contributed in
  [#74](https://github.com/haskell/language-haskell/pull/74) by
  [@edmundnoble](https://github.com/edmundnoble)
- `mixins` keyword added to the cabal grammar. Contributed in
  [#76](https://github.com/haskell/language-haskell/pull/76) by
  [@arkrost](https://github.com/arkrost)
- Module qualifiers in infix applications are now distinguished through
  highlighting. Contributed in
  [#58](https://github.com/haskell/language-haskell/pull/58) by
  [@sheaf](https://github.com/sheaf)
- Support for LiquidHaskell annotations added in
  [#78](https://github.com/haskell/language-haskell/pull/78) by
  [@ranjitjhala](https://github.com/ranjitjhala)
  - Add support for LiquidHaskell annotations

## 2.5.0 - 12.05.2018

- Adds support for numeric literals as defined in [this
  proposal](https://github.com/ghc-proposals/ghc-proposals/blob/master/proposals/0009-numeric-underscores.rst#new-syntax-this-proposal)
  in [#49](https://github.com/haskell/language-haskell/pull/49) by
  [@takenobu-hs](https://github.com/takenobu-hs)
- Added code injection to markdown for Haskell (`hs`, `haskell`), literate
  Haskell (`lhs`, `literate-haskell`) and Cabal (`Cabal`) in
  [#55](https://github.com/haskell/language-haskell/pull/55),
  [#56](https://github.com/haskell/language-haskell/pull/56) and
  [#57](https://github.com/haskell/language-haskell/pull/57) by
  [@glebec](https://github.com/glebec)
- Fixed parsing for type-level strings
  ([#50](https://github.com/haskell/language-haskell/pull/50))
- Fixed highlighting of empty type classes.
  ([#66](https://github.com/haskell/language-haskell/issues/66))

## 2.4.0 - 06.10.2017

- Merged pull request
  [#45](https://github.com/haskell/language-haskell/pull/45) by
  [@Porges](https://github.com/Porges)
    - Add support for some UnicodeSyntax
- Enabling off-side code folding (new feature since vscode 1.17) Folding a
    region of code does not fold empty lines trailing the region anymore
- Merged pull request
  [#47](https://github.com/haskell/language-haskell/pull/47) by
  [@scott-fleischman](https://github.com/scott-fleischman)
    - Add `haskell.indentationRules.enabled` setting to disable automatic
      indentation via user settings

## 2.3.2 - 18.08.2017

- Fixed highlighting for alternate control character syntax. Solves issue
  [#42](https://github.com/haskell/language-haskell/issues/43)

## 2.3.1 - 18.07.2017

- Patch release to fix version invalidity

## 2.3 - 18.07.2017

- Merged pull request
  [#37](https://github.com/haskell/language-haskell/pull/37) by
  [@jBugman](https://github.com/jBugman)
    - Adds `custom-setup` section to cabal syntax
    - Adds support for line comments (`--`) to cabal syntax
- Changed logo to png (svg is not supported anymore)

## 2.2.3 - 29.06.2017

- Adapted increaseIndentPattern to skip keywords followed by `'` (related to the
  handling of `keyword'` identifiers as reported in
  [#31](https://github.com/haskell/language-haskell/issues/31))
- Fixed terminating type signatures on `else`, `then` etc.
- Fixed not increasing indent for one-line `if` (see
  [#34](https://github.com/haskell/language-haskell/issues/34))

## 2.2.2 - 27.06.2017

- Fixed highlighting for `where` keyword in GADT definition
- Fixed highlighting for `<-` and following expression when preceeded by type
  signature (see
  [#28](https://github.com/haskell/language-haskell/issues/28))
- Added `mdo` and `rec` to keywords (see
  [#29](https://github.com/haskell/language-haskell/issues/29))
- Added automatic indent for `mdo` blocks
- Changed keyword regexes to not fire when followed by `'` (see
  [#31](https://github.com/haskell/language-haskell/issues/31))
- Fixed highlighing for qualified infix functions (see
  [#30](https://github.com/haskell/language-haskell/issues/30))

## 2.2.1 - 07.06.2017

- Removed snippets contribution from package.json (fixes `ENOENT: no such file
  or directory` error) discovered and fixed by
  [@dsifford](https://gihub.com/dsifford)

## 2.2.0 - 26.05.2017

- Removed snippets by request from [@Eugleo](https://github.com/Eugleo) in
  [#25](https://github.com/haskell/language-haskell/issues/25)

## 2.1.1 - 15.04.2017

- Fixed two issues with highlighting for deriving clauses
    - Added a new rule for deriving clauses of single class without parentheses
      (see [#15](https://github.com/haskell/language-haskell/issues/15) and
      [#19](https://github.com/haskell/language-haskell/issues/19))
    - Modified old rule inner matches to be recursive -> Adds correct
      highlighting for parethesised class type arguments

## 2.1.0  - 12.03.2017

- Fixed an issue where type signature detection would not end at end of record
  definition
- Added GHC pragmas and directives (thank you to
  [@metaleap](https://github.com/metaleap))

## 2.0.0 - 15.02.2017

- Retroactive version bump due to large previous changes
- License changed

## 1.5.0 - 13.02.2017

- Removed highlighting for prelude functions, as it is confusing. (see
  [#11](https://github.com/haskell/language-haskell/issues/11))
- New rules:
    - to recognize and correctly highlight inline type signatures (reported in
      [#11](https://github.com/haskell/language-haskell/issues/11))
    - for `type` to highlight left and right side of `=` as type signature
    - for `data` to highlight only right side of `=` as type signature
    - for distinction between comments and haddock documentation

## 1.4.4 - 12.01.2017

- Fixed a bug where in consecutive type signatures the later ones are not
  highlighed properly

## 1.4.3 - 23.12.2016

- Removing auto closing `'` per suggestion from
  [@HuwCampbell](https://github.com/HuwCampbell) (see
  [#9](https://github.com/haskell/language-haskell/issues/9))

### 1.4.2 - 21.12.2016

- Changing grammar to accomodate indented functions

### 1.4.1 - 21.12.2016

- Changing grammar to try and fix the markup of function names preceeding type
  signatures

### 1.4.0 - 17.12.2016

- Manual merging of changes from
  [haskell.tmbundle#18](https://github.com/textmate/haskell.tmbundle/pull/18) by
  [@sanssecours](https://github.com/sanssecours) for several markup fixes (most
  importantly multi line type signatures (see
  [#1](https://github.com/haskell/language-haskell/issues/1)))

### 1.3.0

- Replacing typescript initializer with json configuration
- Adding smart brackets

### 1.2.3

- PR from [@Miguel-Fontes](https://github.com/Miguel-Fontes) to
    - add markup for literate haskell files (see
      [#7](https://github.com/haskell/language-haskell/issues/7))
    - add markup for embedded haskell code in latex

# Exploring ReScript

## What is ReScript
`ReScript` is a rebrand and review of `Reason` language and `BuckleScript`(`Js` compiler) that tries to approach all the benefits of `OCaml` type system into `Js` environment.

[https://rescript-lang.org/blog/bucklescript-is-rebranding](https://rescript-lang.org/blog/bucklescript-is-rebranding)
[https://medium.com/swlh/learn-rescript-a-safer-way-to-write-javascript-part-1-e0b56d447c44](https://medium.com/swlh/learn-rescript-a-safer-way-to-write-javascript-part-1-e0b56d447c44)

## A bit of history
Before `ReScript` was `Reason`, a language built over `OCaml` that takes advantage over its type system and brings a more familiar syntax for `Js` developers.

Reason was first released in May 2016 and was built at Facebook by Jordan Walke, the creator of `React`. This new language was bundled along `BuckleScript`, a Js compiler that allowed to transpile from OCaml to Js. 

Later, `ReasonReact` augmented Reason syntax for easier development of React apps.

Reason was unsuccessful due to the large tech stack required(Js, React, OCaml, Reason, BuckleScript, etc...)

[https://reasonml.github.io/docs/en/what-and-why](https://reasonml.github.io/docs/en/what-and-why)
[https://reasonml.github.io/reason-react/docs/en/what-and-why](https://reasonml.github.io/reason-react/docs/en/what-and-why)
[https://reasonml.github.io/docs/en/faq#what-is-bucklescript-and-rescript-and-why-is-it-mentioned-in-so-many-reason-related-resources](https://reasonml.github.io/docs/en/faq#what-is-bucklescript-and-rescript-and-why-is-it-mentioned-in-so-many-reason-related-resources)

## ReScript capabilities
The documentation is divided in three main sections:
 - Language features
 - Javascript interop
 - Build system

### Language features
Here it explores language syntax and type system. Things that I found interesting:
  - Variables are immutables
  - Almost all types are infered unless Records. You may declare types if you want as well. Support composition, generic and recursive types 
  - Most primitive types has its equivalent in Js and it's expanded with some more like Int32 and Int64
  - Supports tuples, records, objects, list, arays and variants(enums) as data structures
  - Null & undefined doesn't exist as such. They are supported through _None_ and _unit_. Type systems enforces you to handle those cases
  - Functions are curried by default and may have labelled arguments
  - Pipe operator
  - Pattern matching
  - JSX support(besides `rescript-react`)
  - Async programming is only supported thourh promises & callbacks. Async/await feature will be released integrated with pipe operator
  - No need of importing modules. They are always available. Also has module interface support(_Signatures_)
  - Decorators

[https://rescript-lang.org/docs/manual/latest/overview](https://rescript-lang.org/docs/manual/latest/overview)

### Javascript interop
ReScript has the capability of integrating existing Js and viceversa in the same project. This allows to start using ReScript in any project. It's a big topic but this are the most relevant aspects.

 - Raw Js injection
 - Shared data types between Js and ReScript
 - External binding to any Js module/library, global variables
 - Browser support & polyfills for some ReScript own types

[https://rescript-lang.org/docs/manual/latest/interop-cheatsheet](https://rescript-lang.org/docs/manual/latest/interop-cheatsheet)

### Build system
ReScript come with it's own build system, compiling your project to Js ready to use. Some  importante features.
 - Namespace support
 - You may export to es6 or commonjs
 - Easy interop with other bundling systems like Webpack or Rollup

[https://rescript-lang.org/docs/manual/latest/build-overview](https://rescript-lang.org/docs/manual/latest/build-overview)

## ReScript-React
Although ReScript supports JSX by default, _rescript-react_ offers first class bindings to the language.
It supports element rendering and hooks nicely and comes with several modules for DOM access, event handling, inline styling and routing.

[https://rescript-lang.org/docs/react/latest/introduction](https://rescript-lang.org/docs/react/latest/introduction)

## Conclusions
ReScript type system is really something. It's strict and forces you to cover all cases. 
Main IDE's and editors supports it through plugins allowing syntax highlighting and errors, type hint and autocomplete, snippets, etc...
Documentation is good, especially where it compares ReScript -> Js outputs but sometimes examples are poor.
Today its community and ecosystem is small but Js interop mechanism may turn the tides in a near future. Also we have to take in count that It's Facebook who is behind the language.

The Js compilers/transpilers aren't [new](https://reasonml.github.io/docs/en/what-and-why#alternatives) and more will come. Who knows. It may happen that we don't need to develop in Js anymore(as we do today) but in our favorite language, exporting our code to a Js browser-ready.

ReScript simple syntax looks really good and it's type system it's nuts but right now it needs to have a complete Js support(async/await, bindings...) a better library ecosystem and more community. After that it can even become a game breaker. 

## Some other interesting links
 - [https://rescript-lang.org/packages](https://rescript-lang.org/packages)
 - [https://rescript-lang.org/syntax-lookup](https://rescript-lang.org/syntax-lookup)
 

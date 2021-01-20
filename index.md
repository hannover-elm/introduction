---
theme: gaia
---

# An Introduction to Elm

Elm is a delightful language for reliable webapps.

Website: [https://elm-lang.org](https://elm-lang.org)
Hannover Meetup: [Hannover Elm Language Meetup](https://meetup.com/Hannover-Elm-Language-Meetup) ([Website](https://hannover-elm.github.io/website))

---

## Agenda

- Motivation
- Installation
- Crowd Coding

---

## Motivation

Elm is a language that compiles to JavaScript. Its domain is webapps and thus it compares to other popular languages and frameworks such as React, TypeScript or Reason.

__Elm is reliable.__
Elm guarantees that you will have _no runtime exceptions_ in practise by using type interference to be _explicit about corner cases_. This helps greatly in maintaining projects even of considerable size.

---

__Elm is beginner-friendly.__
Elm's _helpful error messages_ aid beginner's in learning the language and encourages them continually to use _good coding practises_.

---

## Installation

One of us will share their screen while they install Elm and elm-format. The others can follow along and share their screen if they are stuck.

The goal is that everyone is able to write an Elm program with syntax highlighting and automatic code formatting, and to compile it.

---

## Crowd Coding

[Buttons program](https://elm-lang.org/examples/_compiled/buttons.html)

One of us will share their screen while the others will guide them to evolve a hello world program into the buttons program, explaining _syntax_ and _concepts_ as we go.

---

## Hello World


```elm
import Html exposing (text)

main =
    text "Hello World!"
```

---

## Buttons Program

_(see next page)_

---

```elm
import Browser exposing (sandbox)
import Html exposing (Html, button, div, text)
import Html.Events exposing (onClick)

main =
    sandbox { init = 0, update = update, view = view }

type Msg = Increment | Decrement

update msg model =
    case msg of
        Increment ->
            model + 1

        Decrement ->
            model - 1

view model =
    div []
        [ button [ onClick Decrement ] [ text "-" ]
        , div [] [ text (String.fromInt model) ]
        , button [ onClick Increment ] [ text "+" ]
        ]
```

---

## Resources

###### Learn Elm

- [Official Guide](https://guide.elm-lang.org)
- [Elm Packages](https://package.elm-lang.org)


###### Come to the Meetup

- [Hannover Elm Language Meetup](https://www.meetup.com/Hannover-Elm-Language-Meetup)

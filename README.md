# hubot-hint

[![NPM](https://nodei.co/npm/hubot-hint.png)](https://nodei.co/npm/hubot-hint/)

Hubot tells you how to use other commands

## Installation

Add **hubot-hint** to your `package.json` file:

```
npm install --save hubot-hint
```

Add **hubot-hint** to your `external-scripts.json`:

```json
["hubot-hint"]
```

Run `npm install`

## Commands

```ruby
hubot (.*) hint - Displays all commandHelps releated (.*)
```

## Examples

You can check rest of command arguments when you append `hint`.

```ruby
hubot> hubot what hint
hubot what roles do I have - Find out what roles you have
hubot what roles does <user> have - Find out what roles a user has

hubot> hubot what roles does hint
hubot what roles does <user> have - Find out what roles a user has
```

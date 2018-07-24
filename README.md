# hubot-programmer-humor

Feeling down?  Take a break with some programmer humor from Reddit!

See [`src/programmer-humor.coffee`](src/programmer-humor.coffee) for full documentation.

## Installation

In hubot project repo, run:

`npm install git+https://github.com/zack-hable/hubot-programmer-humor --save`

Then add **hubot-programmer-humor** to your `external-scripts.json`:

```json
[
  "hubot-programmer-humor"
]
```

## Usage

```
myHubot make me laugh
```
or
```
myHubot tell me a programmer joke
```

Your hubot will then respond with a random joke it finds from [/r/ProgrammerHumor](https://reddit.com/r/programmerhumor)
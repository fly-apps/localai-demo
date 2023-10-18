# LocalAI demo app for Fly.io

First deploy with:
```
fly deploy --vm-gpu-kind a100-pcie-40gb --volume-initial-size 100
```

From there for following deploys use:
```
fly deploy
```

Run `./cli` and/or see https://localai.io/ for Rest API.

## Examples

```
$ ./cli chat "tell me something nice about fly.io"
{"object":"chat.completion","model":"gpt-3.5-turbo","choices":[{"index":0,"finish_reason":"stop","message":{"role":"assistant","content":"We love fly.io because it's a platform that makes it easy for developers to build and deploy applications with minimal friction. It's also a great way to connect with other developers, share knowledge, and collaborate on open source projects."}}],"usage":{"prompt_tokens":0,"completion_tokens":0,"total_tokens":0}}
```

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

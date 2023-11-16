#!/bin/bash
set -euxo pipefail

bindmount() {
	[[ -n $1 ]] || return
	mkdir -p {/data/.bindmounts,}"$1"
	mount -o bind {/data/.bindmounts,}"$1"
}

for path in /root/.cache/huggingface ${MODELS_PATH} ${IMAGE_PATH} ${AUDIO_PATH}; do
	bindmount "$path"
done

if [[ -n $HUGGINGFACE_TOKEN ]]; then
	echo -n "$HUGGINGFACE_TOKEN" >/root/.cache/huggingface/token
fi

pip install -U xformers

exec /build/entrypoint.sh

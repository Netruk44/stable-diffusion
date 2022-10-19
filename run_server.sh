#! /bin/bash
echo "Starting server..."

if [ -z "$1" ]; then
  echo "Using default outdir 'outputs'"
  outdir=outputs_public
else
  echo "Using outdir '$1'"
  outdir="$1"
fi

conda run -n stable-diff --no-capture-output python ./scripts/dream.py --web --outdir $outdir

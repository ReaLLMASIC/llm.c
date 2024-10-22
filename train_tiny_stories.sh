#!/bin/bash
set -x

make clean
make train_gpt2cu

./train_gpt2cu \
	-e gpt2:d32 \
	-i "dev/data/fineweb10B/fineweb_train_*.bin" \
	-j "dev/data/fineweb10B/fineweb_val_*.bin"
	#
	# -i dev/data/tinystories/TinyStories_train.bin \
	# -j dev/data/tinystories/TinyStories_val.bin
# make clean

# make train_gpt2fp32cu

# ./train_gpt2fp32cu \
# 	-i dev/data/tinystories/TinyStories_train.bin \
# 	-j dev/data/tinystories/TinyStories_val.bin \
# 	-l "1e-3f"

# ./train_gpt2fp32cu \
	# -i dev/data/tinystories/TinyStories_train.bin \
	# -j dev/data/tinystories/TinyStories_val.bin \
	# -l "1e-3f" \
	# -v "1000" \
	# -b "12" \
	# -s "2000"


	# -i "dev/data/fineweb10B/fineweb_train_*.bin" \
	# -j "dev/data/fineweb10B/fineweb_val_*.bin" \

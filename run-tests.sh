#!/bin/sh

compiler=/run/media/christian/christian/ac_mesa/src/gallium/drivers/etnaviv/etnaviv_compiler

fail=0
pass=0
failed=""

for f in `find tgsi -name \*.tgsi`; do
	out="${f#tgsi/}"
	out="${out%\.tgsi}.asm"
	ref="reference/$out"
	out="out/$out"
	mkdir -p `dirname $out`
	echo "Processing: $f"
	ETNA_MESA_DEBUG=shaderdb $compiler $f >& $out
	res=$?
	if [ $res = 0 ]; then
		pass=$((pass + 1))
	else
		fail=$((fail + 1))
		failed="$f $failed"
	fi
done

echo "---------------------"
echo "---------------------"
echo "Pass: $pass"
echo "Fail: $fail"
echo "failed:"
for f in $failed; do
	echo $f
done

echo "---------------------"
echo "---------------------"
if [ -d reference ]; then
	diff reference out | diffstat
else
	echo "reference folder does not exist"
fi

for f in `find . -type f -print | grep cai`
do
    echo -ne "$f\t"
  sort -r -k 2 -n $f | head -1
done

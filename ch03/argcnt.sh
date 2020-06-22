#!/bin/bash -
echo there are $# arguments
i=1
for ARG
do
    echo args$i: $ARG
    let i=i+1
done

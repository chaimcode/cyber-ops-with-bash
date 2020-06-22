#!/bin/bash -
echo there are $# arguments
i=1
for ARG
do
    let i_even=$i%2
    # if (( i > 0 ))
    if [[ i_even -eq 0 ]]
    then
        echo args$i: $ARG
    fi
    let i=i+1
done

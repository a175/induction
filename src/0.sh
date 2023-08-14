#!/bin/bash
cat p.tex |\
    awk '/newest/{A=1} {if(A==1){print $0}}'|\
    awk '/end{prop}/{A=1} {if(A!=1){print $0}}'|\
    awk ' {if(A==1){print $0}} /label/{A=1}'|\
    cat htmlbase/index.0.html - htmlbase/index.1.html


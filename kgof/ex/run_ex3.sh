#!/bin/bash 

screen -AdmS ex3_kgof -t tab0 bash 
# launch each problem in parallell, each in its own screen tab
# See http://unix.stackexchange.com/questions/74785/how-to-open-tabs-windows-in-gnu-screen-execute-commands-within-each-one
# http://stackoverflow.com/questions/7120426/invoke-bash-run-commands-inside-new-shell-then-give-control-back-to-user

#screen -S ex2_kgof -X screen -t tab1 bash -lic "python ex2_prob_params.py gmd"
screen -S ex3_kgof -X screen -t tab2 bash -lic "python ex3_vary_nlocs.py sg5"
screen -S ex3_kgof -X screen -t tab3 bash -lic "python ex3_vary_nlocs.py gmd5"
screen -S ex3_kgof -X screen -t tab3 bash -lic "python ex3_vary_nlocs.py gvd5"
screen -S ex3_kgof -X screen -t tab3 bash -lic "python ex3_vary_nlocs.py gbrbm_dx50_dh10_v0"
screen -S ex3_kgof -X screen -t tab3 bash -lic "python ex3_vary_nlocs.py gbrbm_dx50_dh10_v1em3"



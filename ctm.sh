#!/bin/bash
#########################################################################################
#I/P: ali.*.gz
#O/P: ali.*.ctm, merged_alignment.txt
#########################################################################################

cd ~/Pipeline/saikrish/Forced-Alignment/Post_1/scripts/run_kaldi/

for i in exp/tri2b_ali_emma/ali.*.gz;
ali-to-phones --ctm-output exp/tri2b/final.mdl ark:"gunzip -c $i|" -> ${i%.gz}.ctm;
done;

cd ~/Pipeline/saikrish/Forced-Alignment/Post_1/scripts/run_kaldi/exp/tri2b_ali_emma
cat *.ctm > merged_alignment.txt


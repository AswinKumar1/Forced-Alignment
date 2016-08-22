# Forced-Alignment
GSoC'16 RedHen Labs


This Forced-Alignment Project is designed to run on Case HPC. Please refer to the wiki page for detailed instructions.


##Dependencies
The following softwares are required for executing this project. And present in Case HPC. 
* Kaldi  
* SRILM  
* IRSTLM  
* ATLAS  
* SOX  
* PYTHON  
* EDINBURGH SPEECH TOOLS 
* ffmpeg   

###Installation of Dependencies 
* Kaldi:  
    * `git clone https://github.com/kaldi-asr/kaldi.git`  
    * `make -j <num_free_CPUs>`
    * `cd ../src`  
    * `./configure.`  
Add .../kaldi-trunk/src/*bin,  
 .../kaldi-trunk/tools/openfst-1.3.4/src/bin and   
       .../kaldi-trunk/tools/irstlm/bin and   
 .../kaldi-trunk/tools/srilm/bin to $PATH in ~/.bashrc file.  
The above installation procedure can also be found in http://jrmeyer.github.io/kaldi/2016/01/26/Installing-Kaldi.html  

* SRILM:  
    * There is no proper guide for installation on HPC. So, I used 'scp' command to transfer the tar file from my local machine to remote machine.  
    * Download the setup from the official site. www.speech.sri.com/projects/srilm/download.html   
    * Run from your local machine: `scp path/to/file/ username@hpc1:/path/to/file/`    
    * Untar it using `tar -xvcf file.tar.gz `   
 
* IRSTLM:  
    * `wget <url for download>`    
    * untar it using `tar -xvcf file.tar.gz `   

* ATLAS:   
    * This dependency is available as a supportive model along with kaldi.

* SOX: 
    * Request your admin to install it using `yum install sox`.  

* Python:
    * First check whether it is installed using `module avail python`  
    * If not, then install it using `module load python`.  

* Edinburgh Speech tools:  
    * `wget http://www.cstr.ed.ac.uk/projects/speech_tools/`  
    * Untar it and follow the INSTALL file.  

* ffmpeg:  
    * First check for the dependency using `module spider ffmpeg`.  
    * If not, then install it using `module load ffmpeg`.  



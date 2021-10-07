import os.path 


#Establish snakefile paths.                                                                                                             
SNAKEFILE = workflow.snakefile                                                                                                          
REPO_DIR = os.path.dirname(os.path.abspath(SNAKEFILE))
print("repo_dir = "+str(REPO_DIR))


module other_workflow:
  snakefile: github("lpagie/repo2", path="snakefile_2.smk", commit="61f60f7")
  config: config

rule all:
  input:
    "output/final",
    "output/final_wf2"

use rule * from other_workflow as wf2_*


rule A:
  input:
    "output/fB"
  output:
    "output/final"
  shell:
    "bash {REPO_DIR}/scripts/touch.sh {output}"

rule B:
  output:
    "output/fB"
  shell:
    "bash {REPO_DIR}/scripts/touch.sh {output}"

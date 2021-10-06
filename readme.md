This repo is setup to illustrate a problem (?) with using snakemake modules
from github

This repo is a copy of lpagie/repo1 except that the lines importing the repo2
module are out commented. So, running this pipeline generates the expected
output files.

Clone this repo locally and run snakemake from a directory above the cloned
repo, using the wrapper `run.sh`

This snakefile will **not** 'import' lpagie/repo2, which in current form only contains
outcommented rules and a rule which is (supposedly) not meaningful for repo1.  
Running the snakemake of repo1 will ~not~ generate the output specified by rule
'all' (`output/final`)


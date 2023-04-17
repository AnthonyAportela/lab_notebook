A drop-in replacement for `conda` which is a cross-platform package manager. Docs can be found [here](https://mamba.readthedocs.io/en/latest/)
## How to install on linux

Install Miniconda
```bash
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O miniconda.sh
bash miniconda.sh -b -p $HOME/miniconda
rm miniconda.sh
echo 'export PATH="$HOME/miniconda/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc
```
Install Mamba
```bash
conda install -c conda-forge mamba
```

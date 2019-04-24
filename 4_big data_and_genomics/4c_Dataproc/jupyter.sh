#!/bin/bash

#

set -exo pipefail

readonly ROLE="$(/usr/share/google/get_metadata_value attributes/dataproc-role)"
readonly INIT_ACTIONS_REPO="$(/usr/share/google/get_metadata_value attributes/INIT_ACTIONS_REPO \
  || echo 'https://github.com/GoogleCloudPlatform/dataproc-initialization-actions.git')"
readonly INIT_ACTIONS_BRANCH="$(/usr/share/google/get_metadata_value attributes/INIT_ACTIONS_BRANCH \
  || echo 'master')"

readonly JUPYTER_CONDA_CHANNELS="$(/usr/share/google/get_metadata_value attributes/JUPYTER_CONDA_CHANNELS)"

readonly JUPYTER_CONDA_PACKAGES="$(/usr/share/google/get_metadata_value attributes/JUPYTER_CONDA_PACKAGES)"

echo "Cloning fresh dataproc-initialization-actions from repo ${INIT_ACTIONS_REPO} and branch ${INIT_ACTIONS_BRANCH}..."
git clone -b "${INIT_ACTIONS_BRANCH}" --single-branch "${INIT_ACTIONS_REPO}"

bash ./dataproc-initialization-actions/conda/bootstrap-conda.sh

if [[ -f /etc/profile.d/conda.sh ]]; then
  source /etc/profile.d/conda.sh
fi

if [[ -f /etc/profile.d/effective-python.sh ]]; then
  source /etc/profile.d/effective-python.sh
fi

PYTHON="$(ls /opt/conda/bin/python || which python)"
PYTHON_VERSION="$(${PYTHON} --version 2>&1 | cut -d ' ' -f 2)"
conda install jupyter matplotlib "python==${PYTHON_VERSION}"

conda install 'testpath<0.4'

if [ -n "${JUPYTER_CONDA_CHANNELS}" ]; then
  echo "Adding custom conda channels '${JUPYTER_CONDA_CHANNELS//:/ }'"
  declare -a a_channels=();
  a_channels=${JUPYTER_CONDA_CHANNELS//:/ };

  for channel in ${a_channels[@]};
  do
    conda config --add channels ${channel}
  done
fi

if [ -n "${JUPYTER_CONDA_PACKAGES}" ]; then
  echo "Installing custom conda packages '${JUPYTER_CONDA_PACKAGES/:/ }'"
  conda install ${JUPYTER_CONDA_PACKAGES//:/ }
fi

pip install jgscm==0.1.7

if [[ "${ROLE}" == 'Master' ]]; then
  ./dataproc-initialization-actions/jupyter/internal/setup-jupyter-kernel.sh
  ./dataproc-initialization-actions/jupyter/internal/launch-jupyter-kernel.sh
fi
echo "Completed installing Jupyter!"

if [[ ! -v "${INSTALL_JUPYTER_EXT}" ]]; then
  INSTALL_JUPYTER_EXT=false
fi
if [[ "${INSTALL_JUPYTER_EXT}" = true ]]; then
  echo "Installing Jupyter Notebook extensions..."
  ./dataproc-initialization-actions/jupyter/internal/bootstrap-jupyter-ext.sh
  echo "Jupyter Notebook extensions installed!"
fi
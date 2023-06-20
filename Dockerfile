FROM sawarae/miniconda:py36cuda102
SHELL ["conda", "run", "-n", "py36", "/bin/bash", "-c"]
RUN conda install -y -c pytorch pytorch=1.7.1 torchvision cudatoolkit=10.2 numpy=1.19.2
RUN conda install -y matplotlib=3.3.4 scikit-image=0.17.2 Pillow=8.3.1 tensorboard=2.6.0 tqdm=4.63.0 ipython=7.16.1
RUN conda install -y opencv=3.4.2
# RUN pip install opencv-python==4.5.3.56  # downgrade opencv to avoid version conflict error 
RUN pip install lmdb==1.2.1
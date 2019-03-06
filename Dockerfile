FROM rootproject/root-fedora

WORKDIR /work

RUN python -m pip install rootpy
RUN python3 -m pip install rootpy
RUN python3 -m pip install jupyter # install jupyter
RUN python3 -m pip install prompt-toolkit==1.0.15 # deal with prompt-toolkit issue (downgrade)

# Run jupyter
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8080", "--allow-root"]
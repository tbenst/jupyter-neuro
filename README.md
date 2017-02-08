First, create a folder for your notebooks `mkdir ~/notebooks`. Then download the example.result.hdf5 file and Getting-started-with-spike-analysis.ipynb to ~/notebooks.

```
docker run -d -p 8888:8888 -v /notebooks:/notebooks tbenst/jupyter-neuro
```

Open a web browser to 0.0.0.0:8888

## Dev
sudo docker build --no-cache -t jn . && sudo docker run --link eyecandy_web_1:eyecandy -v ~/Dropbox/Science/Notebooks:/notebooks -it -p 8888:8888 -v ~/mea:/notebooks/rec_mea jn
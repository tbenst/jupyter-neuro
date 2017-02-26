First, create a folder for your notebooks `mkdir ~/notebooks`. Then download the example.result.hdf5 file and Getting-started-with-spike-analysis.ipynb to ~/notebooks.

```
docker run -d -p 8888:8888 -v /notebooks:/notebooks tbenst/jupyter-neuro
```

Open a web browser to 0.0.0.0:8888

## Dev
sudo docker build --build-arg CACHE_DATE=$ate +%Y-%m-%d:%H:%M:%S) -t jn . && sudo docker run -it -p 8000:8888 --link eyecandy_web_1:eyecandy -v ~/code/dura/glia-notebooks:/notebooks -v ~/Dropbox/data:/notebooks/mea jn
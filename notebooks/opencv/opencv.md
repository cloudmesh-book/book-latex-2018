
# Open CV

OpenCV (Open Source Computer Vision Library) is a library of thousands of algorithms for various applications in computer vision and machine learning. It has C++, C, Python, Java and MATLAB interfaces and supports Windows, Linux, Android and Mac OS. In this tutorial, we will explain basic features of this library, including the implementation of a simple example.

## Overview

OpenCV has countless functions for image and videos processing. The pipeline starts with reading the images, low-level operations on pixel values, preprocessing e.g. denoising, and then multiple steps of higher-level operations which vary depending on the application. OpenCV covers the whole pipeline, especially providing a large set of library functions for high-level operations.
A simpler library for image processing in Python is Scipy's multi-dimensional image processing package (scipy.ndimage).

## Installation

OpenCV for Python can be installed on Linux in multiple ways, namely PyPI(Python Package Index), Linux package manager (apt-get for Ubuntu), Conda package manager, and also building from source. You are recommended to use PyPI. Here's the command that you need to run:
```
$  pip install opencv-python
```

This was tested on Ubuntu 16.04 with a fresh Python 3.6 virtual environment. In order to test, import the module in Python command line:
```
>>> import cv2
```
If it does not raise an error, it is installed correctly. Otherwise, try to solve the error.

For installation on Windows, see: https://docs.opencv.org/3.0-beta/doc/py_tutorials/py_setup/py_setup_in_windows/py_setup_in_windows.html#install-opencv-python-in-windows.

Note that building from source can take a long time and may not be feasible for deploying to limited platforms such as Raspberry Pi.

## A Simple Example
In this example, an image is loaded. A simple processing is performed, and the result is written to a new image.

### Loading an image


```python
%matplotlib inline
import cv2

# Load an image
img = cv2.imread('opencv_files/4.2.01.tiff') 
# The image was downloaded from USC standard database: 
# http://sipi.usc.edu/database/database.php?volume=misc&image=9
```

### Displaying the image

The image is saved in a numpy array. Each pixel is represented with 3 values (R,G,B). This provides you with access to manipulate the image at the level of single pixels.
You can display the image using imshow function as well as Matplotlib's imshow function.


```python
# You can display the image using imshow function:
cv2.imshow('Original',img)
cv2.waitKey(0)
cv2.destroyAllWindows()
```


```python
# Or you can use Matplotlib
import matplotlib.pyplot as plt
# If you have not installed Matplotlib before, install it using: pip install matplotlib

plt.imshow(img)
```




    <matplotlib.image.AxesImage at 0x7fcecb4eee48>




![png](opencv_files/output_5_1.png)


### Scaling and Rotation

Scaling (resizing) the image relative to different axis


```python
res = cv2.resize(img,None,fx=1.2, fy=0.7, interpolation = cv2.INTER_CUBIC)
plt.imshow(res)
```




    <matplotlib.image.AxesImage at 0x7fcecb4cca90>




![png](opencv_files/output_7_1.png)


Rotation of the image for an angle of t


```python
rows,cols,_ = img.shape
t = 45
M = cv2.getRotationMatrix2D((cols/2,rows/2),t,1)
dst = cv2.warpAffine(img,M,(cols,rows))

plt.imshow(dst)
```




    <matplotlib.image.AxesImage at 0x7fcec835c9b0>




![png](opencv_files/output_9_1.png)


### Gray-scaling


```python
img2 = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY)
plt.imshow(img2, cmap='gray')
```




    <matplotlib.image.AxesImage at 0x7fcec8332ef0>




![png](opencv_files/output_11_1.png)


### Image Thresholding


```python
ret,thresh = cv2.threshold(img2,127,255,cv2.THRESH_BINARY)
plt.subplot(1,2,1), plt.imshow(img2, cmap='gray')
plt.subplot(1,2,2), plt.imshow(thresh, cmap='gray')
```




    (<matplotlib.axes._subplots.AxesSubplot at 0x7fcec8381eb8>,
     <matplotlib.image.AxesImage at 0x7fcec841e358>)




![png](opencv_files/output_13_1.png)


### Edge Detection
Edge detection using Canny edge detection algorithm


```python
edges = cv2.Canny(img2,100,200)

plt.subplot(121),plt.imshow(img2,cmap = 'gray')
plt.subplot(122),plt.imshow(edges,cmap = 'gray')
```




    (<matplotlib.axes._subplots.AxesSubplot at 0x7fcec82ec9e8>,
     <matplotlib.image.AxesImage at 0x7fcec82ca828>)




![png](opencv_files/output_15_1.png)


## Further Features

OpenCV has implementations of many machine learning techniques such as KMeans and Support Vector Machines, that can be put into use with only a few lines of code. It also has functions especially for video analysis, feature detection, object recognition and many more. You can find out more about them in their website <https://docs.opencv.org/3.0-beta/index.html>. 
OpenCV was initially developed for C++ and still has a focus on that language, but it is still one of the most valuable image processing libraries in Python.

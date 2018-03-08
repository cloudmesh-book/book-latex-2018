

```python
import os
os.getcwd()
# owner of the pyspark notebook created the working directory as follows. 
```




    '/home/jovyan/work'




```python
# runs a simple exercise on rdd ( 5 samples picked up out of 1000)
import pyspark
sc = pyspark.SparkContext()
# this can only be run once (because multiple Spark Contexts won't be allowed)
```


```python
rdd = sc.parallelize(range(1000))
rdd.takeSample(False, 5)
# run this multiple times and you will get different values as the output
```




    [90, 783, 252, 162, 48]




```python
from pyspark.mllib.clustering import KMeans, KMeansModel
from numpy import array
from math import sqrt
from pyspark.mllib.linalg import Vectors
from pyspark.mllib.linalg import SparseVector
# Load and parse the data
sc.version
```




    '2.2.0'




```python
data = array([0.0,0.0, 1.0,1.0, 9.0,8.0, 8.0,9.0]).reshape(4, 2)
```


```python
model = KMeans.train(
...     sc.parallelize(data), 2, maxIterations=10, initializationMode="random",
...                    seed=50, initializationSteps=5, epsilon=1e-4)
```


```python
model.predict(array([0.0, 0.0])) == model.predict(array([1.0, 1.0]))
```




    True




```python
model.predict(array([8.0, 9.0]))
```




    1




```python
model.predict(array([8.0, 9.0])) == model.predict(array([9.0, 8.0]))
```




    True




```python
model.k
```




    2




```python
model.computeCost(sc.parallelize(data))
```




    2.0000000000000004




```python
model = KMeans.train(sc.parallelize(data), 2)
```


```python
sparse_data = [
...     SparseVector(3, {1: 1.0}),
...     SparseVector(3, {1: 1.1}),
...     SparseVector(3, {2: 1.0}),
...     SparseVector(3, {2: 1.1})
... ]
```


```python
model = KMeans.train(sc.parallelize(sparse_data), 2, initializationMode="k-means||",
...                                     seed=50, initializationSteps=5, epsilon=1e-4)
```


```python
model.predict(array([0., 1., 0.]))

```




    0




```python
model.predict(array([0., 0., 1.])) 
```




    1




```python
model.predict(sparse_data[0]) 
```




    0




```python
model.predict(sparse_data[2]) 
```




    1



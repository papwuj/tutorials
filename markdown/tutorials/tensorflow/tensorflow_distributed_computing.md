# TensorFlow - Distributed Computing
This chapter will focus on how to get started with distributed TensorFlow. The aim is to help developers understand the basic distributed TF concepts that are reoccurring, such as TF servers. We will use the Jupyter Notebook for evaluating distributed TensorFlow. The implementation of distributed computing with TensorFlow is mentioned below −

**Step 1** − Import the necessary modules mandatory for distributed computing −

```
import tensorflow as tf
```
**Step 2** − Create a TensorFlow cluster with one node. Let this node be responsible for a job that that has name "worker" and that will operate one take at localhost:2222.

```
cluster_spec = tf.train.ClusterSpec({'worker' : ['localhost:2222']})
server = tf.train.Server(cluster_spec)
server.target
```
The above scripts generate the following output −

```
'grpc://localhost:2222'
The server is currently running.
```
**Step 3** − The server configuration with respective session can be calculated by executing the following command −

```
server.server_def
```
The above command generates the following output −

```
cluster {
   job {
      name: "worker"
      tasks {
         value: "localhost:2222"
      }
   }
}
job_name: "worker"
protocol: "grpc"
```
**Step 4** − Launch a TensorFlow session with the execution engine being the server. Use TensorFlow to create a local server and use **lsof** to find out the location of the server.

```
sess = tf.Session(target = server.target)
server = tf.train.Server.create_local_server()
```
**Step 5** − View devices available in this session and close the respective session.

```
devices = sess.list_devices()
for d in devices:
   print(d.name)
sess.close()
```
The above command generates the following output −

```
/job:worker/replica:0/task:0/device:CPU:0
```

[Previous Page](../tensorflow/tensorflow_keras.md) [Next Page](../tensorflow/tensorflow_exporting.md) 

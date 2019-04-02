import tensorflow as tf
sess = tf.InteractiveSession() # interactive session
x = [[1.,2.,1.],[1.,1.,1.]]    # a 2D matrix as input to softmax
y = tf.nn.softmax(x)           # this is the softmax function
                           
u = y.eval()
print(u)
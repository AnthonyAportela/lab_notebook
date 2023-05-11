# What's a graph?
A graph is a data structure consisting of nodes and edges, where the nodes represent some object, and edges represent relationships between objects.

# Graphs with NetworkX
`networkx` is a python library for making graphs.
In order to draw the graph, we also need `matplotlib`.

In case you haven't already, install the libraries either in the terminal or directly in `jupyter`.

In terminal:

```sh
pip install networkx matplotlib
```

In jupyter:

```python
!pip install networkx matplotlib
```

The code will go like the following:

1.   Create networkx’s **DiGraph** object “H”

```python
import networkx as nx
H = nx.DiGraph()
```

2.  Add nodes that contain different labels, colors, and size

```python
H.add_nodes_from([
	(0, {"color": "blue", "size": 250}),
	(1, {"color": "yellow", "size": 400}),
	(2, {"color": "orange", "size": 150}),
	(3, {"color": "red", "size": 600})
])
```

The format for each node goes:

```
(node ID, dictionary of node attributes)
```

3.  Add edges to create a relationship between two nodes. For example, “(0,1)” means that **0** has a directional dependency on **1**. We will create bidirectional relationships by adding “(1,0)”

```python
H.add_edges_from([
	(0, 1),
	(1, 2),
	(1, 0),
	(1, 3),
	(2, 3),
	(3, 0),
])
```

-   Extract colors and sizes in the form of lists

```python
node_colors = nx.get_node_attributes(H, "color").values()
colors = list(node_colors)
node_sizes = nx.get_node_attributes(H, "size").values()
sizes = list(node_sizes)
```

So here we are using `get_node_attributes` to get the values of given attributes from the graph called `H`.
For this example, the attributes have corresponding arguments when plotting, so we extract them to better see the literal attributes of the graph.

-   Plot the graph using networkx’s **draw** function

```python
nx.draw(H, with_labels=True, node_color=colors, node_size=sizes)
```

The output should end up looking something like this:

![](img/networkx_graph_example.png)


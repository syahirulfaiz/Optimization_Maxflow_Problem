# Optimization - Maxflow Problem #

## Given ##

directed graph $D = (V,A)$,
capacity function $u : A -> R_{\geq0}$,
start node $s \in V $,
destination node $t \in V$

## Task ##

Find $s-t$ flow of maximum throughput that satisfies capacity constraints: $u(a)$ limits the amount of flow that can be sent through arc $a$


## APPROACH ##
definition of variable(s) :

1. I define the amount of flow that sent through arc [source] to arc [destination] with this format :
flow_\[source\]\[destination\]
\[source\] is the name of a node, where the flow is going out.
\[destination\] is the name of a node, where the flow is going in.  

For example : 
if I would like to define the flow sent out from node s to node a : 
\[source\] = node s
\[destination\] = node a
flow_sa: the amount of flow that sent through an arc which connects the node s to node a.

Therefore, the other flow(s) sent from every arc, defined as follows: flow_ab, flow_ae, etc.


2. I define the 'Throughput_\[node\]' variable, to explain about the differences between the flow which going in and the flow which going out. The amount of flow going in must be the same amount of the flow going out. Therefore, for example, I define :

Throughput_a : 
    flow_sa - flow_ab = flow_ae + flow_af
<=>	flow_sa - flow_ab - (flow_ae + flow_af) = 0
<=>	flow_sa - flow_ab - flow_ae - flow_af) = 0      


3. The 'Bounds' section lists all of the limits of the capacity of each arc. For example, if I want to define the amount of flow which can go through arc s to a, with the limit of capacity 9 (as stated in slide 117) :

0 <= flow_sa <= 5 



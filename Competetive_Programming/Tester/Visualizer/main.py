import graphviz
import sys

DIRECTED = False
TREE = False

args = sys.argv

if 'd' in args:
	DIRECTED = True

if 't' in args:
	TREE = True


graph = graphviz.Graph()

if DIRECTED:
	graph = graphviz.Digraph()


l1 = [int(x) for x in input().split()]

if len(l1) == 1:
	TREE = True

if TREE:
	l1.append(l1[0]-1)

n,m = l1

for i in range(n):
	graph.node(str(i+1),str(i+1))

edges = []
for j in range(m):
	u = 0
	v = 0
	w = 0
	inp = input().split()
	if u > v:
		u,v = v,u
	if len(inp) == 3:
		u,v,w = (int(x) for x in inp)
		edges.append([u,v,w])
	else:
		u,v = (int(x) for x in inp)
		edges.append([u,v])


edges.sort()
for eg in edges:
	if len(eg) == 3:
		u,v,w = eg
		graph.edge(str(u), str(v), label=str(w))
	else:
		u,v = eg
		graph.edge(str(u), str(v))
	

graph.render('/home/shivang/Projects/C++/Tools/Tester/Visualizer/result.gv', view=True)  

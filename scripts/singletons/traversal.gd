extends Node

var graph = {}

func create_graph(graph):
	self.graph = graph
	
func add_edge(u, v):
	graph[u].append(v)
	graph[v].append(u)

func dfs_rec(v, visited):
	var arr = []
	visited.append(v)
	for neighbour in graph[v]:
		arr.append(neighbour)
	arr.sort()
	arr.invert()
	for i in arr:
		if !(i in visited):
			dfs_rec(i, visited)
			
func dfs(v):
	var visited = []
	dfs_rec(v, visited)
	#print(visited)
	print()
	return visited

func bfs_rec(v, visited, queue, order):
	var arr = []
	order.append(v)
	if !(v in visited):
		visited.append(v)
	for neighbour in graph[v]:
		arr.append(neighbour)
	arr.sort()
	arr.invert()
	for i in arr:
		if !(i in visited):
			queue.append(i)
			visited.append(i)
	if queue:
		bfs_rec(queue.pop_front(), visited, queue, order)

func bfs(v):
	var visited = []
	var queue = []
	var order = []
	bfs_rec(v, visited, queue, order)
	print(order)
	print()



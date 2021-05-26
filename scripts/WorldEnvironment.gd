extends WorldEnvironment

var graph = {}
	
func add_edge(u, v):
	graph[u].append(v)
	graph[v].append(u)
	
func create_list(list):
	for i in list:
		graph[i] = []
	
func _ready():
	var array = [6.74, 10.78, 8.31, 7.5, 8.89, 6.98, 7.65, 7.35, 3.25, 4.12, 3.21, 6.77]
	create_list(array)
	add_edge(6.74, 6.77)
	add_edge(6.74, 10.78)
	add_edge(10.78, 8.31)
	add_edge(8.31, 6.77)
	add_edge(6.77, 3.21)
	add_edge(3.21, 7.50)
	add_edge(7.50, 8.31)
	add_edge(7.5, 8.89)
	add_edge(8.89, 4.12)
	add_edge(4.12, 3.21)
	add_edge(4.12, 3.25)
	add_edge(3.25, 6.98)
	add_edge(6.98, 8.89)
	add_edge(6.98, 7.65)
	add_edge(7.65, 10.78)
	add_edge(7.65, 7.35)
	add_edge(7.35, 3.25)
	add_edge(7.35, 6.74)
	traversal.create_graph(graph)
	traversal.dfs(6.74)

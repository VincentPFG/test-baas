b = yes

f = -> new Promise (resolve, reject) ->
	setTimeout ->
		if b then resolve 'foo' else reject 'rejetée'
	, 3000

# f()
# 	.then (value) -> console.log value
# 	.catch (error) -> console.log error

(-> console.log await f())()

# console.log f()

# for n in [1..10]
# 	setTimeout ->
# 		console.log n
# 	, 1000
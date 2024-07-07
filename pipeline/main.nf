params.param3 = "${params.param2}-12345"

println ""
println "Params:"
params.each{ k, v -> println "${k} = ${v}" }

println ""
println "Data:"
ch = channel.fromPath('/data/**')
ch.subscribe { println "$it" }

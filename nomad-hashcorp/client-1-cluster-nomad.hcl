# client-cluster-nomad.hcl for aws
#
# available to run tasks and interact with server

# increase log verbosity
log_level = "DEBUG"

# setup data dir
data_dir = "/var/wplex/devops/nomad-hashcorp/client1"

# enable the client
client { 
	enabled = true

	# talking to 'server1'
	# for production this should be like 'nomad.service.consul:4647'
	# and a system like consul used for service discovery
	servers = ["127.0.0.1:4647"]
}

# modify our port to avoid collision with 'server1'
ports {
	http = 5656
}
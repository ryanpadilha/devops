# server-cluster-nomad.hcl for aws
#
# define to start an agent in server mode and elect as a leader
# will manage state and make scheduling decisions

# increase log verbosity
log_level = "DEBUG"

# setup data dir
data_dir = "/var/wplex/devops/nomad-hashcorp/server1"

# enable the server
server {
	enabled = true

	# self-elect, should be 3 or 5 for production
	bootstrap_expect = 1
}
# ansible-multiple-passwds

Encrypts passwords for many hosts into a single vault file. This is for organisations that have automated 
password release systems that generate a new random password per host for a time period. All the passwords
can be captured and encrypted into a single yaml file. 

Run `vagrant up` then `vagrant ssh` to login. change directory to the `/vagrant_data`. 
install the prerequisites with `prerequisites.sh` and the test play with `run_ansible.sh`. 

Note that the demo passes the following test variable as JSON on the commandline:

```
# the list of hostnames. expected to be configured as extra vars in a tower template
static_pass:
  - host_one
  - host_two
# the passwords for each host. expected to be collected via an ansible tower survey
host_one: password1
host_two: password2
```

Note that this playbook is designed to run against locahost. You will then need to upload the resultant file 
`/tmp/all_passwds.yml` localhost to wherever you can use it e.g., git. 

The script `decrypt.sh` tests that the resultant map can be printed out.  

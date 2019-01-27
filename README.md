# Test

This test project is ansible role which will install ***absence-control*** web-application on 
**Ubuntu 16.04.** and do configure it.

Created during test ececution for 
[**Russian central bank**](https://www.cbr.ru/)

# Features
It was developed on Ubuntu 16.04. (xenial ) by default. 
All tasks implemented via set of roles.  Role's behavior assumes one of two ways:
1. Initial service configuration
2. Build and deploy web-application, then start it

# Variables
| **Name**                   | **Default** | **Description**                       |
|:---------------------------|:------------|:--------------------------------------|
|openvpn_ca_certificate      |             |OpenVPN CA certificate                 |
|openvpn_certificate         |             |OpenVPN certificate                    |
|openvpn_distribution_release|xenial       |Name of distribution release allowed   |
|openvpn_distribution_version|16.04        |Version of distribution release allowed|
|openvpn_private_key         |             |OpenVPN private key                    |
|openvpn_remote_host         |8.8.8.8      |OpenVPN client remote host             |
|openvpn_remote_port         |2195         |OpenVPN client remote port             |
|openvpn_remote_prot         |udp          |OpenVPN client protocol                |
|openvpn_static_key          |             |OpenVPN secret static key              |


# Tags
Use --tags [Tagname] to enable/disable parts of tasks. On default all tasks are enabled, 
but if you used at least one tag, then unicluded tagged tasks will be disabled.

| **Tagname**       | **Description**                      |
|:------------------|:-------------------------------------|
| **update**        | Enable updating of all apt repository|
|**deploy**|Enable deploy role tasks    |
|**jdk**|Enable jdk role tasks    |
|**tomcat**|Enable tomcat role tasks    |
|**maven**|Enable maven role tasks    |
|**postgre**|Enable postgre role tasks    |


# Running test task
Use **test.sh** shell script or run **"sudo ansible-playbook ./test.yml"** from test 
directory. It needs to add target host records to inventory (Inventory/hosts) 
before execution.

# Author
(C) Rinat Ametov



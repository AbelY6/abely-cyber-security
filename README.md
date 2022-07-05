## Automated ELK Stack Deployment
The files in this repository were used to configure the network depicted below.

https://github.com/AbelY6/abely-cyber-security/tree/main/Diagrams

These files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above. Alternatively, select portions of the ansible playbook files may be used to install only certain pieces of it, such as Filebeat.

https://github.com/AbelY6/abely-cyber-security/tree/main/Ansible/playbooks

This document contains the following details:
- Description of the Topology
- Access Policies
- ELK Configuration
  - Beats in Use
  - Machines Being Monitored
- How to Use the Ansible Build

### Description of the Topology

The main purpose of this network is to expose a load-balanced and monitored instance of DVWA, the D*mn Vulnerable Web Application.

Load balancing ensures that the application will be highly secure, in addition to restricting unwanted traffic to the network.

What aspect of security do load balancers protect? What is the advantage of a jump box?_

Load balancers protect against Distributed-Denial of Service attacks (DDoS) which cause an entire network to shut down. DDoS attacks create a major problem for networks if not handled in a timely manner as a company’s reputation and information is at great risk. Load balancers protect the main network from being accessed but unwanted threat actors. Load balancers are like night club doors with large security guards in front that keep the riff raff out. A jump box is like a load balancer in a security sense that it provides an additional step from either being detected or hacked. The jump box allows a single road to a point. By using a jump box you can ensure that certain web pages and networks are only accessible through the jump box. In a way having a network accessible through a single point can be good and detrimental. Depending on the security level of the jump box your network and information is inaccessible to the public, however if that jump box is comprised then danger awaits.  

Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the data and system acitiviy.

What does Filebeat watch for?_Filebeat watches the log files in a computer.
What does Metricbeat record?_Metricbeat records the services running on your network.

The configuration details of each machine may be found below.
| Name     | Function | IP Address | Operating System |
|----------|----------|------------|------------------|
| Jump Box | Gateway  | 10.0.0.4   | Linux            |
| Web 1    | DVWA     | 10.0.0.5   | Linux            |
| Web 2    | DVWA     | 10.0.0.6   | Linux            |
| ELK      | Kibana   | 10.1.0.4   | Linux            |

### Access Policies
The machines on the internal network are not exposed to the public Internet. 

Only the Jump Box machine can accept connections from the Internet. 

Access to this machine is only allowed from the following IP addresses: 73.184.82.20

Machines within the network can only be accessed by the Jump Box.
IP address: 20.213.85.35

A summary of the access policies in place can be found in the table below.
| Name     | Publicly Accessible | Allowed IP Addresses |
|----------|---------------------|----------------------|
| Jump Box | Yes                 | 73.184.82.20         |
| Web 1    | No                  | 10.0.0.4             |
| Web 2    | No                  | 10.0.0.4             |
| ELK VM   | No                  | 10.0.0.4             |


### Elk Configuration
Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous because changes can be made quickly as demand and need changes. 

What is the main advantage of automating configuration with Ansible? Automation of the installation using ansible playbooks allows the user to be able to change and edit the playbook to the desired preferences without having to recreate the entire playbook. 


The playbook implements the following tasks:
- Install Docker 
- Install Filebeat and Metricbeat to desired machines
- Allows for GUI on local host machine 
- Limits traffic to and from only desired machines 

The following screenshot displays the result of running `docker ps` after successfully configuring the ELK instance.
https://github.com/AbelY6/abely-cyber-security/blob/main/Images/Sudo%20docker%20ps%20in%20elk%20server.png

### Target Machines & Beats
This ELK server is configured to monitor the following machines:
10.0.0.5 and 10.0.0.6
We have installed the following Beats on these machines:
Filebeat and Metricbeat

These Beats allow us to collect the following information from each machine:

Through the installation of Filebeat and Metricbeat we are able to view different statistics from each computer. Metricbeat beat allows us to keep track of metrics on each computer, like what applications are running, and system information regarding memory and space or lack therof. Filebeat on the other hand allows us to view changes or attempt changes to files and logon attempts. 

### Using the Playbook
In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned: 
SSH into the control node and follow the steps below:
- Copy the filebeat-configuration.yml file to /etc/ansible/files/filebeat-configuration.yml.

- Update the configuration file to include the IP address of where Kibana will be hosted along with the port that will allow access. 

- Run the playbook, and navigate to “http://20.70.66.166:5601” to check that the installation worked as expected. The public Ip address for 10.1.0.4.

Answer the following questions to fill in the blanks:_

- Which file is the playbook? Where do you copy it?_ 
/etc/ansible/files/filebeat-configuration.yml and it is copied to /etc/filebeat/filebeat.yml

- Which file do you update to make Ansible run the playbook on a specific machine? How do I specify which machine to install the ELK server on versus which to install Filebeat on?
To run this playbook on a specific machine filebeat-playbook.yml would need to be updated under the hosts category with changes 

- Which URL do you navigate to in order to check that the ELK server is running?
http://20.70.66.166:5601/




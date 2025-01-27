<h2> Security </h2>
	- The triad of security (CIA) is: Confidentiality, Integrity, Availability.
<h3> Security Models </h3>
<h4> Bell-LaPadula Model </h4>
	- This is for confidentiality. Giving certain people Read only access while others get Read/Write and the remaining, no access.
	- It is called "Write up, read down" for the higher ups to be able to read and write (write up) and still being able to receive info from lower down (read down)
<h4> Biba Model </h4>
	- This is for integrity.
	- 
	-
<h4> Clark-Wilson Model </h4>
	- This is for integrity also.




- Infrastructures:
	- IaaS (Infrastructure as a Service)
	- SaaS (Software as a Service)


The ways of being able to exploit a web application:
1) Through the login form by bruteforcing or other techniques like dictionary attack, OSINT or others. The goal here is to get confidential information such as victim's information which includes credit card and passwords.
2) Exploit the database by intercepting the web app through means of injecting code or whatnot when the app is reaching for the database. This includes sql injections or the like. The goal here is to get info that is confidential or not required.
3) Testing the payment detail system by flooding it with fake info to achieve the system's way of reaching the database. Through this, the attacker is able to discover the means of how the info is submitting or retrieved from the database. If it is clear text or a weak encryption. 









<h3> OWASP </h3>
<h5> 1) Identification and Authentication Failure </h5> 
- This goes hand in hand with the mentioned info above.  A weak password or a guessable one which is prone to exploitation. This process of impersonating another to achieve information or exploit the system by gaining unauthorized access. Sometimes the problem is that the password is stored in plain text which is prone to attacks.

<h5> 2) Broken Access Control </h5>
- When the access control is broken by not implementing the principle of least privilege. An example would be; a client being able to view other client's bank statements or alter info that isn't allowed or intended. 

<h5> 3) Injection </h5>
- Injecting code to gain unauthorized access to confidential information. This is usually because of lack of proper validation and sanitation of the user's input. 

<h5> 4) Cryptographic Failures </h5>
- Having a weak encryption or the decryption key saved on the server/app. This makes it so the attacker can attack and gain unauthorized access once more. This includes having websites use HTTP (without the s) which is not encrypted. Others can read whatever u send through HTTP. 
- Another example is to shift each letter by 1:
	- "Majid's Notes" would become "Nbkjd't Opuft"
- This is a very bad practice of encryption.









<h2> ISO/IEC 27001 </h2>
- This is a standard that utilizes the requirements to plan, develop, run and update an organization's Information Security Management Systems (ISMS).









<h1> Cyber Kill Chain steps </h1>
<h2> 1) Reconnaissance </h2>
- This is where you gather information and whatnot before the attack is made. This includes OSINT (Open-Source Intelligence). 
	- Email Harvesting: the process of obtaining email addressesfrom public, paid, or free services. An attacker can use email-address harvesting for a phishing attack (a type of social-engineering attack used to steal sensitive data, including login credentials and credit card numbers). Tools include: theharvester, hunter.io, OSINT Framework

<h2> 2) Weaponization </h2>
<h2> 3) Delivery </h2>
- This is where the attacker spreads his exploit/malware. This includes the use of phishing emails, MITM Attacks, compromising a website frequently used by the victim, sending physical USBs with the company's logo, etc.
<h2> 4) Exploit </h2>
<h2> 5) Installation (Backdooring for re-accessing) </h2>
- A list of modern and ancient techniques can be found here on this website: [Attack.mitre.org]  [unifiedkillchain.com]
- Using the TimeStomping causes intense and arduous task for the forensics team and digital footprinting. It lets the attacker modify, access, create and change times of the file.
<h2> 6) Command and Control (C2 or C&C) </h2>
- This is where the Command and Control server executes commands on the victim's pc/server. Common methods include:
	- Using ports 443 (HTTPS) and 80 (HTTP) to blend in with legit traffic.
	- Using DNS tunneling
<h2> 7) Exfiltration </h2>
- This is where the attack achieves the initial objective or the main goal (like retrieving credentials or whatnot).







<h2> LAN (Local Area Network) Topologies </h2>
1) Star topology: Using a hub or a switch to have computers communicate. The most commonly used in modern tech. Problem is that it is costly.
2) Bus topology: Using the backbone (the main cable) that connects all of the computers together using other cables. Problems include bottlenecking and overloading quicker than #1.
3) Ring topology: A single cable that connects pc1 to pc2 then another from pc2 to pc3 and likewise till a ring is formed (in this case, pc3 to pc1). The problem with this is that the network will be completely shut down after a tear on the cable or so. 






<h2> OSI Model (Open Systems Interconnection) </h2>
- This is a model that shows how systems interact with one another through whatever mean. It has 7 categories/procedures:
	- 1) [Physical.] This is where the physical components of the hardware is referenced. The use of binary code.
	- 2) [Data link.] Establishing connections between hardwares/compputers/devices. Every network enabled device comes with a <b>N</b>etwork <b>I</b>nterface <b>C</b>ard (NIC). Every device has a unique MAC (this can be spoofed)
	- 3) [Network.] This is where routing occurs. Protocols such as OSPF (Open Shortest Path First) are used for it to efficiently reach its end target. This is where IP Addresses are handled.
	- 4) [Transport.] This is where it travels through either TCP (Transmission Control Protocol) or UDP (User Datagram Protocol). TCP helps with information being accurate and makes sure a constant connection is made with the device until the data is fully received. It also breaks down packets into smaller parts and reconstructs them again correctly at its destination. UDP, on the other hand, is faster and doesn't rely on accuracy. Any data that gets sent via UDP is sent to the computer whether it gets there or not. UDP is better than TCP whenever the data being sent is small pieces.
	- 5) [Session.] This is where 2 devices maintain a connection through the network. the session layer (layer 5) will begin to create and maintain the connection to other computer for which the data is destined. When a connection is established, a session is created. Whilst this connection is active, so is the session. The session layer is also responsible for closing the connection if it hasn't been used in a while or if it is lost. Additionally, a session can contain "checkpoints," where if the data is lost, only the newest pieces of data are required to be sent, saving bandwidth. What is worthy of noting is that sessions are unique — meaning that data cannot travel over different sessions, but in fact, only across each session instead.
	- 6) [Presentation.] Layer 6 of the OSI model is the layer in which standardisation starts to take place. Because software developers can develop any software such as an email client differently, the data still needs to be handled in the same way — no matter how the software works. This layer acts as a translator for data to and from the application layer (layer 7). The receiving computer will also understand data sent to a computer in one format destined for in another format. For example, when you send an email, the other user may have another email client to you, but the contents of the email will still need to display the same. Security features such as data encryption (like HTTPS when visiting a secure site) occur at this layer.
	- 7) [Application.] The application layer of the OSI model is the layer that you will be most familiar with. This familiarity is because the application layer is the layer in which protocols and rules are in place to determine how the user should interact with data sent or received. Everyday applications such as email clients, browsers, or file server browsing software such as FileZilla provide a friendly, Graphical User Interface (GUI) for users to interact with data sent or received. Other protocols include DNS (Domain Name System), which is how website addresses are translated into IP addresses.


<h2> Packets and Frames </h2>
<h5> TCP </h5>

- [TCP] uses the three-way-handshake to establish a connection. It must establish a connection before any data is sent. TCP/IP Protocol consists of four layers and is arguably just a summarised version of the OSI model. These layers are:
	- Application
	- Transport
	- Internet
	- Network Interface

- The disadvantages of this specific protocol are, and not limited to,:
	- Requires a reliable connection between the two devices. If one small chunk of data is not received, then the entire chunk of data cannot be used and must be re-sent.
	- A slow connection can bottleneck another device as the connection will be reserved on the other device the whole time.
	- TCP is significantly slower than UDP because more work (computing) has to be done by the devices using this protocol.

- Advantages:
	- Guarantees the integrity of data.
	- Capable of synchronising two devices to prevent each other from being flooded with data in the wrong order.
	- Performs a lot more processes for reliability

- TCP Packets include information which can be categorized as headers and information/description.
	- Headers & Descriptions:
		- [Source Port.] This value is the port the TCP packet was sent from.
		- [Destination Port.] This value is the port the TCP packet will reach. Usually an application or a service running on the receiver's device.
		- [Source IP.] This is the IP address of the device that is sending the packet.
		- [Destination IP.] This is the IP address of the device that the packet is destined for.
		- [Sequence Number.] When a connection occurs, the first piece of data transmitted is given a random number. (will be explained later)
		- [Acknowledgement Number.] After a piece of data has been given a sequence number, the number for the next piece of data will have the sequence number + 1. (will be explained later)
		- [Checksum.] This value is what gives TCP integrity. A mathematical calculation is made where the output is remembered. When the receiving device performs the mathematical calculation, the data must be corrupt if the output is different from what was sent.
		- [Data.] This header is where the data, i.e. bytes of a file that is being transmitted, is stored.
		- [Flag.] This header determines how the packet should be handled by either device during the handshake process. Specific flags will determine specific behaviours, which is what we'll come on to explain below.
- The *Three-Way-Handshake* is a term given for the process used to establish a connection between two devices (which is used in the TCP protocol). The messages/process/steps include:
	- 1. [SYN.] A SYN message is the initial packet sent by a client during the handshake. This packet is used to initiate a connection and synchronise the two devices together.
	- 2. [SYN/ACK.] This packet is sent by the receiver (server) to acknowledge the synchronization attempt from the initial sender (client). 
	- 3. [ACK.] The acknowledgement packet can be used by either the client or server to acknowledge that a series of messages/packets have been successfully received. (Thus the threeway handshake occurs)
	- 4. [DATA.] Once a connection has been established, data (such as bytes of a file) is sent via the "DATA" message.
	- 5. [FIN.] This packet is used to cleanly (properly) close the connection after it has been complete.
	- 6. [RST.] This packet abruptly ends all communication. This is the last resort and indicates there was some problem during the process. For example, if the service or application is not working correctly, or the system has faults such as low resources.

<h5> UDP/IP </h5>
- Unlike [TCP], [UDP] doesn't require a constant connection between the two devices for data to be sent. 
- Disadvantages:
	- UDP doesn't care if the data is received or not.
	- It is quite flexible to software developers in this sense.
	- This means that unstable connections result in a terrible experience for the user.
- Advantages:
	- UDP is much faster than TCP.
	- UDP leaves the application (user software) to decide if there is any control over how quickly packets are sent.
	- UDP does not reserve a continuous connection on a device as TCP does.
- Headers:
	- [TTL.] Time To Live makes sure the network isn't clogged by having a time set. If the packet doesn't reach its destination it stops eventually.
	- [Source Address.] The IP address of the device that the packet is being sent from, so that data knows where to return to.
	- [Destination Address.] The device's IP address the packet is being sent to so that data knows where to travel next.
	- [Source Port.] This value is the port that is opened by the sender to send the UDP packet from. This value is randomly chosen (out of the ports from 0-65535 that aren't already in use at the time).
	- [Destination Port.] This value is the port number that an application or service is running on the remote host (the one receiving the data); for example, a webserver running on port 80. Unlike the source port, this value is not chosen at random.
	- [Data.] This header is where data, i.e. bytes of a file that is being transmitted, is stored.



<h2> Extending Your Network </h2>

<h5> Firewall </h5>
A firewall comes as a software and hardware (for bigger companies).  
- Blocks traffic or denies access based on numerous stuff which includes:
	- Where the traffic is coming from? (has the firewall been told to accept/deny traffic from a specific network?)
	- Where is the traffic going to? (has the firewall been told to accept/deny traffic destined for a specific network?)
	- What port is the traffic for? (has the firewall been told to accept/deny traffic destined for port 80 only?)
	- What protocol is the traffic using? (has the firewall been told to accept/deny traffic that is UDP, TCP or both?)
- Firewalls can be categorized into 2 to 5 categories:
	- [Stateful.] This type of firewall uses the entire information from a connection; rather than inspecting an individual packet, this firewall determines the behavior of a device based upon the entire connection. This firewall type consumes many resources in comparison to stateless firewalls as the decision making is dynamic. For example, a firewall could allow the first parts of a TCP handshake that would later fail. If a connection from a host is bad, it will block the entire device.
	- [Stateless.] This firewall type uses a static set of rules to determine whether or not individual packets are acceptable or not. For example, a device sending a bad packet will not necessarily mean that the entire device is then blocked. Whilst these firewalls use much fewer resources than alternatives, they are much dumber. For example, these firewalls are only effective as the rules that are defined within them. If a rule is not exactly matched, it is effectively useless. However, these firewalls are great when receiving large amounts of traffic from a set of hosts (such as a Distributed Denial-of-Service attack).

<h5> VPN </h5>
Virtual Private Network is a technology that allows devices on separate networks to communicate securely by creating a dedicated path between each other over the internet (known as tunneling).
- Benefits:
	- Allows networks in different geographical locations to be connected.
	- Offers privacy.
	- Offers anonymity.

- There are different technologies within VPN:
	- [PPTP.] = Point to Point Tunneling Protocol is a technology that allows the data from PPP to travel and leave a network. PPTP is very easy to set up and is supported by most devices. It is, however, weakly encrypted in comparison to alternatives.
	- [PPP.] = This is used by PPTP to allow for authentication and provide encryption of data. VPNs work by using a private key and public certificate (similar to SSH). A private key and certificate must match for you to connect. This technology is not capable of leaving a network by itself (non-routable.)
	- [IPSec.] Internet Protocol Security (IPsec) encrypts data using the existing Internet Protocol (IP) framework. IPSec is difficult to set up in comparison to alternatives; however, if successful, it boasts strong encryption and is also supported on many devices.

[Router.] connects networks and pass data between them using routing. Routing is the label given to the process of data travelling across networks. Routing involves creating a path between networks so that this data can be successfully delivered. Routers operate at Layer 3 of the OSI model. They often feature an interactive interface (such as a website or a console) that allows an administrator to configure various rules such as port forwarding or firewalling.

[Switch.] dedicated networking device responsible for providing a means of connecting to multiple devices. Switches can facilitate many devices (from 3 to 63) using Ethernet cables. Switches can operate at both layer 2 and layer 3 of the OSI model. However, these are exclusive in the sense that Layer 2 switches cannot operate at layer 3.

Testing webhook
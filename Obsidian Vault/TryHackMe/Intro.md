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
	- 
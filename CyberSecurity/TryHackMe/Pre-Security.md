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




<h5> DNS </h5>
- Domain name system converts the IP address of a server or a destination to a more memorable name. Its divided into 2:
	- [TLD.] The Top Level Domain is the "..com" part of a website. There are thousands of different TLDs which includes ccTLD (country code TLD) and a gTLD (Generic TLD). For example, .ca for Canada and .co.uk for UK websites would be a ccTLD while ".com" would be a gTLD.
	- [SLD.] This is the name of the server. The "tryhackme".com or "google".com. This is limited by 63 characters without any special keys except hyphens (except consecutive hyphens).
	- Subdomain is the "." and whatever comes before it that places itself before the SLD. For example, "admin".Tryhackme.com. The "admin" is the subdomain. You can have multiple subdomains BUT the total characters of the website should be less than 253.

- There are different DNS Record Types:
	- [A Record.] which resolves to IPv4 Addresses. Translates the text version of a website to IPv4.
	- [AAAA Record.] which resolves to IPv6 Addresses. Translates the text version of a website to IPv6.
	- [CNAME Record.] relabels the name of the website. Visiting store.tryhackme.com would take you to shops.shopify.com.
	- [MX Record.] resolves to the address of the servers that handle the email for the domain you are querying. The MX Record for tryhackme.com would be something like alt1.aspmx.l.google.com.
	- [TXT Record.] are free text fields where any text-based data can be stored. TXT records have multiple uses, but some common ones can be to list servers that have the authority to send an email on behalf of the domain (this can help in the battle against spam and spoofed email). They can also be used to verify ownership of the domain name when signing up for third party services.
- The steps that every DNS lookup goes through:
	- 1.) When you request a domain name, your computer first checks its local cache to see if you've previously looked up the address recently; if not, a request to your Recursive DNS Server will be made.
	- 2.) A Recursive DNS Server is usually provided by your ISP, but you can also choose your own. This server also has a local cache of recently looked up domain names. If a result is found locally, this is sent back to your computer, and your request ends here (this is common for popular and heavily requested services such as Google, Facebook, Twitter). If the request cannot be found locally, a journey begins to find the correct answer, starting with the internet's root DNS servers.
	- 3.) The root servers act as the DNS backbone of the internet; their job is to redirect you to the correct Top Level Domain Server, depending on your request. If, for example, you request www.tryhackme.com, the root server will recognise the Top Level Domain of .com and refer you to the correct TLD server that deals with .com addresses.
	- 4.) The TLD server holds records for where to find the authoritative server to answer the DNS request. The authoritative server is often also known as the nameserver for the domain. For example, the name server for tryhackme.com is kip.ns.cloudflare.com and uma.ns.cloudflare.com. You'll often find multiple nameservers for a domain name to act as a backup in case one goes down.
	- 5.) An authoritative DNS server is the server that is responsible for storing the DNS records for a particular domain name and where any updates to your domain name DNS records would be made. Depending on the record type, the DNS record is then sent back to the Recursive DNS Server, where a local copy will be cached for future requests and then relayed back to the original client that made the request. DNS records all come with a TTL (Time To Live) value. This value is a number represented in seconds that the response should be saved for locally until you have to look it up again. Caching saves on having to make a DNS request every time you communicate with a server.


<h5> HTTP/HTTPS </h5> 
- [HTTP.] or HyperText Transfer Protocol is the set of rules used for communicating with web servers for the transmitting of webpage data, whether that is HTML, Images, Videos, etc.
- [HTTPS.] or HyperText Transfer Protocol Secure is the secure version of HTTP. HTTPS data is encrypted so it not only stops people from seeing the data you are receiving and sending, but it also gives you assurances that you're talking to the correct web server and not something impersonating it.

<h5> URL </h5>
- When the client makes a request to a server via HTTP/HTTPS it downloads the response, thus, being able to view the webpage. This occurs when you know exactly what you need (request). The Uniform Resource Locator or [URL.] helps you receive the requested information. A URL is predominantly an instruction on how to access a resource on the internet and it includes:
	- [Scheme.] which is the "http" or "https" portion of the URL. There are more protocols such as "FTP" etc.
	- [User.] Then comes the "Username:Password" if the server requires a login.
	- [Host.] Then comes the hostname or the domain you wish to access. 
	- [Port.] Then comes the port of that domain you wish to interact with.
	- [Path.] Then comes the path to the filename or resource you wish to interact with.
	- [Query String.] Then comes extra bits of information that can be sent to the requested path. For example, "/blog?id=1" would tell the blog path that you wish to receive the blog article with the id of 1.
	- [Fragment.] This is a reference to a location on the actual page requested. This is commonly used for pages with long content and can have a certain part of the page directly linked to it, so it is viewable to the user as soon as they access the page. 
	- ![[URL.png]]

- An example of a request code would be:
	- ![[Request Code.jpg]]
	 - A breakdown of what happened here is that the client sent a GET code to the server's main page using HTTP 1.1 method.
	- We are telling the webserver we want the website: tryhackme.com
	- We then inform the web server we are using the firefox version 87.0
	- We then let them know that the website that referred us to tryhackme.com was "https://tryhackme.com"


- An example of a response code would be:
	- ![[Response Code.jpg]]
	- HTTP 1.1 is the version of HTTP the web server is using.
	- 200 OK lets us know that the request has been completed/accepted.
	- Server tells us the web server software and version number.
	- Date tell us the current date, time and timezone of the web server.
	- Content-Type tells the client what sort of information is going to be sent, such as HTML, images, videos, pdf, XML.
	- Content-Length tells the client how long the response is, this way we can confirm no data is missing.

- HTTP methods are a way for the client to show their intended action when making an HTTP request. There are a lot of HTTP methods the most common ones are:
	- [GET Request.] This is used for getting information from a web server.
	- [POST Request.] This is used for submitting data to the web server and potentially creating new records.
	- [PUT Request] This is used for submitting data to a web server to update information.
	- [DELETE Request] This is used for deleting information/records from a web server.

<h5> HTTP Status Codes </h5>
![[HTTP Status Codes.jpg]]

<h5> Common HTTP Headers </h5>
- HTTP Request headers:
	- [HOST.] Some web servers host multiple websites so by providing the host headers you can tell it which one you require, otherwise you'll just receive the default website for the server.
	- [User-Agent.] This is your browser software and version number, telling the web server your browser software helps it format the website properly for your browser and also some elements of HTML, JavaScript and CSS are only available in certain browsers.
	- [Content-Length.] When sending data to a web server such as in a form, the content length tells the web server how much data to expect in the web request. This way the server can ensure it isn't missing any data.
	- [Accept-Encoding.] Tells the web server what types of compression methods the browser supports so the data can be made smaller for transmitting over the internet.
	- [Cookie.] Data sent to the server to help remember your information.
- HTTP Response headers:
	- [Set-Cookie.] Information to store which gets sent back to the web server on each request.
	- [Cache-Control.] How long to store the content of the response in the browser's cache before it requests it again.
	- [Content-Type.] This tells the client what type of data is being returned, i.e., HTML, CSS, JavaScript, Images, PDF, Video, etc. Using the content-type header the browser then knows how to process the data.
	- [Content-Encoding.] What method has been used to compress the data to make it smaller when sending it over the internet.

<h5> How Websites Work </h5>
- [Front end.] also known as Client-side where the browser renders the website.
- [Back End.] also known as Server-side where a server processes your request and returns a response.
- [HTML.]
	- Tags can contain attributes such as the class attribute which can be used to style an element (e.g. make the tag a different color) `<p class="bold-text">`, or the _src_ attribute which is used on images to specify the location of an image: `<img src="img/cat.jpg">.`An element can have multiple attributes each with its own unique purpose, e.g., <p attribute1="value1" attribute2="value2">.
	- Elements can also have an id attribute (`<p id="example">`), which is unique to the element. Unlike the class attribute, where multiple elements can use the same class, an element must have different id's to identify them uniquely. Element id's are used for styling and to identify it by JavaScript.
- [JavaScript.]
	- JavaScript (JS) is one of the most popular coding languages in the world and allows pages to become interactive. HTML is used to create the website structure and content, while JavaScript is used to control the functionality of web pages - without JavaScript, a page would not have interactive elements and would always be static. JS can dynamically update the page in real-time, giving functionality to change the style of a button when a particular event on the page occurs (such as when a user clicks a button) or to display moving animations.
	- JavaScript is added within the page source code and can be either loaded within `<script>` tags or can be included remotely with the src attribute: `<script src="/location/of/javascript_file.js"></script>`
	- The following JavaScript code finds a HTML element on the page with the id of "demo" and changes the element's contents to "Hack the Planet" : `document.getElementById("demo").innerHTML = "Hack the Planet";`
	- HTML elements can also have events, such as "onclick" or "onhover" that execute JavaScript when the event occurs. The following code changes the text of the element with the demo ID to Button Clicked: `<button onclick='document.getElementById("demo").innerHTML = "Button Clicked";'>Click Me!</button>` - onclick events can also be defined inside the JavaScript script tags, and not on elements directly.
- HTML Injection is a vulnerability that occurs when unfiltered user input is displayed on the page. If a website fails to sanitize user input (filter any "malicious" text that a user inputs into a website), and that input is used on the page, an attacker can inject HTML code into a vulnerable website.
- Input sanitation is very important in keeping a website secure, as information a user inputs into a website is often used in other frontend and backend functionality. A vulnerability you'll explore in another lab is database injection, where you can manipulate a database lookup query to log in as another user by controlling the input that's directly used in the query - but for now, let's focus on HTML injection (which is client-side).
- When a user has control of how their input is displayed, they can submit HTML (or JavaScript) code, and the browser will use it on the page, allowing the user to control the page's appearance and functionality.
- ![[HTML Vulnerability.svg]]
- [Load Balancers.] When a website's traffic starts getting quite large or is running an application that needs to have high availability, one web server might no longer do the job. Load balancers provide two main features, ensuring high traffic websites can handle the load and providing a fail over if a server becomes unresponsive. When you request a website with a load balancer, the load balancer will receive your request first and then forward it to one of the multiple servers behind it. The load balancer uses different algorithms to help it decide which server is best to deal with the request. A couple of examples of these algorithms are **round-robin**, which sends it to each server in turn, or **weighted**, which checks how many requests a server is currently dealing with and sends it to the least busy server. Load balancers also perform periodic checks with each server to ensure they are running correctly; this is called a **health check**. If a server doesn't respond appropriately or doesn't respond, the load balancer will stop sending traffic until it responds appropriately again.

- [CDN.] (Content Delivery Networks) A CDN can be an excellent resource for cutting down traffic to a busy website. It allows you to host static files from your website, such a JavaScript, CSS, Images, Videos, and host them across thousands of servers all over the world. When a user requests one of the hosted files, the CDN works out where the nearest server is physically located and sends the request there instead of potentially the other side of the world. How it works is:
	- 1. **Original Server (Your Website's Main Server)**:
    
    - This is where your website’s content (like images, videos, or text) is originally stored.
    - Without a CDN, all users around the world would request content from this one server.
    
	- 2. **CDN Servers**:
    
    - CDNs have multiple servers located all over the world (called edge servers). These servers cache copies of your website’s content.
    - When a user from anywhere in the world wants to view your website, the CDN checks which server is closest to them.
    
	- 3. **Content Delivery**:
    
    - If the content is already cached (stored) on a nearby CDN server, the CDN serves it directly from that server, making the website load faster.
    - If the content isn’t cached, the CDN will get it from the original server and store it for future use.

- [WAF.] (Web Application Firewall) A WAF sits between your web request and the web server; its primary purpose is to protect the web server from hacking or denial of service attacks. It analyses the web requests for common attack techniques, whether the request is from a real browser rather than a bot. It also checks if an excessive amount of web requests are being sent by utilizing something called rate limiting, which will only allow a certain amount of requests from an IP per second. If a request is deemed a potential attack, it will be dropped and never sent to the web server.

- [Web Server.] is a software that listens for incoming connections and then utilities the HTTP protocol to deliver web content to its clients. The most common web server software you'll come across is Apache, Nginx, IIS and NodeJS. A Web server delivers files from what's called its root directory, which is defined in the software settings. For example, Nginx and Apache share the same default location of /var/www/html in Linux operating systems, and IIS uses C:\inetpub\wwwroot for the Windows operating systems. So, for example, if you requested the file "[http://www.example.com/picture.jpg](http://www.example.com/picture.jpg)" it would send the file /var/www/html/picture.jpg from its local hard drive.

- [Virtual Hosts.] Web servers can host multiple websites with different domain names; to achieve this, they use virtual hosts. The web server software checks the hostname being requested from the HTTP headers and matches that against its virtual hosts (virtual hosts are just text-based configuration files). If it finds a match, the correct website will be provided. If no match is found, the default website will be provided instead. Virtual Hosts can have their root directory mapped to different locations on the hard drive. For example, [one.com](http://one.com/) being mapped to /var/www/website_one, and [two.com](http://two.com/) being mapped to /var/www/website_two. There's no limit to the number of different websites you can host on a web server.

- [Static and Dynamic Content] Static content, as the name suggests, is content that never changes. Common examples of this are pictures, **Javascript**, **CSS**, etc., but can also include HTML that never changes. Furthermore, these are files that are directly served from the web server with no changes made to them. Dynamic content, on the other hand, is content that could change with different requests. Take, for example, a blog. On the homepage of the blog, it will show you the latest entries. If a new entry is created, the home page is then updated with the latest entry, or a second example might be a search page on a blog. Depending on what word you search, different results will be displayed. These changes to what you end up seeing are done in what is called the Backend with the use of programming and scripting languages. It's called the Backend because what is being done is all done behind the scenes. You can't view the websites' HTML source and see what's happening in the Backend, while the HTML is the result of the processing from the Backend. Everything you see in your browser is called the Frontend.

- [Scripting and Backend Languages] There's not much of a limit to what a backend language can achieve, and these are what make a website interactive to the user. Some examples of these languages are **PHP**, **Python**, **Ruby**, **NodeJS**, **Perl** and many more. These languages can interact with databases, call external services, process data from the user, and so much more. A very basic PHP example of this would be if you requested the website [http://example.com/index.php?name=adam](http://example.com/index.php?name=adam)  :
	- If index.php was built like this:  
		- `<html><body>Hello <?php echo $_GET["name"]; ?></body></html>`
		- It would output the following to the client:
		- `<html><body>Hello adam</body></html>`
		- You'll notice that the client doesn't see any PHP code because it's on the Backend. 

<h5> Linux Fundamentals </h5>
- **Linux Filesystems**:
	- **[/ETC]** This root directory is one of the most important root directories on your system. The etc folder (short for etcetera) is a commonplace location to store system files that are used by your operating system. In the files 'shadow' and 'passwd' are an explanation of how the system stores username and passwords using the encryption sha512.
	- **[/VAR]** The "/var" directory, with "var" being short for variable data,  is one of the main root folders found on a Linux install. This folder stores data that is frequently accessed or written by services or applications running on the system. For example, log files from running services and applications are written here (**/var/log**), or other data that is not necessarily associated with a specific user (i.e., databases and the like).
	- **[/ROOT]** Unlike the **/home** directory, the **/root** folder is actually the home for the "root" system user. There isn't anything more to this folder other than just understanding that this is the home directory for the "root" user. But, it is worth a mention as the logical presumption is that this user would have their data in a directory such as "**/home/root**" by default.
	- **[/TMP]** This is a unique root directory found on a Linux install. Short for "temporary", the "/tmp" directory is volatile and is used to store data that is only needed to be accessed once or twice. Similar to the memory on your computer, once the computer is restarted, the contents of this folder are cleared out. What's useful for us in pentesting is that any user can write to this folder by default. Meaning once we have access to a machine, it serves as a good place to store things like our enumeration scripts.
- **Terminal Commands**:
	- [wget] is a way to download stuff. wget [enter link here].
	- [scp] which is **S**ecurely **C**o**p**ying. Used to copy files from and to an SSH connection.
	- [curl] Ubuntu machines come pre-packaged with python3. Python helpfully provides a lightweight and easy-to-use module called "HTTPServer". This module turns your computer into a quick and easy web server that you can use to serve your own files, where they can then be downloaded by another computing using commands such as `curl` and `wget`. Python3's "HTTPServer" will serve the files in the directory where you run the command, but this can be changed by providing options that can be found within the manual pages. Simply, all we need to do is run `python3 -m  http.server` in the terminal to start the module! 
	- [ps] to view processes running on the system. To see the processes run by other users and those that don't run from a session (i.e. system processes), we need to provide **aux** to the `ps` command like so: `ps aux`
	- [top] Another very useful command is the top command; top gives you real-time statistics about the processes running on your system instead of a one-time view. These statistics will refresh every 10 seconds, but will also refresh when you use the arrow keys to browse the various rows. Another great command to gain insight into your system is via the `top` command
	- [kill] You can send signals that terminate processes; there are a variety of types of signals that correlate to exactly how "cleanly" the process is dealt with by the kernel. To kill a command, we can use the appropriately named `kill` command and the associated PID that we wish to kill. i.e., to kill PID 1337, we'd use `kill 1337`. Other ways of killing includes and not limited to:
		- `pkill` and the command would look like : `pkill discord`
		- `killall` and the command would look like : `killall discord`
		- `SIGTERM` Kill the process, but allow it to do some cleanup tasks beforehand. This is done with the PID similar to `kill`
		- `SIGKILL` Kill the process - doesn't do any cleanup after the fact. Again similar to `kill`.
		- `SIGSTOP` Stop/suspend a process. Similar to `kill`
	- [systemctl] This is how you would control services (not processes) to run at a startup, check its status, restart, stop and etc. Running a web server would have the autostart enabled by using `systemctl enable [enter service here]` . 
	- [&.] This is a way to run a command as a process in the background. Take for example `echo "hello world" &` . This would run and display "hello world" after it was ran as a process which means it would right "hello world" on your display.
	- [ctrl + c] to stop a command from running.
	- [ctrl + z] We can do the exact same when executing things like scripts -- rather than relying on the `&` operator, we can use `Ctrl + Z` on our keyboard to background a process. It is also an effective way of "pausing" the execution of a script or command
	- [fg] With our process backgrounded using either `Ctrl + Z` or the `&` operator, we can use `fg` to bring this back to focus, where the output of the script is now returned to us.
	- [crontab] To run a program at a specific date for the rest of this system's life, this is what is used. Because of how confusing this can get (the hows of crontab) there is a website used to generate one for you (https://crontab-generator.org/ or https://crontab.guru/). 
	- [apt] this is used by Ubuntu which is where the repositories for the package system (canonical) is stored. You can add your own custom apt repos. The location is usually `/etc/apt` . Other distros will depend on what package manager is the default. For arch, this is found in `/etc/pacman.d/` 
	- 
- Let's start off by talking about namespaces. The Operating System (OS) uses namespaces to ultimately split up the resources available on the computer to (such as CPU, RAM and priority) processes. Think of it as splitting your computer up into slices -- similar to a cake. Processes within that slice will have access to a certain amount of computing power, however, it will be a small portion of what is actually available to every process overall. Namespaces are great for security as it is a way of isolating processes from another -- only those that are in the same namespace will be able to see each other. A [PID] or In the context of operating systems, Process ID is a unique identifier assigned to each running process in a system. PIDs are usually assigned in sequential order as processes are created, but can be recycled once a process has completed and terminated. The process with an ID of 0 is a process that is started when the system boots. This process is the system's init on Ubuntu, such as **systemd**, which is used to provide a way of managing a user's processes and sits in between the operating system and the user. For example, once a system boots and it initializes, **systemd** is one of the first processes that are started. Any program or piece of software that we want to start will start as what's known as a child process of **systemd**. This means that it is controlled by **systemd**, but will run as its own process (although sharing the resources from **systemd**) to make it easier for us to identify and the likes. 


<h5> Windows Fundamentals </h5>
- [msconfig] which is known as the System Configuration Utility that helps with startup issues.
- [compmgmt] which is known as the Computer Management Utility that deals with System Tools, Storage, and Services and Applications.
- [msinfo32] which gives a detailed information of the system at hand from OS information to hardware components.
- [resmon.exe] which is the resource monitor of the system. It shows details of CPU, Disk, Network and Memory usage.
- [CMD] or the Command Prompt is a way you communicate with the system similar to the Terminal for Mac and Linux OSs. Important commands include:
	- [ipconfig] which shows the connected network devices and additional information.
	- [hostname] which provides the name of the system.
	- [whoami] which provides the name of the user (also includes the name of the system)
	- [cls] same as [clear] on linux terminal.
	- [netstat] this command will display protocol statistics and current TCP/IP network connections.
- [regedit] known as the Registry Editor which shows information on the registries and lets you edit them.
- [firewall] "_Traffic flows into and out of devices via what we call ports. A [firewall] is what controls what is - and more importantly isn't - allowed to pass through those ports. You can think of it like a security guard standing at the door, checking the ID of everything that tries to enter or exit_".
- [wf.msc] Windows Defender's Firewall (run command)
- [Microsoft Defender Smartscreen] _Microsoft Defender SmartScreen protects against phishing or malware websites and applications, and the downloading of potentially malicious files_. 
- [TPM.] Per Microsoft, "_Trusted Platform Module (TPM) technology is designed to provide hardware-based, security-related functions. A TPM chip is a secure crypto-processor that is designed to carry out cryptographic operations. The chip includes multiple physical security mechanisms to make it tamper-resistant, and malicious software is unable to tamper with the security functions of the TPM_".
- [Bitlocker] Per Microsoft, "_BitLocker Drive Encryption is a data protection feature that integrates with the operating system and addresses the threats of data theft or exposure from lost, stolen, or inappropriately decommissioned computers_".
- [VSS.] (also known as the Volume Shadow Copy Service) coordinates the required actions to create a consistent shadow copy (also known as a snapshot or a point-in-time copy) of the data that is to be backed up. (something linux lacks unfortunately 🤕)

<h1> [The End Of Pre-Security] </h1>

<h2> TCP </h2>

`TCP` is connection-oriented, meaning that a connection between a client and a server must be established before data can be sent. The server must be in a listening state awaiting connection requests from clients.  There are `65,535` `TCP` ports.

<h2> UDP </h2>

`UDP` utilizes a connectionless communication model. There is no "handshake" and therefore introduces a certain amount of unreliability since there is no guarantee of data delivery. `UDP` is useful when error correction/checking is either not needed or is handled by the application itself. `UDP` is suitable for applications that run time-sensitive tasks since dropping packets is faster than waiting for delayed packets due to retransmission, as is the case with `TCP` and can significantly affect a real-time system. There are `65,535` different `UDP` ports, each denoted by a number.

<h2> OWASP top 10 </h2> 
(Open Web Application Security Project)
	1. Broken Access Control
	2. Cryptographic failures
	3. Injection
	4. Insecure Design
	5. Security Misconfiguration
	6. Vulnerable and Outdated Components
	7. Identification and Authentication Failures
	8. Software and Data Integrity Failures
	9. Security Logging and Monitoring Failures
	10. Server-Side Request Forgery

<h2> Vim Commands </h2>
yy (Copy full line)
dd (Delete full line)
dw (cut word)
x (remove character/letter)
p (paste)
:[number]d (move to this line number)
:[number]w (move to this word)

<h2> NMAP Important Scans </h2>
-sC = Run scripts on ports to gain more information of the target (such as headers).
-sV = Does a version scan (checks applications and other info on such ports)
-p- = Scan all TCP ports
nmap --script [Script name] -p[port number]  [host] = Running a script on a port. 
locate = using to find nmap scripts
nc -nv [host]  [port] = Version of the application running on the port

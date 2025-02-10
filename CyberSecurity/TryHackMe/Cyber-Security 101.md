
### SOC
A _Security Operations Center_ (SOC) is a team of cyber security professionals that monitors the network and its systems to detect malicious cyber security events. Some of the main areas of interest for a SOC are:

- Vulnerabilities: Whenever a system vulnerability (weakness) is discovered, it is essential to fix it by installing a proper update or patch. When a fix is unavailable, the necessary measures should be taken to prevent an attacker from exploiting it. Although remediating vulnerabilities is vital to a SOC, it is not necessarily assigned to them.
- Policy violations: A security policy is a set of rules required to protect the network and systems. For example, it might be a policy violation if users upload confidential company data to an online storage service.
- Unauthorized activity: Consider the case where a user’s login name and password are stolen, and the attacker uses them to log into the network. A SOC must detect and block such an event as soon as possible before further damage is done.
- Network intrusions: No matter how good your security is, there is always a chance for an intrusion. An intrusion can occur when a user clicks on a malicious link or when an attacker exploits a public server. Either way, when an intrusion occurs, we must detect it as soon as possible to prevent further damage.

Security operations cover various tasks to ensure protection; one such task is threat intelligence.

### Threat Intelligence

In this context, _intelligence_ refers to information you gather about actual and potential enemies. A _threat_ is any action that can disrupt or adversely affect a system. Threat intelligence collects information to help the company better prepare against potential adversaries. The purpose would be to achieve a _threat-informed defence_. Different companies have different adversaries. Some adversaries might seek to steal customer data from a mobile operator; however, other adversaries are interested in halting the production in a petroleum refinery. Example adversaries include a nation-state cyber army working for political reasons and a ransomware group acting for financial purposes. Based on the company (target), we can expect adversaries.

### Digital Forensics and Incident Response (DFIR)
#### **Digital Forensics**

Forensics is the application of science to investigate crimes and establish facts. With the use and spread of digital systems, such as computers and smartphones, a new branch of forensics was born to investigate related crimes: computer forensics, which later evolved into _digital forensics_.

In defensive security, the focus of digital forensics shifts to analyzing evidence of an attack and its perpetrators and other areas such as intellectual property theft, cyber espionage, and possession of unauthorized content. Consequently, digital forensics will focus on different areas, such as:

- File System: Analyzing a digital forensics image (low-level copy) of a system’s storage reveals much information, such as installed programs, created files, partially overwritten files, and deleted files.
- System memory: If the attacker runs their malicious program in memory without saving it to the disk, taking a forensic image (low-level copy) of the system memory is the best way to analyze its contents and learn about the attack.
- System logs: Each client and server computer maintains different log files about what is happening. Log files provide plenty of information about what happened on a system. Even if the attacker tries to clear their traces, some traces will remain.
- Network logs: Logs of the network packets that have traversed a network would help answer more questions about whether an attack is occurring and what it entails.

#### **Incident Response**

An _incident_ usually refers to a data breach or cyber attack; however, in some cases, it can be something less critical, such as a misconfiguration, an intrusion attempt, or a policy violation. Examples of a cyber attack include an attacker making our network or systems inaccessible, defacing (changing) the public website, and data breach (stealing company data). How would you _respond_ to a cyber attack? Incident response specifies the methodology that should be followed to handle such a case. The aim is to reduce damage and recover in the shortest time possible. Ideally, you would develop a plan that is ready for incident response.

The four major phases of the incident response process are:

1. Preparation: This requires a team trained and ready to handle incidents. Ideally, various measures are put in place to prevent incidents from happening in the first place.
2. Detection and Analysis: The team has the necessary resources to detect any incident; moreover, it is essential to analyze any detected incident further to learn about its severity.
3. Containment, Eradication, and Recovery: Once an incident is detected, it is crucial to stop it from affecting other systems, eliminate it, and recover the affected systems. For instance, when we notice that a system is infected with a computer virus, we would like to stop (contain) the virus from spreading to other systems, clean (eradicate) the virus, and ensure proper system recovery.
4. Post-Incident Activity: After a successful recovery, a report is produced, and the lesson learned is shared to prevent similar future incidents.
#### Malware Analysis

Malware stands for malicious software. _Software_ refers to programs, documents, and files you can save on a disk or send over the network. Malware includes many types, such as:

- A virus is a piece of code (part of a program) that attaches itself to a program. It is designed to spread from one computer to another and works by altering, overwriting, and deleting files once it infects a computer. The result ranges from the computer becoming slow to unusable.
- Trojan Horse is a program that shows one desirable function but hides a malicious function underneath. For example, a victim might download a video player from a shady website that gives the attacker complete control over their system.
- Ransomware is a malicious program that encrypts the user’s files. Encryption makes the files unreadable without knowing the encryption password. The attacker offers the user the encryption password if the user is willing to pay a “ransom.”


### Search Skills
Ways you can search through google using, what is called, google dorking.
- using "[enter text here]" with quotations to search for exact term or phrase or words.
- using "site:[enter site here]  [enter words to search]" to search through a specific website
- using "-[word to omit from search]  [word you are looking for]" to narrow down your search. For example, if you are looking for pyramids but don't want tourism you'd search "-tourism pyramid"
- using "filetype:[enter file type here]  [search words here]" to specify google to search for specific file types with that name.
#### Shodan
So far everything mentioned was for google which searches the web for a lot of stuff. There are other search engines that search for specific stuff. Let's say, for example, <a href="www.shodan.io">Shodan.</a> A search engine for devices connected to the Internet. It allows you to search for specific types and versions of servers, networking equipment, industrial control systems, and IoT devices. You may want to see how many servers are still running Apache 2.4.1 and the distribution across countries. To find the answer, we can search for `apache 2.4.1`, which will return the list of servers with the string “apache 2.4.1” in their headers. Consider visiting <a href="https://www.shodan.io/search/examples">Shodan Search Query Examples </a> for more examples. Furthermore, you can check <a href=https://trends.shodan.io>Shodan trends</a> for historical insights if you have a subscription. 


#### Censys
At first glance, Censys appears similar to Shodan. However, Shodan focuses on Internet-connected devices and systems, such as servers, routers, webcams, and IoT devices. Censys, on the other hand, focuses on Internet-connected hosts, websites, certificates, and other Internet assets. Some of its use cases include enumerating domains in use, auditing open ports and services, and discovering rogue assets within a network. You might want to check <a href="https://support.censys.io/hc/en-us/articles/20720064229140-Censys-Search-Use-Cases"> Censys Search Use Cases.</a>



### CVE (Common Vulnerabilities and Exposures)
We can think of the Common Vulnerabilities and Exposures (CVE) program as a dictionary of vulnerabilities. It provides a standardized identifier for vulnerabilities and security issues in software and hardware products. Each vulnerability is assigned a CVE ID with a standardized format like `CVE-2024-29988`. This unique identifier (CVE ID) ensures that everyone from security researchers to vendors and IT professionals is referring to the same vulnerability, [CVE-2024-29988](https://nvd.nist.gov/vuln/detail/CVE-2024-29988) in this case.

The MITRE(MITRE Adversarial Tactics, Techniques, and Common Knowledge (ATT&CK)) Corporation maintains the CVE system. For more information and to search for existing CVEs, visit the [CVE Program](https://www.cve.org/) website. Alternatively, visit the [National Vulnerability Database](https://nvd.nist.gov/) (NVD) website. The screenshot below shows CVE-2014-0160, also known as Heartbleed.

#### Exploit Database
The [Exploit Database](https://www.exploit-db.com) lists exploit codes from various authors; some of these exploit codes are tested and marked as verified.

### Active Directory Basics
**Windows domain** is a group of users and computers under the administration of a given business. The main idea behind a domain is to centralise the administration of common components of a Windows computer network in a single repository called **Active Directory (AD)**. The server that runs the Active Directory services is known as a **Domain Controller (DC)**.

Advantages include:
1.  **Centralized identity management:** All users across the network can be configured from Active Directory with minimum effort.
2. **Managing security policies:** You can configure security policies directly from Active Directory and apply them to users and computers across the network as needed.
In school/university networks, you will often be provided with a username and password that you can use on any of the computers available on campus. Your credentials are valid for all machines because whenever you input them on a machine, it will forward the authentication process back to the Active Directory, where your credentials will be checked. Thanks to Active Directory, your credentials don't need to exist in each machine and are available throughout the network.

Active Directory is also the component that allows your school/university to restrict you from accessing the control panel on your school/university machines. Policies will usually be deployed throughout the network so that you don't have administrative privileges over those computers.

﻿The core of any Windows Domain is the **Active Directory Domain Service (AD DS)**. This service acts as a catalog that holds the information of all of the "objects" that exist on your network. Amongst the many objects supported by AD, we have users, groups, machines, printers, shares and many others.

Users are one of the most common object types in Active Directory. Users are one of the objects known as **security principals**, meaning that they can be authenticated by the domain and can be assigned privileges over **resources** like files or printers. You could say that a security principal is an object that can act upon resources in the network.

Machines are another type of object within Active Directory; for every computer that joins the Active Directory domain, a machine object will be created. Machines are also considered "security principals" and are assigned an account just as any regular user. This account has somewhat limited rights within the domain itself.

The machine accounts themselves are local administrators on the assigned computer, they are generally not supposed to be accessed by anyone except the computer itself, but as with any other account, if you have the password, you can use it to log in.

**Note:** Machine Account passwords are automatically rotated out and are generally comprised of 120 random characters.

Identifying machine accounts is relatively easy. They follow a specific naming scheme. The machine account name is the computer's name followed by a dollar sign. For example, a machine named `DC01` will have a machine account called `DC01$`.

**Group Policy Objects (GPO)** GPOs are simply a collection of settings that can be applied to OUs (Organizaional Units). GPOs can contain policies aimed at either users or computers, allowing you to set a baseline on specific machines and identities.

To configure GPOs, you can use the **Group Policy Management** tool.

When a client computer tries to login through a domain, there are 2 different protocols used to authenticate the credentials. The most commonly used nowadays is the Kerberos protocol.

**Kerberos Authentication**

Kerberos authentication is the default authentication protocol for any recent version of Windows. Users who log into a service using Kerberos will be assigned tickets. Think of tickets as proof of a previous authentication. Users with tickets can present them to a service to demonstrate they have already authenticated into the network before and are therefore enabled to use it.

When Kerberos is used for authentication, the following process happens:

1. The user sends their username and a timestamp encrypted using a key derived from their password to the **Key Distribution Center (KDC)**, a service usually installed on the Domain Controller in charge of creating Kerberos tickets on the network.
    
    The KDC will create and send back a **Ticket Granting Ticket (TGT)**, which will allow the user to request additional tickets to access specific services. The need for a ticket to get more tickets may sound a bit weird, but it allows users to request service tickets without passing their credentials every time they want to connect to a service. Along with the TGT, a **Session Key** is given to the user, which they will need to generate the following requests.
    
    Notice the TGT is encrypted using the **krbtgt** account's password hash, and therefore the user can't access its contents. It is essential to know that the encrypted TGT includes a copy of the Session Key as part of its contents, and the KDC has no need to store the Session Key as it can recover a copy by decrypting the TGT if needed.

![[TGT.png]]
2. When a user wants to connect to a service on the network like a share, website or database, they will use their TGT to ask the KDC for a **Ticket Granting Service (TGS)**. TGS are tickets that allow connection only to the specific service they were created for. To request a TGS, the user will send their username and a timestamp encrypted using the Session Key, along with the TGT and a **Service Principal Name (SPN),** which indicates the service and server name we intend to access.
    
    As a result, the KDC will send us a TGS along with a **Service Session Key**, which we will need to authenticate to the service we want to access. The TGS is encrypted using a key derived from the **Service Owner Hash**. The Service Owner is the user or machine account that the service runs under. The TGS contains a copy of the Service Session Key on its encrypted contents so that the Service Owner can access it by decrypting the TGS.

![[TGT2.png]]
3. The TGS can then be sent to the desired service to authenticate and establish a connection. The service will use its configured account's password hash to decrypt the TGS and validate the Service Session Key.

![[TGT3.png]]


The second method of authentication is called NetNTLM Authentication.

**NetNTLM Authentication**
NetNTLM works using a challenge-response mechanism. The entire process is as follows:
![[NNTLM.png]]

1. The client sends an authentication request to the server they want to access.
2. The server generates a random number and sends it as a challenge to the client.
3. The client combines their NTLM password hash with the challenge (and other known data) to generate a response to the challenge and sends it back to the server for verification.
4. The server forwards the challenge and the response to the Domain Controller for verification.
5. The domain controller uses the challenge to recalculate the response and compares it to the original response sent by the client. If they both match, the client is authenticated; otherwise, access is denied. The authentication result is sent back to the server.
6. The server forwards the authentication result to the client.

Note that the user's password (or hash) is never transmitted through the network for security.

**Note:** The described process applies when using a domain account. If a local account is used, the server can verify the response to the challenge itself without requiring interaction with the domain controller since it has the password hash stored locally on its SAM.

As companies grow, so do their networks. Having a single domain for a company is good enough to start, but in time some additional needs might push you into having more than one. This is where trees and forests are presented (no pun intended ;)). 

**Trees**
![[Tree.png]]
This partitioned structure gives us better control over who can access what in the domain. The IT people from the UK will have their own DC that manages the UK resources only. For example, a UK user would not be able to manage US users. In that way, the Domain Administrators of each branch will have complete control over their respective DCs, but not other branches' DCs. Policies can also be configured independently for each domain in the tree.

A new security group needs to be introduced when talking about trees and forests. The **Enterprise Admins** group will grant a user administrative privileges over all of an enterprise's domains. Each domain would still have its Domain Admins with administrator privileges over their single domains and the Enterprise Admins who can control everything in the enterprise.

**Forests**
The domains you manage can also be configured in different namespaces. Suppose your company continues growing and eventually acquires another company called `MHT Inc.` When both companies merge, you will probably have different domain trees for each company, each managed by its own IT department. The union of several trees with different namespaces into the same network is known as a **forest**.
![[Forests.png]]

**Trust Relationships**

Having multiple domains organised in trees and forest allows you to have a nice compartmentalised network in terms of management and resources. But at a certain point, a user at THM UK might need to access a shared file in one of MHT ASIA servers. For this to happen, domains arranged in trees and forests are joined together by **trust relationships**.

In simple terms, having a trust relationship between domains allows you to authorise a user from domain `THM UK` to access resources from domain `MHT EU`.

The simplest trust relationship that can be established is a **one-way trust relationship**. In a one-way trust, if `Domain AAA` trusts `Domain BBB`, this means that a user on BBB can be authorised to access resources on AAA:
![[Trust.png]]


### Windows Command Line
- [set] to check path and other information.
- [ver] to check windows version
- [systeminfo] to have a fully detailed information of the machine you are using, This includes OS, Memory, CPU and etc.
- [| more] which is a way you can read it by piping it through more. Similar to linux!
- [tracert] gives us the amount of routers our command goes through before reaching the target.
- [nslookup] It looks up a host or domain and returns its IP address.
- [netstat] displays current network connections and listening ports.
- [mkdir] to make a directory
- [rmdir] do remove a directory
- [move] to move a file.
- [copy] to copy a file
- [type] similar to [cat] on linux but for txt files.
- [del] or [erase] to delete/erase a file. (same thing)
- [tasklist] to check all the running processes.  To search for a specific process you type:
	- `tasklist /FI "imagename eq notepad.exe"` this searches for the notepad.exe
- [taskill /PID [enter PID here]] This is how you would kill a task on windows.
- [chkdsk] checks the file system and disk volumes for errors and bad sectors.
- [driverquery] displays a list of installed device drivers.
- [sfc /scannow] scans system files for corruption and repairs them if possible.
- 
#### Windows Powershell
Initially exclusive to Windows, PowerShell has lately expanded to support macOS and Linux, making it a versatile option for IT professionals across different operating systems. Capable of not only Command Line shell but also scripting built on the .NET framework.

Powershell commands are known as `cmdlets` (pronounced "command-lets") which is basically a `verb-noun` command build. for example:
- [set-location] Changes (sets) the current working directory.
- [get-content] Retrieves (gets) the content of a file and displays it in the console.

Now to get into the commands one can use in Powershell:
- [Get-Command] To list all available cmdlets, functions, aliases, and scripts that can be executed in the current PowerShell session. :
	- [Get-Command -CommandType "Function"] to filter out the functions rather than cmdlets and the rest!
- [Get-Help] it provides detailed information about cmdlets, including usage, parameters, and examples. It’s the go-to cmdlet for learning how to use PowerShell commands.
	- [Get-Help [insert cmdlet here]] This is how one would get a specific cmdlet's manual.
	- [[get-help [insert cmdlet here] [-examples]] to show examples of that specific cmdlet.
	- 
- [get-alias] which shows cmdlets that would translate to command prompt commands such as set-direction being cd.
- [Find-Module] which is a way to search online for certain cmdlets that you can download. 
	- [Find-Module -name "(enter name here)] is a way you can search for specific modules/cmdlets.
- [Install-module -name "[enter name here]"] this is how you would install that specific module/cmdlet
- [Get-ChildItem] is similar to `dir` on the CLI or `ls` on linux.
	- [get-childitem | sort-object Length] will sort the directory's files/folders to show the one with the highest number of characters first and the least being the last. In PowerShell, piping is even more powerful because it passes **objects** rather than just text.
	- [Get-ChildItem | Where-Object -Property "Extension" -eq ".txt"] Shows and lists the items in this directory that have a .txt ext. (Where "Where-object" filters files by extension) The `-eq` means "equal to" and there are more comparison operators. Here is a list:
		- - `-ne`: "**not equal**". This operator can be used to exclude objects from the results based on specified criteria.
		- `-gt`: "**greater than**". This operator will filter only objects which exceed a specified value. It is important to note that this is a strict comparison, meaning that objects that are equal to the specified value will be excluded from the results.
		- `-ge`: "**greater than or equal to**". This is the non-strict version of the previous operator. A combination of `-gt` and `-eq`.
		- `-lt`: "**less than**". Like its counterpart, "greater than", this is a strict operator. It will include only objects which are strictly below a certain value.
		- `-le`: "**less than or equal to**". Just like its counterpart `-ge`, this is the non-strict version of the previous operator. A combination of `-lt` and `-eq`.
		- `-like` which is a "kinda like" operator. Usually used with a * at the end or beginning of what you are searching for. 
	- [get-childitem | select-object Name,Length]  is used to select specific properties from objects or limit the number of objects returned. It’s useful for refining the output to show only the details one needs.
- [New-Item] is used to create a directory or a file.
- [remove-item] is used to remove a directory or a file.
- [copy-item] is used to copy a directory or a file.
- [move-item] is used to move a directory or a file.
- [get-content] to view a file's content (similar to `cat` on linux and `type` on windows CLI)
- [select-string] This cmdlet searches for text patterns within files, similar to `grep` in Unix-based systems or `findstr` in Windows Command Prompt. It’s commonly used for finding specific content within log files or documents.
- [Get-computerinfo] retrieves comprehensive system information, including operating system information, hardware specifications, BIOS details, and more. As oppose to `systeminfo` which gives limited details.
- [get-localuser]  lists all the local user accounts on the system.
- [get-netipconfiguration] which is similar to `ipconfig`
- [get-netipaddress] will show details for all IP addresses configured on the system, including those that are not currently active.
- [get-process]  provides a detailed view of all currently running processes, including CPU and memory usage, making it a powerful tool for monitoring and troubleshooting.
- [get-service] lists services of the OS.
- [Get-NetTCPConnection] shows current tcp connections that are active.
- [Get-FileHash] to generate a hash for a file.
- [invoke-command] a way to execute a script or a command on a remote computer:
	- `invoke-command -computername royalfortune -scriptblock { get-service}` to run `get-service` command on the computer `royalfortune` . The `-scriptblock` is for a custom command u type in with the powershell.
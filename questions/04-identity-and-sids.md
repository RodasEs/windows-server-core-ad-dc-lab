**# Question 1**

If I was able to switch to Administrator locally and promote the server, couldn’t anyone else just do the same?



**## Answer**

No. You did not “elevate yourself.” You authenticated as the built-in Administrator account that already existed when Windows was installed.



Only someone who:



* Knows the Administrator credentials
* Is a member of the local Administrators group



can promote a server.



If someone can promote a server, they already have full control of that machine. The promotion itself is not the vulnerability — unauthorized access to the Administrator account would be.



**# Question 2**

How did I have the ability to become admin in the first place?



**## Answer**

When you installed Windows Server, the setup process required you to create and set a password for the built-in Administrator account.



That means:



* You were the system owner.
* You created the Administrator password.
* You authenticated as that account.



You did not escalate privileges. You logged into the highest-privileged account that you created during installation.



**# Question 3**

In a real company environment, if someone downloaded their own OS, could they promote themselves and gain access to the company domain?



**## Answer**

No.



Installing and promoting a server on a personal machine creates a completely separate forest and domain.



It has:



* No trust relationship with the company domain
* No access to company resources
* No authentication authority inside the organization



To promote a server inside an existing company domain, you must have Domain Admin or Enterprise Admin credentials.



Without those credentials, it is impossible.



**# Question 4**

If I don’t assign SIDs directly, how do I know the OS assigns the correct privileges?



**## Answer**

You do not control SIDs directly.



When you create:



* A user
* A group
* A computer



Windows automatically generates a unique SID.



You control privileges by:



* Assigning users to security groups
* Assigning permissions to those groups



Access is determined by:



User → Group Membership → Group SID → Permission Match



Windows builds an access token during login that contains:



* The user’s SID
* The SIDs of all groups they belong to



When accessing a resource, Windows checks whether any SID in the token matches an allowed SID in the resource’s access control list.



If it matches, access is granted.



**# Question 5**

Is the system only as secure as the Administrator account?



**## Answer**

Yes.



If someone compromises:



* Local Administrator (before promotion), or
* Domain Admin (after promotion)



They can control the environment.



That is why protecting privileged accounts is the most critical part of Active Directory security.


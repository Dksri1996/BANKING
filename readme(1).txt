BANKING SYSTEM WEB APPLICATION----SUBMITTED BY DHEERAJ KUMAR SRIVASTAVA           202CS006
                                               VINAYAK PRAKASHAN CHOYYAN          202CS033
GITHUB LINK-https://github.com/pcvinayak/PISBANK											   
											   
Preinstallations-1)XAMPP software
       
       (-------FOR UBUNTU-------) for windows scroll down
Steps-FOR UBUNTU
      1)Install XAMPP on your system
      2)Copy the Banking_System Folder in htdocs folder in Xampp.
      
        To find htdocs folder, computer--->opt--->lampp--->htdocs
        
        (you have to paste NIT-CSE Folder inside htdocs folder)
      3)Open Terminal on ubuntu and give following series of command
      ->cd /opt/lampp
      ->sudo ./manager-linux-x64.run
      
      Then enter your system password for system authentication
      
      4)Xampp software will be launched.
      5)On the top, click Manage Server
      6)Then on below there is a tab "start all" , click that tab.(you will see all three--mysql, apache server,ProFTPD start running)
      7)Minimize the Xampp software.
      8)Open browser.
      9)Type the URL localhost/phpmyadmin/
        You will see phpMyAdmin page --->Showing that everything goes correct till now.
      10)On phpMyAdmin page ,on the Top there is a tab "Databases", Click on it.
      11)Again You can find a Tab on top "import", click on it.
      12)A new page open where you can find "Browse", click on it to browse and select "d_bankingsystem.sql" file (provided in our submission).
      13)Now after selection scroll down and click "go".
      14)Now you are ready to view the site---"BANKING SYSTEM WEB APPLICATION"
         To view,a)Open a new tab in the browser
                 b)Type url http://localhost/Banking_System/
				 
      
	 


	 (------FOR WINDOWS------)
      FOR WINDOWS
      1)Install XAMPP on your system
      2)Copy the Banking_System Folder in htdocs folder in Xampp.
      
        To find htdocs folder, This PC--->Local disk(C:)--->xampp--->htdocs
        
        (you have to paste Banking_System Folder inside htdocs folder)
      3)Now search on windows search bar "xampp",select xampp control panel and hit enter. 
      4)Xampp software will be launched.
      5)On the top, click Manage Server
      6)Then click "start" for mysql and  apache server(you will see both goes to running state).
		(Note. If you are unable to start mysql then one reason may be that in your system some other application might be using port no 3306,
		you have to manaually stop that application and the again start mysql on Xampp control panel)
      7)Minimize the Xampp software.
      8)Open browser.
      9)Type the URL localhost/phpmyadmin/
        You will see phpMyAdmin page --->Showing that everything goes correct till now.
      10)On phpMyAdmin page ,on the Top there is a tab "Databases", Click on it.
      11)Again You can find a Tab on top "import", click on it.
      12)A new page open where you can find "Browse", click on it to browse and select "d_bankingsystem.sql" file (provided in our submission).
      13)Now after selection scroll down and click "go".(Database got stored here ...you can view all the database from top tab "Database".....
	     After clicking you can see all the tables in that databases)
      14)Now you are ready to view the site---"BANKING SYSTEM WEB APPLICATION"
         To view,a)Open a new tab in the browser
                 b)Type url http://localhost/Banking_System/



Technology Used--a)PHP----------For basic code
                 b)CSS----------For styling the web page
                 c)sql----------For database query
                 d)HTML---------For Body elements on web page
                 
software used----XAMPP(Provides tools--Apache server and Mysql database)

Tools------------a)Apache Server
                 b)Mysql database

# FOR LOGIN------There are two type of login
                   a)admin login------ADMINISTRATION 
				   b)employee login---BANK EMPLOYEE
                   c)Normal user login----NORMAL BANK CUSTOMER
                   (All have diffrent priviledges)
				   
                   c)Login and password for admin

                   admin sample--username=4
                           password=147
                     
                   super admin sample--username=33
                           password=369
                     
                     Login and password for employee
                   sample--username=2
                           password=12
						   
				     Login and password for normal users
                   sample--username=5
                           password=42
						   
				(You can view all users,employees and admin username and password in table d_users in "d_bankingsystem.sql")
				(Also note that password is integer values whereas username can have characters but here we have given simple values for ease)
                    


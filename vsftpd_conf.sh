#!/bin/bash

# CREATE BY C_N023X
# VSFTPD ACCOUNT CONFIGURATION

#======================
# SET ALL VARIABLE
#======================
VSFTPD_ORIG="# Example config file /etc/vsftpd.conf
#
# The default compiled in settings are fairly paranoid. This sample file
# loosens things up a bit, to make the ftp daemon more usable.
# Please see vsftpd.conf.5 for all compiled in defaults.
#
# READ THIS: This example file is NOT an exhaustive list of vsftpd options.
# Please read the vsftpd.conf.5 manual page to get a full idea of vsftpd's
# capabilities.
#
#
# Run standalone?  vsftpd can run either from an inetd or as a standalone
# daemon started from an initscript.
listen=NO
#
# This directive enables listening on IPv6 sockets. By default, listening
# on the IPv6 \\"any\\" address (::) will accept connections from both IPv6
# and IPv4 clients. It is not necessary to listen on *both* IPv4 and IPv6
# sockets. If you want that (perhaps because you want to listen on specific
# addresses) then you must run two copies of vsftpd with two configuration
# files.
listen_ipv6=YES
#
# Allow anonymous FTP? (Disabled by default).
anonymous_enable=NO
#
# Uncomment this to allow local users to log in.
local_enable=YES
#
# Uncomment this to enable any form of FTP write command.
#write_enable=YES
#
# Default umask for local users is 077. You may wish to change this to 022,
# if your users expect that (022 is used by most other ftpd's)
#local_umask=022
#
# Uncomment this to allow the anonymous FTP user to upload files. This only
# has an effect if the above global write enable is activated. Also, you will
# obviously need to create a directory writable by the FTP user.
#anon_upload_enable=YES
#
# Uncomment this if you want the anonymous FTP user to be able to create
# new directories.
#anon_mkdir_write_enable=YES
#
# Activate directory messages - messages given to remote users when they
# go into a certain directory.
dirmessage_enable=YES
#
# If enabled, vsftpd will display directory listings with the time
# in  your  local  time  zone.  The default is to display GMT. The
# times returned by the MDTM FTP command are also affected by this
# option.
use_localtime=YES
#
# Activate logging of uploads/downloads.
xferlog_enable=YES
#
# Make sure PORT transfer connections originate from port 20 (ftp-data).
connect_from_port_20=YES
#
# If you want, you can arrange for uploaded anonymous files to be owned by
# a different user. Note! Using \\"root\\" for uploaded files is not
# recommended!
#chown_uploads=YES
#chown_username=whoever
#
# You may override where the log file goes if you like. The default is shown
# below.
#xferlog_file=/var/log/vsftpd.log
#
# If you want, you can have your log file in standard ftpd xferlog format.
# Note that the default log file location is /var/log/xferlog in this case.
#xferlog_std_format=YES
#
# You may change the default value for timing out an idle session.
#idle_session_timeout=600
#
# You may change the default value for timing out a data connection.
#data_connection_timeout=120
#
# It is recommended that you define on your system a unique user which the
# ftp server can use as a totally isolated and unprivileged user.
#nopriv_user=ftpsecure
#
# Enable this and the server will recognise asynchronous ABOR requests. Not
# recommended for security (the code is non-trivial). Not enabling it,
# however, may confuse older FTP clients.
#async_abor_enable=YES
#
# By default the server will pretend to allow ASCII mode but in fact ignore
# the request. Turn on the below options to have the server actually do ASCII
# mangling on files when in ASCII mode.
# Beware that on some FTP servers, ASCII support allows a denial of service
# attack (DoS) via the command \"SIZE /big/file\" in ASCII mode. vsftpd
# predicted this attack and has always been safe, reporting the size of the
# raw file.
# ASCII mangling is a horrible feature of the protocol.
#ascii_upload_enable=YES
#ascii_download_enable=YES
#
# You may fully customise the login banner string:
#ftpd_banner=Welcome to blah FTP service.
#
# You may specify a file of disallowed anonymous e-mail addresses. Apparently
# useful for combatting certain DoS attacks.
#deny_email_enable=YES
# (default follows)
#banned_email_file=/etc/vsftpd.banned_emails
#
# You may restrict local users to their home directories.  See the FAQ for
# the possible risks in this before using chroot_local_user or
# chroot_list_enable below.
#chroot_local_user=YES
#
# You may specify an explicit list of local users to chroot() to their home
# directory. If chroot_local_user is YES, then this list becomes a list of
# users to NOT chroot().
# (Warning! chroot'ing can be very dangerous. If using chroot, make sure that
# the user does not have write access to the top level directory within the
# chroot)
#chroot_local_user=YES
#chroot_list_enable=YES
# (default follows)
#chroot_list_file=/etc/vsftpd.chroot_list
#
# You may activate the \"-R\" option to the builtin ls. This is disabled by
# default to avoid remote users being able to cause excessive I/O on large
# sites. However, some broken FTP clients such as \"ncftp\" and \"mirror\" assume
# the presence of the \"-R\" option, so there is a strong case for enabling it.
#ls_recurse_enable=YES
#
# Customization
#
# Some of vsftpd's settings don't fit the filesystem layout by
# default.
#
# This option should be the name of a directory which is empty.  Also, the
# directory should not be writable by the ftp user. This directory is used
# as a secure chroot() jail at times vsftpd does not require filesystem
# access.
secure_chroot_dir=/var/run/vsftpd/empty
#
# This string is the name of the PAM service vsftpd will use.
pam_service_name=vsftpd
#
# This option specifies the location of the RSA certificate to use for SSL
# encrypted connections.
rsa_cert_file=/etc/ssl/certs/ssl-cert-snakeoil.pem
rsa_private_key_file=/etc/ssl/private/ssl-cert-snakeoil.key
ssl_enable=NO

#
# Uncomment this to indicate that vsftpd use a utf8 filesystem.
#utf8_filesystem=YES
";

VSFTPD_TEST="# Example config file /etc/vsftpd.conf
#
# The default compiled in settings are fairly paranoid. This sample file
# loosens things up a bit, to make the ftp daemon more usable.
# Please see vsftpd.conf.5 for all compiled in defaults.
#
# READ THIS: This example file is NOT an exhaustive list of vsftpd options.
# Please read the vsftpd.conf.5 manual page to get a full idea of vsftpd's
# capabilities.
#
#
# Run standalone?  vsftpd can run either from an inetd or as a standalone
# daemon started from an initscript.
listen=NO
#
# This directive enables listening on IPv6 sockets. By default, listening
# on the IPv6 \"any\" address (::) will accept connections from both IPv6
# and IPv4 clients. It is not necessary to listen on *both* IPv4 and IPv6
# sockets. If you want that (perhaps because you want to listen on specific
# addresses) then you must run two copies of vsftpd with two configuration
# files.
listen_ipv6=YES
#
# Allow anonymous FTP? (Disabled by default).
anonymous_enable=NO
#
# Uncomment this to allow local users to log in.
local_enable=YES
#
# Uncomment this to enable any form of FTP write command.
write_enable=YES
#
# Default umask for local users is 077. You may wish to change this to 022,
# if your users expect that (022 is used by most other ftpd's)
#local_umask=022
#
# Uncomment this to allow the anonymous FTP user to upload files. This only
# has an effect if the above global write enable is activated. Also, you will
# obviously need to create a directory writable by the FTP user.
#anon_upload_enable=YES
#
# Uncomment this if you want the anonymous FTP user to be able to create
# new directories.
#anon_mkdir_write_enable=YES
#
# Activate directory messages - messages given to remote users when they
# go into a certain directory.
dirmessage_enable=YES
#
# If enabled, vsftpd will display directory listings with the time
# in  your  local  time  zone.  The default is to display GMT. The
# times returned by the MDTM FTP command are also affected by this
# option.
use_localtime=YES
#
# Activate logging of uploads/downloads.
xferlog_enable=YES
#
# Make sure PORT transfer connections originate from port 20 (ftp-data).
connect_from_port_20=YES
#
# If you want, you can arrange for uploaded anonymous files to be owned by
# a different user. Note! Using \"root\" for uploaded files is not
# recommended!
#chown_uploads=YES
#chown_username=whoever
#
# You may override where the log file goes if you like. The default is shown
# below.
#xferlog_file=/var/log/vsftpd.log
#
# If you want, you can have your log file in standard ftpd xferlog format.
# Note that the default log file location is /var/log/xferlog in this case.
#xferlog_std_format=YES
#
# You may change the default value for timing out an idle session.
#idle_session_timeout=600
#
# You may change the default value for timing out a data connection.
#data_connection_timeout=120
#
# It is recommended that you define on your system a unique user which the
# ftp server can use as a totally isolated and unprivileged user.
#nopriv_user=ftpsecure
#
# Enable this and the server will recognise asynchronous ABOR requests. Not
# recommended for security (the code is non-trivial). Not enabling it,
# however, may confuse older FTP clients.
#async_abor_enable=YES
#
# By default the server will pretend to allow ASCII mode but in fact ignore
# the request. Turn on the below options to have the server actually do ASCII
# mangling on files when in ASCII mode.
# Beware that on some FTP servers, ASCII support allows a denial of service
# attack (DoS) via the command \"SIZE /big/file\" in ASCII mode. vsftpd
# predicted this attack and has always been safe, reporting the size of the
# raw file.
# ASCII mangling is a horrible feature of the protocol.
#ascii_upload_enable=YES
#ascii_download_enable=YES
#
# You may fully customise the login banner string:
#ftpd_banner=Welcome to blah FTP service.
#
# You may specify a file of disallowed anonymous e-mail addresses. Apparently
# useful for combatting certain DoS attacks.
#deny_email_enable=YES
# (default follows)
#banned_email_file=/etc/vsftpd.banned_emails
#
# You may restrict local users to their home directories.  See the FAQ for
# the possible risks in this before using chroot_local_user or
# chroot_list_enable below.
#chroot_local_user=YES
#
# You may specify an explicit list of local users to chroot() to their home
# directory. If chroot_local_user is YES, then this list becomes a list of
# users to NOT chroot().
# (Warning! chroot'ing can be very dangerous. If using chroot, make sure that
# the user does not have write access to the top level directory within the
# chroot)
#chroot_local_user=YES
#chroot_list_enable=YES
# (default follows)
#chroot_list_file=/etc/vsftpd.chroot_list
#
# You may activate the \"-R\" option to the builtin ls. This is disabled by
# default to avoid remote users being able to cause excessive I/O on large
# sites. However, some broken FTP clients such as \"ncftp\" and \"mirror\" assume
# the presence of the \"-R\" option, so there is a strong case for enabling it.
#ls_recurse_enable=YES
#
# Customization
#
# Some of vsftpd's settings don't fit the filesystem layout by
# default.
#
# This option should be the name of a directory which is empty.  Also, the
# directory should not be writable by the ftp user. This directory is used
# as a secure chroot() jail at times vsftpd does not require filesystem
# access.
#secure_chroot_dir=/var/run/vsftpd/empty
#
# This string is the name of the PAM service vsftpd will use.
pam_service_name=vsftpd
#
# This option specifies the location of the RSA certificate to use for SSL
# encrypted connections.
rsa_cert_file=/etc/ssl/certs/ssl-cert-snakeoil.pem
rsa_private_key_file=/etc/ssl/private/ssl-cert-snakeoil.key
ssl_enable=NO

#
# Uncomment this to indicate that vsftpd use a utf8 filesystem.
#utf8_filesystem=YES

#chroot
allow_writeable_chroot=YES
chroot_local_user=YES

#limit port
pasv_min_port=40000
pasv_max_port=50000

#user_sub_token
user_sub_token=\$USER

#user list conf
userlist_deny=NO
userlist_enable=YES
userlist_file=/etc/vsftpd.userlist

#izinkan hak askses istimewa seperti user lainnya
virtual_use_local_privs=YES

#atur folder konfigurasi
user_config_dir=/etc/vsftpd/user_config_dir/";

###### this for header layout
USERNAME=$USER;
FILENAME="vsftpd_conf.sh";

### FUNCTIONS
#reopen this sofware
reopen_script()
	{
		echo "----------------------------------";
		echo "NEXT USE THIS IS SOFTWARE ?( Y/N )";
		echo "----------------------------------";
		read reopen
		echo "----------------------------------";
		if [[ $reopen = "y" ]]; then
			$THIS_DIRLOC"/$FILENAME";
		elif [[ $reopen = "Y" ]]; then
			$THIS_DIRLOC"/$FILENAME";
		elif [[ $reopen = "N" ]]; then
			echo "

	[[[[[[ Bye Bye $USERNAME :) ]]]]]]

		";
		exit 1;
	elif [[ $reopen = "n" ]]; then
			echo "

	[[[[[[ Bye Bye $USERNAME :) ]]]]]]

		";
		exit 1;
		else
			echo "$ERROR action canceled.";
		fi
	}


echo "
==========================================

                  WELCOME
             \$root~# $USERNAME
            -----------------
        SIMPLE VSFTPD CONFIGURATION
         v 1.0 create by C_N023X
------------------------------------------";

echo "
GUEST
----
  #######################################
  #######################################
        PENTING BACA TERLEBIH DAHULU

   pertama coba anda ketik angka 5 lalu enter
   untuk panduan pemakaian
  #######################################
  #######################################
------------------------------------------
";

###### this for sub header layout
echo "
SELECT NUMBER OPTION 
--------------------
   1. Backup code vsftpd.conf from your computer   
   2. Create backup code from this software
   3. Use vsftpd.conf from our side for set multiuser
   4. Create a new ftp user and set home directory
   5. Help
   6. Exit
   7. Delete User FTP
   8. Restore Original Installation vsftpd
==========================================";
##### this code original vsftpd.conf

##### this loc of file vsftpd
FILE_VSFTPD="/etc/vsftpd.conf";
##### dir loc set
THIS_DIRLOC=$(dirname "$(readlink -f "$0")");
##### error 
##### fodler vsftpd
##### dont use slash on last stirng FOLDER_VSFTPD
FOLDER_VSFTPD="/etc/vsftpd";
ERROR="ERROR!!!";
##### CHECK INSTALLATION VSFTPD
if [ -f $FILE_VSFTPD ]; then
	APPCHECK=TRUE;
else
	APPCHECK=FALSE;
fi
#### CHECK THIS ROOT ?
if [ $(id -u) = 0 ]; then
	CHECKROOT=TRUE;
else
	 CHECKROOT=FALSE;
fi
USERLIST="/etc/vsftpd.userlist";

#============================
# RUN ACTION
#============================

if [[ $CHECKROOT = TRUE ]]; then
	echo "Choose Number ? : "; read select_handle;

	#number empty
	if [[ $select_handle = "" ]]; then

		echo "$ERROR Wrong Number.";
		echo "RESTARTING..............";
		echo "SELECT NUMBER AGAIN.....";
		echo "--------------------";
		reopen_script;

	#create original vsftpd.conf
	elif [[ $select_handle = "1" ]]; then
		
		if [[ $APPCHECK = TRUE ]]; then
			echo "
|-----------------------------
|   BACKUP vsftpd.conf 
|   from your computer
|-----------------------------
			";
			cp "$FILE_VSFTPD" $THIS_DIRLOC"/vsftpd.conf.backupfromyourcomputer";
			echo "Preparing....";
			echo "Is configuring.....";
			echo "Copy File From [/etc/vsftpd.conf] to [$THIS_DIRLOC/vsftpd.conf.backupfromyourcomputer]....";
			echo "Please Wait....";
			echo "Backup successfully [/etc/vsftpd.conf] to [$THIS_DIRLOC/vsftpd.conf.backupfromyourcomputer] .";
			reopen_script;
		else
			echo "$ERROR Cant backup /etc/vsftpd.conf from your computer. file [$FILE_VSFTPD] not found.";
			reopen_script;
		fi

	#create file bakup vsftpd.conf origin from script
	elif [[ $select_handle = "2" ]]; then
		echo "
|-----------------------------
|   CREATE vsftpd.conf ORIGINAL 
|   from this script
|-----------------------------
			";
		echo "Preparing....";
		echo "Is configuring.....";
		echo "Make file to location [$THIS_DIRLOC/vsftpd.conf.backupfromscript]....";
		echo "Please Wait....";
		echo "Execute \"\$script\" | tee [$THIS_DIRLOC/vsftpd.conf.backupfromscript]";
		echo "$VSFTPD_ORIG" | tee $THIS_DIRLOC"/vsftpd.conf.backupfromscript";
		echo "Create successfully. File location [$THIS_DIRLOC/vsftpd.conf.backupfromscript]";
		reopen_script;


	#use vsftpd.conf handler from this script
	elif [[ $select_handle = "3" ]]; then
		echo "
|-----------------------------
|   USE vsftpd.conf FROM THIS SCRIPT
|   TEST CODE FOR CREATE MULTIPLE USERS
|-----------------------------
			";
		echo "Preparing....";
		
		echo "Checking this folder [$FOLDER_VSFTPD].......";
		if [ -d $FOLDER_VSFTPD ]; then
			echo "Folder is OK......";
		else
			echo "Not have This folder [$FOLDER_VSFTPD]......";
			echo "Create folder [$FOLDER_VSFTPD]......";
			mkdir "$FOLDER_VSFTPD";
			echo "Create Success......";
		fi
		echo "Checking this folder [$FOLDER_VSFTPD/user_config_dir/].......";
		if [ -d "$FOLDER_VSFTPD/user_config_dir/" ]; then
			echo "Folder is OK......";
		else
			echo "Creating a folder [$FOLDER_VSFTPD/user_config_dir/].....";
			mkdir "$FOLDER_VSFTPD/user_config_dir/";
			echo "Create success.......";
		fi
		echo "Checking file [$USERLIST].....";

		if [[ -f $USERLIST ]]; then
			echo "File is OK.....";
		else
			echo "File not found......";
			echo "Make file to [$USERLIST]......";
			touch "$USERLIST";
			echo "Create success.....";
		fi

		echo "Checking file [$FILE_VSFTPD].....";
		if [[ $APPCHECK = TRUE ]]; then
			echo "File is OK.....";
		else
			echo "File not found......";
			echo "Make file to [$FILE_VSFTPD]......";
			touch "$FILE_VSFTPD";
			echo "Create success.....";
		fi
		echo "configuring......";
		echo "Rewrite script file [$FILE_VSFTPD].....";
		echo "This script......";
		echo "$VSFTPD_TEST" | tee "$FILE_VSFTPD";
		echo "Rewriting success.....";
		echo "restarting vsftpd.....";
		systemctl restart vsftpd; 
		echo "successfully installation :), go to create a new user ftp. Select option number 4.";
		reopen_script;

	#### for create a new user and confgure root dir users
	elif [[ $select_handle == "4" ]]; then
		echo "
|-----------------------------
|   CREATE NEW USER FTP
|   AND CONFIGURE DIRECTORY ROOT USER
|-----------------------------
			";
		echo "Checking file [$FILE_VSFTPD]....";
		if [[ $APPCHECK = TRUE ]]; then
			echo "File is OK......";
			echo "Checking Folder [$FOLDER_VSFTPD]......";
			if [ -d $FOLDER_VSFTPD ]; then
				echo "Folder is OK.....";
				echo "Checking Folder [$FOLDER_VSFTPD/user_config_dir/]......";
				if [ -d "$FOLDER_VSFTPD/user_config_dir/" ]; then
					echo "Folder is OK......";
					echo "Checking File [$USERLIST]......";
					if [[ -f $USERLIST ]]; then

						echo "File is OK.....";
						echo "========================";
						echo "ADD USER";
						echo "========================";
						echo "Type User : "
						read adduser_name;
						echo "Type Password : ";
						adduser "$adduser_name";
						echo "saving user.....";
						echo "$adduser_name" >> "$USERLIST";
						echo "Add user success......";
						echo "========================";
						echo "USER INFO :";
						echo "Username : $adduser_name";
						echo "Password : *******";
						echo "========================";
						echo "SET ROOT DIR NEW SER";
						echo "========================";
						
						echo "Set Dir Root User : ";
						read root_dir_user;
						echo "---------------------";
						echo "Write This Script....";
						echo "local_root=$root_dir_user
write_enable=YES
						" | tee "$FOLDER_VSFTPD/user_config_dir/$adduser_name";
						echo "========================";
						echo "ROOT DIR USER INFO :";
						echo "Dir Location : $root_dir_user";
						echo "========================";
						echo "restarting vsftpd.....";
						systemctl restart vsftpd;
						echo "Success create a new user user and set home directory ftp.";
						reopen_script;
					else
						echo "File not found.";
						echo "re-enter your option to number [3].";
						reopen_script;
					fi

				else
					echo "Folder not found.";
					echo "re-enter your option to number [3].";
					reopen_script;
				fi
			else
				echo "Folder not found.";
				echo "re-enter your option to number [3].";
				reopen_script;
			fi
		else
			echo "File [$FILE_VSFTPD] not found.";
			echo "re-enter your option to number [3].";
			reopen_script;

		fi
	elif [[ $select_handle = "7" ]]; then
		echo "
|-----------------------------
|   DELETE USER FTP
|   RECONFIGURE FILE USER
|-----------------------------
		";
		echo "Preparing.....";
		echo "-----------------------------";
		echo "Type User : ";
		echo "------------";
		read DEL_USER;
		echo "-----------------------------";
		echo "Check User.....";
		userdel -r "$DEL_USER" 2>/dev/null;
		if [[ $? -eq 0 ]]; then
			echo "Deleting a User \"$DEL_USER\" ......";
			echo "\"$DEL_USER\" Deleted.......";
			echo "Checking Directory [$FOLDER_VSFTPD].....";
			if [[ -d $FOLDER_VSFTPD ]]; then
				echo "Folder is OK.....";
				echo "Checking File [$USERLIST].....";
				if [[ -f $USERLIST ]]; then
					echo "Delete user \"$DEL_USER\" from userlist....";
					#-- replace text to empty line
					sed -i "s/$DEL_USER//g" "$USERLIST";
					#del empty line from file
					sed -i "/^$/d" "$USERLIST";
					echo "User deleted from userlist.....";
				else
					echo "File Not Found......";
				fi
				echo "Checking Directory [$FOLDER_VSFTPD/user_config_dir/].....";
				if [[ -d $FOLDER_VSFTPD"/user_config_dir/" ]]; then
					echo "Folder is OK.....";
					echo "Deleting user file [$FOLDER_VSFTPD/user_config_dir/$DEL_USER].....";
					unlink "$FOLDER_VSFTPD/user_config_dir/$DEL_USER" 2>/dev/null;
					echo "User file deleted.....";
					echo "----------------------------";
					echo "Successfully delete user \"$DEL_USER\" ftp. :)";
					reopen_script;
				else
					echo "Folder Not Found......";
					echo "----------------------------";
					echo "Successfully delete user \"$DEL_USER\" ftp. :)";
					reopen_script;
				fi
			else
				echo "Folder Not Found.....";
				echo "----------------------------";
				echo "Successfully delete user \"$DEL_USER\" ftp. :)";
				reopen_script;
			fi
		else
			
			echo "User \"$DEL_USER\" not found.";
			reopen_script;
			
		fi

	#-- Restore setting vstpd to original
	elif [[ $select_handle = "8" ]]; then
		echo "
|-----------------------------
|   RESTORE SETTINGS
|   VSFTPD CONFIGURATION
|-----------------------------
		";
		echo "Preparing.....";
		echo "-----------------------------";
		echo "Tindakan akan dilakukan untuk mengatur ulang
settingan vsftpd menjadi default sama seperti baru diinstall. User yang sudah
didaftarkan tidak dapat kami hapus. Anda dapat menghapus 
secara manual dengan mengetikan \"userdel -r <user>\" (Y/N) ? : ";
		echo "-----------------------------";
		read DEAL_RESTORE;
		if [[ $DEAL_RESTORE = "y" || $DEAL_RESTORE = "Y" ]]; then
			echo "=============================";
			echo "SELECT RESTORE FILE vsftpd.conf FROM : ";
			echo "-----------------------------";
			echo "1. select from computer backup";
			echo "2. select from this script backup";
			echo "3. custom location of file vsftpd.conf";
			echo "=============================";
			echo "Number Select ?";
			echo "---------------";
			read NUM_VSFTPD_OPTION;
			echo "=============================";
			if [[ $NUM_VSFTPD_OPTION = "1" ]]; then
				echo "Check vsftpd.conf from location [$THIS_DIRLOC/vsftpd.conf.backupfromyourcomputer].....";
				if [[ -f $THIS_DIRLOC"/vsftpd.conf.backupfromyourcomputer" ]]; then
					echo "File backup found....";
					echo "Copy file [$THIS_DIRLOC/vsftpd.conf.backupfromyourcomputer] to [$FILE_VSFTPD].....";
					cp $THIS_DIRLOC"/vsftpd.conf.backupfromyourcomputer" "$FILE_VSFTPD";
					echo "Restore original vsftpd.conf successfully.....";

					echo "Checking Folder [$FOLDER_VSFTPD/user_config_dir/]......";
					if [ -d $FOLDER_VSFTPD"/user_config_dir/" ]; then
						echo "Folder is OK.....";
						echo "Removing [$FOLDER_VSFTPD/user_config_dir/].....";
						rm -r "$FOLDER_VSFTPD/user_config_dir/";
						echo "restarting vsftpd.....";
						systemctl restart vsftpd;
						echo "Successfully Restore To Default Settings vsftpd.";
						reopen_script;
					else
						echo "Folder not found.....";
						echo "Skip Removing [$FOLDER_VSFTPD/user_config_dir/].....";
						echo "restarting vsftpd.....";
						systemctl restart vsftpd;
						echo "Successfully Restore To Default Settings vsftpd.";
						reopen_script;
					fi

				else
					echo "file [$THIS_DIRLOC/vsftpd.conf.backupfromyourcomputer] not found......";
					echo "Restore Failed.";
					echo "First select number 1 (backup vsftpd.conf computer version) <enter> and try again number 8 for restore action.";
					reopen_script;
				fi
			elif [[ $NUM_VSFTPD_OPTION = "2" ]]; then
				echo "Check vsftpd.conf from location [$THIS_DIRLOC/vsftpd.conf.backupfromscript].....";
				if [[ -f $THIS_DIRLOC"/vsftpd.conf.backupfromscript" ]]; then
					echo "File backup found....";
					echo "Copy file [$THIS_DIRLOC/vsftpd.conf.backupfromscript] to [$FILE_VSFTPD].....";
					cp $THIS_DIRLOC"/vsftpd.conf.backupfromscript" "$FILE_VSFTPD";
					echo "Restore original vsftpd.conf successfully......";

					echo "Checking Folder [$FOLDER_VSFTPD/user_config_dir/]......";
					if [ -d $FOLDER_VSFTPD"/user_config_dir/" ]; then
						echo "Folder is OK.....";
						echo "Removing [$FOLDER_VSFTPD/user_config_dir/].....";
						rm -r "$FOLDER_VSFTPD/user_config_dir/";
						echo "restarting vsftpd.....";
						systemctl restart vsftpd;
						echo "Successfully Restore To Default Settings vsftpd.";
						reopen_script;
					else
						echo "Folder not found.....";
						echo "Skip Removing [$FOLDER_VSFTPD/user_config_dir/].....";
						echo "restarting vsftpd.....";
						systemctl restart vsftpd;
						echo "Successfully Restore To Default Settings vsftpd.";
						reopen_script;
					fi

				else
					echo "file [$THIS_DIRLOC/vsftpd.conf.backupfromscript] not found......";
					echo "Restore Failed.";
					echo "First select number 2 (backup vsftpd.conf my version) <enter> and try again number 8 for restore action.";
					reopen_script;
				fi
			elif [[ $NUM_VSFTPD_OPTION = "3" ]]; then
				echo "LOCATION FILE vsftpd.conf ORIGINAL :";
				read LOCATION_FILE_VSFTPD_ORIG;
				echo "-----------------------------";
				echo "Check vsftpd.conf from location [$LOCATION_FILE_VSFTPD_ORIG].....";
				if [[ -f $LOCATION_FILE_VSFTPD_ORIG ]]; then
					echo "File backup found....";
					echo "Copy file [$LOCATION_FILE_VSFTPD_ORIG] to [$FILE_VSFTPD].....";
					cp $LOCATION_FILE_VSFTPD_ORIG "$FILE_VSFTPD";
					echo "Restore original vsftpd.conf successfully......";

					echo "Checking Folder [$FOLDER_VSFTPD/user_config_dir/]......";
					if [ -d $FOLDER_VSFTPD"/user_config_dir/" ]; then
						echo "Folder is OK.....";
						echo "Removing [$FOLDER_VSFTPD/user_config_dir/].....";
						rm -r "$FOLDER_VSFTPD/user_config_dir/";
						echo "restarting vsftpd.....";
						systemctl restart vsftpd;
						echo "Successfully Restore To Default Settings vsftpd.";
						reopen_script;
					else
						echo "Folder not found.....";
						echo "Skip Removing [$FOLDER_VSFTPD/user_config_dir/].....";
						echo "restarting vsftpd.....";
						systemctl restart vsftpd;
						echo "Successfully Restore To Default Settings vsftpd.";
						reopen_script;
					fi

				else
					echo "file [$LOCATION_FILE_VSFTPD_ORIG] not found......";
					echo "Restore Failed.";
					echo "Please check again location of file original vsftpd.conf";
					reopen_script;
				fi

			else
				echo "Wrong Number Options.";
				reopen_script;
			fi


		elif [[ $DEAL_RESTORE = "n" || $DEAL_RESTORE = "N" ]]; then
			echo "-----------------------------";
			echo "Restore canceled.";
			reopen_script;
		else
			echo "-----------------------------";
			echo "$ERROR error authentication.";
			reopen_script;
		fi
		

	#help
	elif [[ $select_handle = "5" ]]; then
		echo "

HELP
----
	Untuk menggunakan script ini ada beberapa hal perlu
	anda perhatikan, yaitu pada script ini kami
	melakukan rewrite ulang file konfigurasi
	vsftpd di folder /etc/vsftpd.conf dan menuliskan
	isi file dengan kepunyaan kami. Untuk mecegah terjadi
	kesalahan teknik, kami menyarankan untuk membackup file 
	tersebut terlebih dahulu dengan mengetikan angka 1 atau
	kami juga sudah menyiapkan file original tersebut di script
	ini , anda dapat mengetikan angka 2 untuk mendapatkannya.
	kami bisa menjamin 100% aman menggunakan software ini.

	Panduan
	-------
	untuk menggunakan scirpt ini, anda bisa memilih 
	beberapa opsi yang tersedia 1 - 7, sesudahnya anda bisa menekan enter
	untuk menjalankannya.

	opsi
	-------
	* Pada opsi pilihan 1 , digunakan untuk membackup file
	yang berada pada lokasi /etc/vsftpd.conf ke lokasi directory file script 
	saat ini [saat ini anda berada di lokasi $THIS_DIRLOC]

	* pada opsi pilihan 2, digunakan untuk membuat file backup
	sama seperti opsi 1, akan tetapi source didapatkan dari 
	software ini langsung. Pada opsi 2 ini kami mengantisipasi jika
	file konfigurasi anda sebelumnya sudah di ubah dan belum
	sempat anda backup.

	* Pada opsi pilihan 3, digunakan untuk merewrite file
	pada lokasi /etc/vsftpd.conf dengan source kode yang sudah kami
	bekali fitur multi user dan bisa meng set home path user berdasarkan
	kepemilikannya. 
	Misal :
	User XXX mempunyai directory root di /home/xxx/
	dan
	User MMM mempunyai directory root di /var/www/html

	* Pada opsi pilihan 4, digunakan untuk membuat user ftp baru
	juga melakukan setting konfigurasi root directory-nya

	* Pada opsi pilihan 5. digunakan untuk bantuan.

	* Pada opsi pilihan 6, digunakan untuk keluar dari script 
	yang berjalan.
		";
		reopen_script;


	#create original from my app
	elif [[ $select_handle = "6" ]]; then
		echo "


	[[[[[[ Bye Bye $USERNAME :) ]]]]]]

		";
		exit 1;

	else
		echo "$ERROR Wrong Number $select_handle .";
		echo "RESTARTING..............";
		echo "SELECT NUMBER AGAIN.....";
		reopen_script;

	fi
	
else
	echo "$ERROR please execute this bash script on root access.";
	echo "Preparing....";
	echo "execute [sudo $THIS_DIRLOC/$FILENAME]....";
	echo "-----------------------";
	sudo $THIS_DIRLOC"/$FILENAME";
	echo "-----------------------";
fi






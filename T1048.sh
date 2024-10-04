#!/bin/bash

read -p "Enter a Date/Time: " Time
read -p "Enter a User: " User_
read -p "Enter a IP Address: " IP_Addr
read -p "Enter a Country: " Country
read -p "ISP: " ISP
read -p "Prior Case history: " CaseHistory 
read -p -e "SIEM or SaaS: Siem_SaaS \n" 

echo -e "Sending email to SPOC to determine if this activity is expected\n"
 
echo -e "On Hold - Awaiting Caller \n"

echo "Technical Details:"
echo "Date/Time of Event: $Time" 
echo "User: $User_"
echo "Incident Source: IP: $IP_Addr | Country: $Country | ISP: $ISP | IP has No confidence of abuse"
echo "IP Anonymization/Proxy: $IP_Addr"
echo "Prior Case History Review: $CaseHistory" 
echo -e "Platform of Alert: 365/FortiSIEM \n"

echo "Summary of Investigation:"
echo -e "Alert shows that user $User_ had logged in today from Country $Country. Verified that IP $IP_Addr is in fact associated with Country $Country\n"
 
echo -e "Requesting client confirmation if travel is expected, and user's return date.\n"

echo "*Analysis"
echo ">Per checking OSINT tools and SIEM, user IP geolocation was in Country $Country."
echo ">There's an indication that the user's IP is using a VPN or a possible proxy."
echo -e ">The user's IP address does not show confidence of abuse according to the threat intelligence check.\n"

echo "Double check country:"
echo "CiscoTalos >>  Country -" $Country 
echo "AbuseDB >>  Country -" $Country  

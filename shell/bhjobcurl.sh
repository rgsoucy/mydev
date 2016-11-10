#!/bin/bash
#curl command pulls open jobs

response=`curl 'https://public-rest4.bullhornstaffing.com/rest-services/1XOC9/query/JobBoardPost?where=(isOpen=true)&fields=id,title,publishedCategory(id,name),address(city,state),employmentType,dateLastPublished,isOpen,isPublic,isDeleted&count=20&orderBy=-dateLastPublished&start=0' -H 'Accept: application/json, text/plain, */*' -H 'Accept-Encoding: gzip, deflate, br' -H 'Accept-Language: en-US,en;q=0.5' -H 'Connection: keep-alive' -H 'Host: public-rest4.bullhornstaffing.com' -H 'Origin: http://localhost:3000' -H 'Referer: http://localhost:3000/' -H 'User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:47.0) Gecko/20100101 Firefox/47.0'`

echo $response | jq ''>> /mnt/c/Users/rsoucy/Desktop/curlJobs.json
#echo Done!


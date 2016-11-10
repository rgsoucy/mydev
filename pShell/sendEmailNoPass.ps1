$User = "ryan2@labur.com"
$File = "C:\Users\rsoucy\emailPassword.txt"
$cred=New-Object -TypeName System.Management.Automation.PSCredential  $User, ("48Jefferson" | ConvertTo-SecureString -AsPlainText -Force)
$EmailTo = "rgsoucy1@gmail.com"
$EmailFrom = "ryan2@labur.com"
$Subject = "Email Subject" 
$Body = "Email body text" 
$SMTPServer = "smtp.office365.com" 
$filenameAndPath = "C:\Users\rsoucy\myfile.txt"
$SMTPMessage = New-Object System.Net.Mail.MailMessage($EmailFrom,$EmailTo,$Subject,$Body)
$attachment = New-Object System.Net.Mail.Attachment($filenameAndPath)
$SMTPMessage.Attachments.Add($attachment)
$SMTPClient = New-Object Net.Mail.SmtpClient($SmtpServer, 587) 
$SMTPClient.EnableSsl = $true 
$SMTPClient.Credentials = New-Object System.Net.NetworkCredential($cred.UserName, $cred.Password); 
$SMTPClient.Send($SMTPMessage)
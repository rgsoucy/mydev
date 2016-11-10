$userid='ryan2@labur.com'
Send-MailMessage `
    -To 'rgsoucy1@gmail.com' `
    -subject 'test' `
    -body 'test'  `
    -UseSsl `
    -Port 587 `
    -SmtpServer 'smtp.office365.com' `
    -From  $userid `
    -Credential $userid

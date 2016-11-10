var settings = {
    async: true,
    crossDomain: true,
    url: "http:///%22https://auth.bullhornstaffing.com/oauth/authorize?client_id=16c9eb41-a4a1-436a-abf4-dc0dfb1e091c&response_type=code&username=ryan.soucy&password=2_0liver&action=Login%22",
    method: "POST",
    headers: {
        "cache-control": "no-cache",
        "postman-token": "3b0e3207-b746-8f74-a5e5-d75441df80bc"
    }
}

$.ajax(settings).done(function (response) {
    console.log(response);
    alert(response);
});
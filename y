var Body = JSON.parse($response.body);
switch ($request.url.match(/map|personal|json/)[0]){
 case "map":
 Body.data = '046ef1bab26e5b9bfe2473ded237b572';
 break;
 default:
$done({ body: $response.body
.replace(/false/g,'true') });
 }
$done({body: JSON.stringify(Body)});

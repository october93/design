var fs = require('fs');

var codesJSON = require("./codes.json")
var codes = codesJSON.codes

var contents = `<?xml version="1.0" encoding="utf-8"?>
<qrcodes>`

for (let i = 0; i < codes.length; i++ ) {
  contents += `
  <qrcode>
    <content>https://october.app/qr/${codes[i]}</content>
    <code>${codes[i]}</code>
  </qrcode>`
}

contents += `
</qrcodes>`

fs.writeFile("./codes.xml", contents, function(err) {
    if(err) {
        return console.log(err);
    }

    console.log("The file was saved!");
});

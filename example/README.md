# initial_intent_example

Demonstrates how to use the initial_intent plugin.

## Getting Started

This specific demonstrator requires the data to be in JSON format. 

Install the app then scan image below with QR reader app which can launch other apps e.g. QR & Barcode Scanner

![image info](../assets/qrcode.jpg)


## Note on creating your custom schema for Android

This app uses `myapp` schema to listen to the intent. If using custom schema avoid using symbols that would make the data look like ordinary URL with the path or use illegal symbols int the schema name. This may cause your QR reader to open the browser instead of your app as it will try to apply `http` schema. Symbols like `_` in can cause this.
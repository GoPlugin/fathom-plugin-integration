# deposit-widget

pre-requisites  
npm version 8.15.0  
node version 16.7.1  
do seup XDCPay Chrome Extension in your chrome  

Steps to use the widget    
Step 1:  
clone the git package to your local pc  
git clone https://github.com/GoPlugin/fathom-plugin-integration.git  

Step 2:  
navigate to "fathom-plugin-integration/client/" folder on cmd promt and run below command to install dependencies  
npm install  

Step 3:  
Start the widget on your local host with below command.  
npm start  

Step 4:  
Login to your XDCPaywallet.  

Step 5:  
By default APOTHEM PLI address "0x33f4212b027e22af7e6ba21fc572843c0d701cd1" is connected to the wallet.

On your widget First Approve your Internal contract address with PLI amount.  
Then Deposit PLI lesser than or equal to approved amount of PLI with your Internal Contract Address.  

Step 5:  
Now you will be able to trigger getPriceInfo function from customer contract.  
Same functionality can be triggered by calling requestData function from Internal Contract.  

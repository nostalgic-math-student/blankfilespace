require("dotenv").config();

const lighthouse = require('@lighthouse-web3/sdk');

const uploadText = async() =>{
  const apiKey = process.env.API_KEY; 
  const response = await lighthouse.uploadText(
    "Si ves esto felicidades, estas en Lighthouse",
    apiKey
  );
  
  // Display response
  console.log(response);
  /*
  {
    data: {
      Name: 'Qmbz13iSeUU1y1z4JGcLNSBH1bFveWzpyTk1drZ6iKSVvd',
      Hash: 'Qmbz13iSeUU1y1z4JGcLNSBH1bFveWzpyTk1drZ6iKSVvd',
      Size: '24'
    }
  }
  */
  console.log("Visit at: https://gateway.lighthouse.storage/ipfs/" + response.Hash);
}

uploadText()
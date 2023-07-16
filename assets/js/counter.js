var apiUrl = "https://0qrguua9jg.execute-api.eu-west-2.amazonaws.com/Prod/put";
fetch(apiUrl)
.then(() => fetch("https://0qrguua9jg.execute-api.eu-west-2.amazonaws.com/Prod/get"))
.then(response => response.json())
.then(data =>{
    document.getElementById('hits').innerHTML = data
console.log(data)});
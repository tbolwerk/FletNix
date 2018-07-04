function searchInfo() {
    var key = document.getElementById('search').value;
var request;
    if (window.XMLHttpRequest) {
        request = new XMLHttpRequest();
    } else {
        // code for IE6, IE5
        request = new ActiveXObject("Microsoft.XMLHTTP");
    }

    request.open('GET','livesearch?key='+key,true);
    request.send(null);

    var response = request.responseText;
    if(response != null) {

        document.getElementById("livesearch").innerHTML = "Response= " +response;
    }else{
        document.getElementById("livesearch").innerHTML = "No results";
    }

}

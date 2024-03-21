const container =null;
window.addEventListener("DOMContentLoaded", (event) => {
    const container = document.getElementsByClassName('main-container')[0];
    console.log(container);
    console.log("DOM fully loaded and parsed");
});


// Assuming you have sidebar items with IDs like "sidebar-item-1", "sidebar-item-2", etc.
const sidebarItems = document.querySelectorAll('.links');

sidebarItems.forEach((item) => {
  item.addEventListener('click', (event) => {
  event.preventDefault();
  const text = item.textContent; // Extract the item ID from the element ID
  console.log(text);
})
});

//$(document).ready(function(){
//    $("#loadFormButton").click(function(){
//        $.get("Registration.jsp", function(data, status){
//            $("#mainSection").html(data);
//        });
//    });
//});

$(document).ready(function(){
    $("#bookRegistrationButton").click(function(){
        $.get("./AddBook.jsp", function(data, status){
            $("#main-container").html(data);
        });
    });
});
//<%@include file="./AddBook.jsp"%>



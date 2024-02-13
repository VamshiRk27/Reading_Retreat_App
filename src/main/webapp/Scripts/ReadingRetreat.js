const searchButton=document.getElementById("search-button");

searchButton.addEventListener("click",()=>{

});


.button-links button > span{
    opacity: 0;
    max-width: 0;
    transition: all 0.5s linear;
    display: inline-block;
    overflow: hidden;
    padding-left: 0;
    margin-left: 5px;
}
.button-links button:hover  span{
    opacity: 1;
        padding-left: 5px;
        max-width: 100px;  /* adjust this value as per your requirement */
}

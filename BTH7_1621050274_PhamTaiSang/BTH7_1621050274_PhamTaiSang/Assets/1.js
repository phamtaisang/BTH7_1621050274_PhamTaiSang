document.addEventListener("DOMContentLoaded", function () {
    const btnClick = document.querySelectorAll(".btnClick")
    const showDoan = document.getElementById("show_DoAn")
   
    for (let i = 0; i < btnClick.length; i++) {
        btnClick[i].addEventListener('click', function () {
            showDoan.classList.toggle("show")
        })
    }

}, false);
document.addEventListener("DOMContentLoaded", function () {
    const btnClick = document.querySelectorAll(".btnClick1")
    const showDoan = document.getElementById("show_DoAn_8")
    for (let i = 0; i < btnClick.length; i++) {
        btnClick[i].addEventListener('click', function () {
            showDoan.classList.toggle("show")
        })
    }
   
}, false);
document.addEventListener("DOMContentLoaded", function () {
    const btnClick = document.querySelectorAll(".btnClick2")
    const showDoan = document.getElementById("show_DoAn_9")
    for (let i = 0; i < btnClick.length; i++) {
        btnClick[i].addEventListener('click', function () {
            showDoan.classList.toggle("show")
        })
    }

}, false);
document.addEventListener("DOMContentLoaded", function () {
    const btnClick = document.querySelectorAll(".btnClick3")
    const showDoan = document.getElementById("show_DoAn_10")
    for (let i = 0; i < btnClick.length; i++) {
        btnClick[i].addEventListener('click', function () {
            showDoan.classList.toggle("show")
        })
    }
    
}, false);

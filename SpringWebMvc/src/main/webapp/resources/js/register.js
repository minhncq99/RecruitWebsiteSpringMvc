var userElement = document.getElementById("user");
var managerElement = document.getElementById("manager");
var btnUser = document.querySelector("#register-block div:first-child a:first-child");
var btnManager = document.querySelector("#register-block div:first-child a:last-child");

if (userElement !== null) {
    btnUser.classList.add('active');
    btnManager.classList.remove('active');
} else if (managerElement !== null) {
    btnManager.classList.add('active');
    btnUser.classList.remove('active');
}


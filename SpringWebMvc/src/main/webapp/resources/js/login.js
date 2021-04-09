var userElement = document.getElementById("user");
var managerElement = document.getElementById("manager");
var btnUser = document.querySelector("#login-block div:first-child p:first-child");
var btnManager = document.querySelector("#login-block div:first-child p:last-child");

btnUser.addEventListener('click', () => {
    btnUser.classList.add('active');
    btnManager.classList.remove('active');
    managerElement.hidden = true;
    userElement.hidden = false;
});

btnManager.addEventListener('click', () => {
    btnManager.classList.add('active');
    btnUser.classList.remove('active');
    managerElement.hidden = false;
    userElement.hidden = true;
});

managerElement.hidden = true;   


window.onscroll = function() {
    sticky_onscroll();
};

// Get header-sticky
var header = document.getElementById("header-sticky");
var sticky = header.offsetHeight;  

function sticky_onscroll() {
    console.log(window.pageYOffset, sticky);
    if (window.pageYOffset >= sticky) {
        console.log("add");
        header.classList.add("sticky");
    } else {
        console.log("remove");
        header.classList.remove("sticky");
    }
}
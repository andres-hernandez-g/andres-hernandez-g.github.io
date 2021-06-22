var li_elements = document.querySelectorAll(".wrapper_left ul li");
var item_elements = document.querySelectorAll(".item");
for (i = 1; i <= 11; i++) {
    // console.log(i);
  }
for (var i = 0; i < li_elements.length; i++) {
  li_elements[i].addEventListener("click", function() {
    li_elements.forEach(function(li) {
      li.classList.remove("active");
    });
    this.classList.add("active");
    var li_value = this.getAttribute("data-li");
    item_elements.forEach(function(item) {
      item.style.display = "none";
    });
    if (li_value == '_1') {
      document.querySelector("." + li_value).style.display = "block";
    } else if (li_value == "_2") {
      document.querySelector("." + li_value).style.display = "block";
    } else if (li_value == "_3") {
      document.querySelector("." + li_value).style.display = "block";
    } else if (li_value == "_4") {
      document.querySelector("." + li_value).style.display = "block";
    } else if (li_value == "_5") {
      document.querySelector("." + li_value).style.display = "block";
    } else if (li_value == "_6") {
      document.querySelector("." + li_value).style.display = "block";
    } else if (li_value == "_7") {
      document.querySelector("." + li_value).style.display = "block";
    } else if (li_value == "_8") {
      document.querySelector("." + li_value).style.display = "block";
    } else if (li_value == "_9") {
      document.querySelector("." + li_value).style.display = "block";
    } else if (li_value == "_10") {
      document.querySelector("." + li_value).style.display = "block";
    } else if (li_value == "_11") {
      document.querySelector("." + li_value).style.display = "block";
    }
    
  });
}

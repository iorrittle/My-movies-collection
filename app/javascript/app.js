function pullDown() {
  const pullDownButton = document.getElementById("lists")
  const pullDownParents = document.getElementById("pull-down")
  const pullDownChild = document.querySelectorAll(".pull-down-list")
  const currentList = document.getElementById("current-list")

  pullDownButton.addEventListener('mouseover', function(){
    this.setAttribute("style", "background-color:#a5d1ec;")
  })

  pullDownButton.addEventListener('mouseout', function(){
    this.removeAttribute("style", "background-color:black;")
  })

  pullDownButton.addEventListener('click', function() {
    if (pullDownParents.getAttribute("style") == "display:block;") {
      
      pullDownParents.removeAttribute("style", "display:block;")
    } else {
      
      pullDownParents.setAttribute("style", "display:block;")
    }
  })
  pullDownChild.forEach(function(list) {
    list.addEventListener('click', function() {
      const value = list.innerHTML
      currentList.innerHTML = value
    })
  })
}

window.addEventListener('load', pullDown)
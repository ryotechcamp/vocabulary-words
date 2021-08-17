function clickButton(){

// !が赤になる
  const clickChangeButton = document.querySelectorAll("#exclamation")
  for (let i = 0; i < clickChangeButton.length; i++){
    clickChangeButton[i].addEventListener('click', () => {
      if (clickChangeButton[i].getAttribute("style") == "color:red"){
        clickChangeButton[i].removeAttribute("style", "color:red;")
      } else {
        clickChangeButton[i].setAttribute("style", "color:red;")
      }
    })
  }
}
window.addEventListener('load', clickButton)
function clickButton(){

  const clickChangeButton = document.querySelectorAll("#eye-btn")
  const clickChangeSentence  = document.querySelectorAll('#instruction')

  for(let i = 0; i < clickChangeButton.length; i++)
  for(let i = 0; i < clickChangeSentence.length; i++){
    clickChangeButton[i].addEventListener('click', () => {
        if (clickChangeSentence[i].getAttribute("style") == "display:block;") {
          clickChangeSentence[i].removeAttribute("style", "display:block;")
        } else {
          clickChangeSentence[i].setAttribute("style", "display:block;")
        }
    })
  }
}
window.addEventListener('load', clickButton)
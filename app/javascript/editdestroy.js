function clickPage(){

  const clickChangePage = document.querySelectorAll("#page")
  const clickChangeAction  = document.querySelectorAll('#operate')

  for(let i = 0; i < clickChangePage.length; i++)
  for(let i = 0; i < clickChangeAction.length; i++){
    clickChangePage[i].addEventListener('click', () => {
        if (clickChangeAction[i].getAttribute("style") == "display:block;") {
          clickChangeAction[i].removeAttribute("style", "display:block;")
        } else {
          clickChangeAction[i].setAttribute("style", "display:block;")
        }
    })
  }
}
window.addEventListener('load', clickPage)
function message (){
  const submit = document.getElementById("submit");
  submit.addEventListener("click", (e) => {
    e.preventDefault();
    const form = document.getElementById("form");
    const formData = new FormData(form);
    const XHR = new XMLHttpRequest();
    XHR.open("POST", "/rooms/:room_id/messages", true);
    XHR.responseType = "json";
    XHR.send(formData);
    XHR.onload = () => {
      console.log(XHR.response);
    };
  });
};

window.addEventListener('load', message);
document.addEventListener("click", function(e){
  if(e.target.matches(".heart")) {
    e.preventDefault();
    e.target.textContent = e.target.textContent === "â™¡" ? "â™¥" : "â™¡";
  }
});

function goToPage(){
  window.location.href = "pagina-prueba.html";
}

console.log("Script cargado");

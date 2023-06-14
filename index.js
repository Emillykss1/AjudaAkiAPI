const $nomeinput=document.querySelector("#nomepessoa")
const $emailinput=document.querySelector("#doces")
const $senhainput=document.querySelector("#tamanho")

$submitinput.addEventListener("click", function(e){
    e.preventDefault()
    const dados={
        nome:$nomeinput.value,
        email:$emailinput.value,
        senha:$senhainput.value



    }
   axios.post("http://localhost:3000/create", {
    nome: dados.nome,
    email: dados.email,
    senha: dados.senha

   }).then((usuario)=>{
    console.log(usuario.status)
   })
})

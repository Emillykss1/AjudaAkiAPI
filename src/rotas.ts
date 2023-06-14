import { Router } from "express";
import { prisma } from "./prisma";

export const rotas = Router()


rotas.get('/getcadastro', async (req, res) => {
   const cadastro = await prisma.cadastro.findMany()
   res.json(cadastro)

})

rotas.post('/createcadastro', async (req, res) => {
 const  {nome, telefone, email, formacao} = req.body
 const PostCadastro = await prisma.cadastro.create ({
    data: {
        nome,
        telefone,
        email,
        formacao
    }
 })
 res.json(PostCadastro)
})

rotas.delete('/deletecadastro/:id', async (req, res) => {

    const { id } = req.params
    const deleteCadastro = await prisma.cadastro.delete({
        where: {
            id: id
        }
 }) 
 res.json(deleteCadastro)
})

rotas.put('/editcadastro/:id', async (req, res) => { 
  const { id } = req.params
  const { formacao } = req.body
  const editCadastro = await prisma.cadastro.update({
    where: {
        id
    }, 
    data:  {
        formacao,
    }
})
res.json(editCadastro)
})
 

 
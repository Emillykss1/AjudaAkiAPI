/*
  Warnings:

  - You are about to drop the `user` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropTable
PRAGMA foreign_keys=off;
DROP TABLE "user";
PRAGMA foreign_keys=on;

-- CreateTable
CREATE TABLE "cadastroprestadores" (
    "id" TEXT NOT NULL PRIMARY KEY,
    "nome" TEXT NOT NULL,
    "cpf" TEXT NOT NULL,
    "profissao" TEXT NOT NULL,
    "celular" INTEGER NOT NULL,
    "endereco" TEXT NOT NULL,
    "experiencias" TEXT NOT NULL,
    "email" TEXT NOT NULL,
    "senha" TEXT NOT NULL,
    "confirmarsenha" TEXT NOT NULL,
    "genero" TEXT NOT NULL
);

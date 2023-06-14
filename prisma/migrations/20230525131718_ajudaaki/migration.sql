-- CreateTable
CREATE TABLE "cadastrocliente" (
    "id" TEXT NOT NULL PRIMARY KEY,
    "nome" TEXT NOT NULL,
    "celular" INTEGER NOT NULL,
    "endereco" TEXT NOT NULL,
    "email" TEXT NOT NULL,
    "senha" TEXT NOT NULL,
    "confirmarsenha" TEXT NOT NULL,
    "genero" TEXT NOT NULL
);

-- CreateTable
CREATE TABLE "login" (
    "id" TEXT NOT NULL PRIMARY KEY,
    "email" TEXT NOT NULL,
    "senha" TEXT NOT NULL
);

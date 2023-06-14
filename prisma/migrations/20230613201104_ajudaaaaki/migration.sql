/*
  Warnings:

  - You are about to drop the `cadastrocliente` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `cadastroprestadores` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropTable
PRAGMA foreign_keys=off;
DROP TABLE "cadastrocliente";
PRAGMA foreign_keys=on;

-- DropTable
PRAGMA foreign_keys=off;
DROP TABLE "cadastroprestadores";
PRAGMA foreign_keys=on;

-- CreateTable
CREATE TABLE "cadastro" (
    "id" TEXT NOT NULL PRIMARY KEY,
    "nome" TEXT NOT NULL,
    "email" TEXT NOT NULL,
    "senha" TEXT NOT NULL
);

/*
  Warnings:

  - You are about to drop the `login` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the column `senha` on the `cadastro` table. All the data in the column will be lost.
  - Added the required column `formacao` to the `cadastro` table without a default value. This is not possible if the table is not empty.
  - Added the required column `telefone` to the `cadastro` table without a default value. This is not possible if the table is not empty.

*/
-- DropTable
PRAGMA foreign_keys=off;
DROP TABLE "login";
PRAGMA foreign_keys=on;

-- RedefineTables
PRAGMA foreign_keys=OFF;
CREATE TABLE "new_cadastro" (
    "id" TEXT NOT NULL PRIMARY KEY,
    "nome" TEXT NOT NULL,
    "telefone" TEXT NOT NULL,
    "email" TEXT NOT NULL,
    "formacao" TEXT NOT NULL
);
INSERT INTO "new_cadastro" ("email", "id", "nome") SELECT "email", "id", "nome" FROM "cadastro";
DROP TABLE "cadastro";
ALTER TABLE "new_cadastro" RENAME TO "cadastro";
PRAGMA foreign_key_check;
PRAGMA foreign_keys=ON;

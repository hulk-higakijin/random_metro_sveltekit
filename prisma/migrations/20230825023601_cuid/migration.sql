/*
  Warnings:

  - The primary key for the `Company` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The primary key for the `Line` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The primary key for the `Station` table will be changed. If it partially fails, the table could be left without primary key constraint.

*/
-- DropForeignKey
ALTER TABLE "Line" DROP CONSTRAINT "Line_companyId_fkey";

-- DropForeignKey
ALTER TABLE "_LineToStation" DROP CONSTRAINT "_LineToStation_A_fkey";

-- DropForeignKey
ALTER TABLE "_LineToStation" DROP CONSTRAINT "_LineToStation_B_fkey";

-- AlterTable
ALTER TABLE "Company" DROP CONSTRAINT "Company_pkey",
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ADD CONSTRAINT "Company_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "Company_id_seq";

-- AlterTable
ALTER TABLE "Line" DROP CONSTRAINT "Line_pkey",
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ALTER COLUMN "companyId" SET DATA TYPE TEXT,
ADD CONSTRAINT "Line_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "Line_id_seq";

-- AlterTable
ALTER TABLE "Station" DROP CONSTRAINT "Station_pkey",
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ADD CONSTRAINT "Station_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "Station_id_seq";

-- AlterTable
ALTER TABLE "_LineToStation" ALTER COLUMN "A" SET DATA TYPE TEXT,
ALTER COLUMN "B" SET DATA TYPE TEXT;

-- AddForeignKey
ALTER TABLE "Line" ADD CONSTRAINT "Line_companyId_fkey" FOREIGN KEY ("companyId") REFERENCES "Company"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_LineToStation" ADD CONSTRAINT "_LineToStation_A_fkey" FOREIGN KEY ("A") REFERENCES "Line"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_LineToStation" ADD CONSTRAINT "_LineToStation_B_fkey" FOREIGN KEY ("B") REFERENCES "Station"("id") ON DELETE CASCADE ON UPDATE CASCADE;

/*
  Warnings:

  - You are about to drop the `_station_lines` table. If the table is not empty, all the data it contains will be lost.
  - A unique constraint covering the columns `[name]` on the table `Company` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[name]` on the table `Line` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[name]` on the table `Station` will be added. If there are existing duplicate values, this will fail.

*/
-- DropForeignKey
ALTER TABLE "_station_lines" DROP CONSTRAINT "_station_lines_A_fkey";

-- DropForeignKey
ALTER TABLE "_station_lines" DROP CONSTRAINT "_station_lines_B_fkey";

-- DropTable
DROP TABLE "_station_lines";

-- CreateTable
CREATE TABLE "_LineToStation" (
    "A" INTEGER NOT NULL,
    "B" INTEGER NOT NULL
);

-- CreateIndex
CREATE UNIQUE INDEX "_LineToStation_AB_unique" ON "_LineToStation"("A", "B");

-- CreateIndex
CREATE INDEX "_LineToStation_B_index" ON "_LineToStation"("B");

-- CreateIndex
CREATE UNIQUE INDEX "Company_name_key" ON "Company"("name");

-- CreateIndex
CREATE UNIQUE INDEX "Line_name_key" ON "Line"("name");

-- CreateIndex
CREATE UNIQUE INDEX "Station_name_key" ON "Station"("name");

-- AddForeignKey
ALTER TABLE "_LineToStation" ADD CONSTRAINT "_LineToStation_A_fkey" FOREIGN KEY ("A") REFERENCES "Line"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_LineToStation" ADD CONSTRAINT "_LineToStation_B_fkey" FOREIGN KEY ("B") REFERENCES "Station"("id") ON DELETE CASCADE ON UPDATE CASCADE;

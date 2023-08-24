-- CreateTable
CREATE TABLE "Station" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,

    CONSTRAINT "Station_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "_station_lines" (
    "A" INTEGER NOT NULL,
    "B" INTEGER NOT NULL
);

-- CreateIndex
CREATE UNIQUE INDEX "_station_lines_AB_unique" ON "_station_lines"("A", "B");

-- CreateIndex
CREATE INDEX "_station_lines_B_index" ON "_station_lines"("B");

-- AddForeignKey
ALTER TABLE "_station_lines" ADD CONSTRAINT "_station_lines_A_fkey" FOREIGN KEY ("A") REFERENCES "Line"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_station_lines" ADD CONSTRAINT "_station_lines_B_fkey" FOREIGN KEY ("B") REFERENCES "Station"("id") ON DELETE CASCADE ON UPDATE CASCADE;

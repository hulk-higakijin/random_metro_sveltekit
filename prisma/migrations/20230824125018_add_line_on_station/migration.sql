-- CreateTable
CREATE TABLE "Station" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,

    CONSTRAINT "Station_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "LineOnStation" (
    "lineId" INTEGER NOT NULL,
    "stationId" INTEGER NOT NULL,

    CONSTRAINT "LineOnStation_pkey" PRIMARY KEY ("lineId","stationId")
);

-- AddForeignKey
ALTER TABLE "LineOnStation" ADD CONSTRAINT "LineOnStation_lineId_fkey" FOREIGN KEY ("lineId") REFERENCES "Line"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "LineOnStation" ADD CONSTRAINT "LineOnStation_stationId_fkey" FOREIGN KEY ("stationId") REFERENCES "Station"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

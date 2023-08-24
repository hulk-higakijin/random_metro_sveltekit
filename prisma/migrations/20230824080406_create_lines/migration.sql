-- CreateTable
CREATE TABLE "Line" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "companyId" INTEGER NOT NULL,

    CONSTRAINT "Line_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "Line" ADD CONSTRAINT "Line_companyId_fkey" FOREIGN KEY ("companyId") REFERENCES "Company"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

import { PrismaClient } from "@prisma/client";
const prisma = new PrismaClient();

const main = async () => {
	const metro = await prisma.company.create({
		data: {
			name: '東京メトロ'
		}
	});

	const lines = await prisma.line.createMany({
		data: [
			{ name: '銀座線', companyId: metro.id },
			{ name: '丸ノ内線', companyId: metro.id },
      { name: '日比谷線', companyId: metro.id },
      { name: '東西線', companyId: metro.id },
      { name: '千代田線', companyId: metro.id },
      { name: '有楽町線', companyId: metro.id },
      { name: '半蔵門線', companyId: metro.id },
      { name: '南北線', companyId: metro.id },
      { name: '副都心線', companyId: metro.id },
		]
	});
};

main()
  .catch(e => {
    console.error(e)
    process.exit(1)
  })
  .finally(async () => {
    await prisma.$disconnect()
  })

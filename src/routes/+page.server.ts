import prisma from '$lib/prisma';

export const load = async () => {
  const stations = await prisma.station.findMany();

  return { stations };
};

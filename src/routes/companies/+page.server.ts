import prisma from '$lib/prisma';

export const load = () => {
  const companies = prisma.company.findMany();

	return { companies };
}

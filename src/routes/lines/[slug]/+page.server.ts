import prisma from '$lib/prisma';

export const load = async ({ params: { slug } }) => {
	const line = await prisma.line.findUnique({
		where: { id: slug },
		include: { stations: true }
	});

	if (!line) throw error(404);

	return { line };
};

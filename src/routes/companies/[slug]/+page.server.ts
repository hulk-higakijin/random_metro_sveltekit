import prisma from '$lib/prisma';
import { error } from '@sveltejs/kit';

export const load = async ({ params: { slug } }) => {
	const company = await prisma.company.findUnique({
		where: { id: slug },
		include: { lines: true }
	});

	if (!company) throw error(404);

	return {
		company
	};
};

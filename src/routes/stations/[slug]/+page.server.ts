import prisma from '$lib/prisma';
import { error } from '@sveltejs/kit';

export const load = async ({ params: { slug } }) => {
	const station = await prisma.station.findUnique({
		where: { id: slug },
		include: { lines: true }
	});

	if (!station) throw error(404);

	return {
		station
	};
};

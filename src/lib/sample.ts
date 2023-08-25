const sample = (array: any[]) => {
	const index = Math.floor(Math.random() * array.length);
	return array[index];
};

export default sample;

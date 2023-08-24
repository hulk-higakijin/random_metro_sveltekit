<script>
	export let data;
	const station = data.station;
</script>

<h1>{station.name}</h1>

<ul>
	{#each station.lines as line}
		<li>
			{line.name}
		</li>
	{/each}
</ul>

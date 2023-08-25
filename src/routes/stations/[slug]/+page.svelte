<script lang="ts">
	export let data;
	const station = data.station;
	const lines = station.lines;
</script>

<h1>{station.name}</h1>

<ul>
	{#each lines as line}
		<li>
			<a href="/lines/{line.id}">
				{line.name}
			</a>
		</li>
	{/each}
</ul>

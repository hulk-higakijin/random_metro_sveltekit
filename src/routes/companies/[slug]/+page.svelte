<script>
	export let data;

	const company = data.company;
	const lines = company.lines;
</script>

<div>
	<p>{company.name}</p>
	<ul>
		{#each lines as line}
			<li>
				{line.name}
			</li>
		{/each}
	</ul>
</div>

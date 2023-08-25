<script lang="ts">
	export let data;

	const company = data.company;
	const lines = company.lines;
</script>

<div>
	<p>{company.name}</p>
	<ul>
		{#each lines as line}
			<li>
				<a href="/lines/{line.id}">
					{line.name}
				</a>
			</li>
		{/each}
	</ul>
</div>

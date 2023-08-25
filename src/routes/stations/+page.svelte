<script lang="ts">
	export let data;

	const { stations } = data
</script>

<div>
	<p>Stations</p>
	<ul>
		{#each stations as station}
			<li>
				<a href="/stations/{station.id}">
					{station.name}
				</a>
			</li>
		{/each}
	</ul>
</div>

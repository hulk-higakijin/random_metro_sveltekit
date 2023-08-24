<script lang="ts">
	export let data;
	export let companies = data.companies;
</script>

<div>
	<h1>Companies</h1>
	<ul>
		{#each companies as company}
			<li>
				<a href="/companies/{company.id}">{company.name}</a>
			</li>
		{/each}
	</ul>
</div>

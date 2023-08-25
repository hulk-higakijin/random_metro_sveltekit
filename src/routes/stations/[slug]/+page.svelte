<script lang="ts">
	export let data;

	const { station } = data;
	const line_names = station.lines.map((line) => line.name);
</script>

<h1>
	{station.name}（{line_names.join(', ')}）
</h1>

<script lang="ts">
	import sample from '$lib/sample';
	export let data;

	const { stations } = data;
</script>

<div>
	<h1>ランラムメトロへようこそ</h1>
	<a href="/stations/{sample(stations).id}">移動開始</a>
</div>

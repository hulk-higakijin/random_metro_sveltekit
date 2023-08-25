<script lang="ts">
	import sample from '$lib/sample';
	import { Button } from 'flowbite-svelte';

	export let data;

	const { stations } = data;
</script>

<div>
	<Button href="/stations/{sample(stations).id}">移動開始</Button>
</div>

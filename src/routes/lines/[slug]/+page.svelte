<script>
  export let data;

  const line = data.line;
  const stations = line.stations;
</script>

<div>
  <p>{line.name}</p>
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

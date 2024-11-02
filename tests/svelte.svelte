<script>
    import Child from './Child.svelte';

    let count = 0;

    function handleClick() {
        count += 1;
    }

    $: doubled = count * 2;

    $: console.log(`count is ${count}`);
    $: console.log(`doubled is ${doubled}`);
</script>

<style>
    p {
        color: purple;
        font-size: 2em;
    }
</style>

<main>
    <h1>Hello Svelte!</h1>
    <p>Count: {count}</p>
    <p>Doubled: {doubled}</p>

    {#if count > 5}
        <p>{count} is greater than 5</p>
    {:else}
        <p>{count} is less than or equal to 5</p>
    {/if}

    {#each [1, 2, 3] as number}
        <p>{number}</p>
    {/each}

    <button on:click={handleClick}>
        Click me
    </button>

    <Child name="child component" />
</main>
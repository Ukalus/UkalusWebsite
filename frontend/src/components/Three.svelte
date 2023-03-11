<script lang="ts">
    import { onMount } from "svelte";
    import * as THREE from 'three';
    export let threeScript: string;

    let el

    eval(threeScript)

onMount(() => {
    createScene(el)
})
</script>

<canvas bind:this={el}></canvas>
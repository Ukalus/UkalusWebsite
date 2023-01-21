<script lang="ts">
    import Canvas from "../../../components/Canvas.svelte";
    export let data: any;
</script>

<h1 class="text-7xl py-3 font-semibold">{data.articleTitle}</h1>
<h2 class="text-xl pb-3">{data.articleDescription}</h2>
<hr class="py-3">


<div class="flex">
   <Canvas></Canvas>
</div>

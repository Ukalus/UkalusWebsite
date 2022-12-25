<script>

    // array of input elements that can be used 
    export let inputElements = [];
    import { onMount } from 'svelte';
    onMount(async () => {
        var canvas = document.getElementById("webGlCanvas");
        var ctx = canvas.getContext("2d");
        ctx.fillStyle = "#FF0000";
        ctx.fillRect(200, 200, 200, 200);
	});

</script>

<canvas class="bg-teal-400 rounded-3xl" id="webGlCanvas" width="600" height="600">
    
</canvas>

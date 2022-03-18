<script>
    const projects = [
        {
            name: "IU-Data Full Portal",
            path: "/portfolio",
            img: "/projects/full_portal.png"
        },
        {
            name: "Rise Of The Sorceler",
            path: "https://github.com/m-becu/rise-of-the-sorceler",
            img: "/projects/rots.png",
            types: "long unzoomed",
        },
    ];
</script>
<main>
    <ul>
        {#each projects as project}
            <li class="{project.types}">
                <a href="{project.path}" target="_blank">
                    {#if project.img}
                        <img src="{project.img}" alt="{project.name}">
                    {/if}
                </a>
            </li>
        {/each}
    </ul>
</main>
<style>

    @media screen and (min-width: 750px) {
        li.unzoomed img {
            zoom: 75% !important;
        }
    }

    main {
        padding-bottom: 6.5em;
    }

    ul {
        padding: 1em;
        list-style-type: none;
        display: grid;
        grid-template-columns: repeat(3, 1fr);
        grid-auto-rows: calc(100vw / 3 - 1em);
        gap: 1em;
    }

    li {
        position: relative;
        width: 100%;
        height: 100%;
        border-radius: 8px;
        background-color: var(--gray-lighter);
    }

    li a {
        position: absolute;
        width: 100%;
        height: 100%;
    }

    li img {
        position: absolute;
        width: 100%;
        height: 100%;
        border-radius: 8px;
        object-fit: none;
        object-position: left top;
    }

    li.long {
        grid-column: span 2;
    }

    li.high {
        grid-row: span 2;
    }

    li.unzoomed img {
        zoom: 35%;
    }

</style>
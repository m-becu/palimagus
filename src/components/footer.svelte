<script>
    import { onMount } from 'svelte';
    import { page } from '$app/stores';

    let linkElements = [];

    let activeLink;
    let indicator;

    const links = [
        {
            id: 0,
            text: "Accueil",
            path: "/",
            img: "../../static/icons/ios-home.svg"
        },
        {
            id: 1,
            text: "Portfolio",
            path: "/portfolio",
            img: "../../static/icons/ios-keypad.svg"
        }
    ];

    let innerWidth;
    // If window is resized, move indicator
    $: if(innerWidth) move(activeLink);
    // If activated link is modified, move indicator
    $: if(activeLink) move(activeLink);

    function move(a) {
        let indicatorPos = "translateX(" + a.getBoundingClientRect().x + "px)"
        indicator.style.transform = indicatorPos;
        linkElements.forEach(e => {
            e.parentElement.classList.remove('active');
        });
        a.parentElement.classList.add('active');
    }

    onMount(async () => {
        const actualPage = $page.url.toString().split('/').at(-1);
        const linkID = links.filter((e) => e.path === '/' + actualPage )[0].id;
        activeLink = linkElements[linkID];
        
    });

</script>
<svelte:window bind:innerWidth={innerWidth} />
<footer>
    <nav>
        <ul>
            {#each links as link, i}
                <li>
                    <a bind:this={linkElements[i]} on:click={() => {
                        activeLink = linkElements[i];
                    }} href="{link.path}" alt="">
                        <img src="{link.img}" alt="">
                        <span class="text">
                            {link.text}
                        </span>
                    </a>
                </li>
            {/each}
            <div bind:this={indicator} class="indicator"></div>
        </ul>
    </nav>
</footer>
<style>

    footer {
        width: 100vw;
        height: 4.4em;
        position: fixed;
        bottom: 0;
        display: flex;
        flex-direction: column;
        box-shadow: 0px -24px 18px #ffffff;
    }

    nav {
        position: relative;
        width: 100%;
        height: 100%;
        background-color: var(--gray-lighter);
        display: flex;
        justify-content: center;
        align-items: center;
    }

    nav ul {
        display: flex;
        position: relative;
        justify-content: space-evenly;
        list-style: none;
        width: 100%;
    }

    nav ul li {
        position: relative;
        width: 4.4em;
        height: 4.4em;
        z-index: 1;
    }

    nav ul li a {
        display: flex;
        justify-content: center;
        align-items: center;
        flex-direction: column;
        width: 100%;
        height: 100%;
        text-align: center;
        font-weight: 500;
    }

    nav ul li a img {
        width: 1.3em;
        height: 1.3em;
        position: absolute;
        display: block;
        line-height: 4.4em;
        font-size: 1.5em;
        text-align: center;
        transition: .3s;
        filter: invert(10%) sepia(54%) saturate(3695%) hue-rotate(230deg) brightness(107%) contrast(114%);
    }

    nav ul li a .text {
        position: absolute;
        color: var(--main-darker);
        font-weight: 400;
        font-size: .75em;
        letter-spacing: .05em;
        transition: .3s;
        opacity: 0;
        transform: translateY(20px);
    }

    nav ul li:hover a img {
        filter: invert(27%) sepia(86%) saturate(5011%) hue-rotate(236deg) brightness(91%) contrast(96%);
    }

    nav ul li.active a img {
        transform: translateY(-35px);
    }

    nav ul li.active a .text {
        opacity: 1;
        transform: translateY(1.5em);
    }

    .indicator {
        position: absolute;
        top: -50%;
        left: 0;
        width: 4.4em;
        height: 4.4em;
        background-color: var(--main);
        border-radius: 50%;
        border: 6px solid white;
        transition: .3s;
    }

    .indicator::before {
        content: '';
        position: absolute;
        top: 50%;
        left: -22px;
        width: 20px;
        height: 20px;
        background: transparent;
        border-top-right-radius: 20px;
        box-shadow: 1px -10px 0 0 white;
    }

    .indicator::after {
        content: '';
        position: absolute;
        top: 50%;
        right: -22px;
        width: 20px;
        height: 20px;
        background: transparent;
        border-top-left-radius: 20px;
        box-shadow: -1px -10px 0 0 white;
    }

</style>
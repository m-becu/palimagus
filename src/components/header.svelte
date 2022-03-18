<header>
    <span class="texts">
        <h1>Palimagus</h1>
        <h2>L'archimage du web</h2>
    </span>
    <span class="logo">
        <span class="bg"></span>
        <img src="final_blue.png" alt="logo du site">
    </span>
</header>
<style>

    @media screen and (min-width: 250px) {
        header {
            display: flex;
            background-color: var(--gray-lighter);
            flex-direction: row-reverse;
            width: 100vw;
            padding: 1em;
            height: 20vh;
        }

        span:not(.bg) {
            width: 100%;
            height: 100%;
        }

        img {
            width: auto;
            height: 100%;
            max-height: 350px;
            z-index: 99;
        }

        h1 {
            text-transform: uppercase;
            font-family: 'Josefin Sans', sans-serif;
            font-weight: 300;
            margin-left: 8px;
            color: var(--main-darker);
        }

        h2 {
            text-transform: uppercase;
            font-size: 110%;
            color: var(--main);
        }

        span.texts {
            display: flex;
            flex-flow: column nowrap;
            flex-grow: 1;
            justify-content: center;
            align-items: center;
        }

        span.logo {
            position: relative;
            display: flex;
            justify-content: center;
            width: fit-content;
        }

        span.bg {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            width: 80%;
            height: 80%;
            background-color: #bec7ff;
            border-radius: 50%;
            z-index: 1;
        }
    }

    @media screen and (min-width: 250px) and (max-width: 300px) {   
        span.logo {
            display: none !important;
        }
    }

    @media screen and (min-width: 750px) and (max-width: 1000px) {
        span.texts {
            font-size: xx-large;
            flex-grow: 0;
        }
    }

    @media screen and (min-width: 1000px) {
        span.texts {
            font-size: x-large;
        }
    }

</style>
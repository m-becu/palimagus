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

    header {
        display: flex;
		justify-content: space-between;
		background-color: var(--gray-lighter);
		padding: 1.5em;
		width: 100%;
    }

    span.texts {
        display: flex;
		flex-grow: 1;
		flex-direction: column;
		justify-content: center;
		/* padding-left: .2em; */
    }

    span.texts h1 {
        text-transform: uppercase;
		font-family: 'Josefin Sans', sans-serif;
		font-weight: 300;
		font-size: 2.4em;
		/* Compensating a gap created by font so titles are aligned to the right */
		margin-left: -4px;
		color: var(--main-darker);
    }

    span.texts h2 {
        text-transform: uppercase;
		font-size: 1em;
		color: var(--main);
    }

    span.logo {
        position: relative;
		display: flex;
		justify-content: center;
		margin-left: 1.5em;
		width: 100%;
		height: 100%;
    }

    span.logo img {
        width: 120%;
        z-index: 99;
    }

    span.logo span {
        position: absolute;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
        width: 100%;
        height: 80%;
        background-color: #7c8dff;
        border-radius: 50%;
        z-index: 1;
    }

</style>
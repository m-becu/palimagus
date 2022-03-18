<svelte:head>
	<title>Welcome</title>
</svelte:head>
<main>
    <div class="side left-side">
        <p>
            Depuis mes dix ans, j'étudie les mystères de l'informatique et de la toile, seul ou à l'école, ce qui m'a permis d'obtenir un diplôme de chef de projet digital.
        </p>
        <p>
            Parfois indiscernable de la véritable magie, le numérique pose, de temps a autres, autant de problèmes qu'il n'en résout. Voilà pourquoi, aujourd'hui, j'utilise mes compétences pédagogiques et mon savoir-faire pour aider mes pairs à se réapproprier l'outil informatique.
        </p>
        <p>
            Je suis développeur full-stack, ce qui signifie que je suis également capable de conjurer n'importe quelle application dans la réalité comme un site Internet, un jeu vidéo ou une application mobile.
        </p>
        <p>
            Je n'utilise aucun sort ou incantation pour cela, mais je manipule les composants fondamentaux de la toile comme HTML5, CSS3 et Javascript.
        </p>
    </div>
    <div class="side right-side">
        <div>
            <legend>
                Je maîtrise également:
            </legend>
            <ul>
                <li>
                    les frameworks de développement comme React ou Svelte
                </li>
                <li>
                    l'outil de création de jeux Unity
                </li>
                <li>
                    les technologies de développement mobile comme Flutter
                </li>
                <li>
                    les outils de création de site comme Wordpress, Woocommerce, Joomla ou Wix
                </li>
                <li>
                    les technologies de bases de données comme Firebase, MongoDB ou MySQL
                </li>
            </ul>
        </div>
        <p>
            Finalement, en tant qu'archimage numérique, j'étudie toutes les branches de la magie informatique et ainsi j'ai acquis des connaissances dans tous les domaines suivants: Réseaux, télécoms, électronique, cryptographie, forensic, sécurité, hébergement, systèmes d'exploitation, gestion de projet, montage vidéo, systèmes embarqués, internet des objets, intelligence artificielle, blockchain...
        </p>
        <div class="dl-cv">
            <p>
                Télécharger mon CV :
            </p>
            <a on:click|preventDefault={() => {
                console.log("✨ Merci d'avoir téléchargé mon CV!");
                window.open('CV_hidden.pdf');
            }} href="/" target="_blank">
                Télécharger
            </a>
        </div>
    </div>
</main>
<style>

    /*************************************************************/

    @media screen and (min-width: 250px) {
        main {
            width: 100vw;
            padding-bottom: 6.5em; /* Navigation offset */
        }

        ul {
            list-style-type: '-  ';
            padding-left: 1em;
            padding-bottom: 1em;
        }

        p {
            text-align: justify;
        }

        div.dl-cv {
            display: flex;
            justify-content: space-around;
            align-items: center;
            padding-bottom: 1em;
        }

        div.dl-cv p {
            padding: 0;
        }

        div.dl-cv a {
            text-decoration: none;
            color: white;
            padding: .4em;
            background-color: var(--main);
            border-radius: 8px;
            border-bottom: 3px solid var(--main-dark);
        }

        div.dl-cv a:hover {
            background-color: var(--main-light);
            border-color: var(--main);
        }

        div.dl-cv a:active {
            border: none;
            margin-top: 3px;
        } 
    }

    @media screen and (min-width: 250px) and (max-width: 300px) {
        main {
            padding-top: 1em;
        }

        p {
            /* padding: 0 2em 1em; */
            padding-bottom: 1em;
        }

        div.side {
            padding: 0 1em 1em;
        }

        div.dl-cv p {
            padding-right: 3em;
        }
    }

    @media screen and (min-width: 300px) and (max-width: 600px) {
        main {
            padding-top: 1em;
        }

        p {
            /* padding: 0 2em 1em; */
            padding-bottom: 1em;
        }

        div.side {
            padding: 0 1em 1em;
        }
    }

    @media screen and (min-width: 600px) and (max-width: 750px) {
        main {
            display: flex;
            flex-direction: row;
            padding-top: 1em;
        }

        p {
            /* padding: 0 2em 1em; */
            padding-bottom: 1em;
        }

        div.side {
            padding-top: 0;
            padding-left: 1.5em;
            padding-bottom: 1em;
        }

        div.right-side {
            padding-right: 1.5em;
        }
    }

    @media screen and (min-width: 750px) and (max-width: 800px) {
        main {
            display: flex;
            flex-direction: row;
            padding-top: 1em;
            font-size: 1.2em;
        }

        p {
            /* padding: 0 2em 1em; */
            padding-bottom: 1em;
        }

        div.side {
            padding-top: 0;
            padding-left: 1.5em;
            padding-bottom: 1em;
        }

        div.right-side {
            padding-right: 1.5em;
        }
    }

    @media screen and (min-width: 800px) and (max-width: 900px) {
        main {
            display: flex;
            flex-direction: row;
            padding-top: 1em;
            font-size: 1.4em;
        }

        p {
            /* padding: 0 2em 1em; */
            padding-bottom: 1em;
        }

        div.side {
            padding-top: 0;
            padding-left: 1.5em;
            padding-bottom: 1em;
        }

        div.right-side {
            padding-right: 1.5em;
        }
    }

    @media screen and (min-width: 900px) {
        main {
            display: flex;
            flex-direction: row;
            padding-top: 1em;
            font-size: 1.4em;
        }

        p {
            /* padding: 0 2em 1em; */
            padding-bottom: 1em;
        }

        div.side {
            padding-top: 0;
            padding-left: 1.5em;
            padding-bottom: 1em;
        }

        div.right-side {
            padding-right: 1.5em;
        }
    }

    /*************************************************************/

</style>
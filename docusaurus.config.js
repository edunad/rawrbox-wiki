// @ts-check

'use strict';

const codeTheme = require('./src/utils/prismDark.js');
//const remarkGitContributors = require('remark-git-contributors');
//const remarkGithub = require('remark-github');

/** @type {import('@docusaurus/types').Config} */
const config = {
    title: 'RawrBox',
    tagline: 'Dev Wiki',
    favicon: '/img/game_icon.ico',

    url: 'https://box.rawr.dev/',
    baseUrl: '/',

    organizationName: 'edunad',
    projectName: 'rawrbox',

    onBrokenLinks: 'throw',
    onBrokenMarkdownLinks: 'throw',

    i18n: {
        defaultLocale: 'en',
        locales: ['en'],
    },

    plugins: ['docusaurus-plugin-sass'],
    themes: ['@easyops-cn/docusaurus-search-local'],
    presets: [
        [
            'classic',
            /** @type {import('@docusaurus/preset-classic').Options} */
            ({
                docs: {
                    sidebarPath: require.resolve('./sidebars.js'),
                    editUrl: 'https://github.com/rawrbox/tree/wiki',
                    showLastUpdateAuthor: true,
                    showLastUpdateTime: true,
                    admonitions: {
                        keywords: ['info', 'error', 'warning'],
                    },
                    remarkPlugins: [
                        //remarkGitContributors
                    ],
                },
                theme: { customCss: [require.resolve('./src/css/index.scss')] },
            }),
        ],
    ],

    themeConfig:
        /** @type {import('@docusaurus/preset-classic').ThemeConfig} */
        ({
            image: 'img/small_capsule.png',
            navbar: {
                title: 'RawrBox',
                logo: {
                    alt: 'logo',
                    src: 'img/rawrbox.svg',
                },
                items: [
                    {
                        type: 'doc',
                        docId: 'index',
                        position: 'left',
                        label: 'WIKI',
                    },
                    {
                        type: 'search',
                        position: 'right',
                    },
                    /*{
                        type: 'localeDropdown',
                        position: 'right',
                    },*/
                    {
                        type: 'docsVersionDropdown',
                        position: 'right',
                    },
                    {
                        href: 'https://github.com/edunad/rawrbox',
                        position: 'right',
                        className: 'header-github-link',
                        'aria-label': 'GitHub repository',
                    },
                ],
            },
            footer: {
                style: 'dark',
                links: [],
                copyright: `Copyright © ${new Date().getFullYear()} FailCake 🐲. Built with Docusaurus 🦖`,
            },
            prism: {
                darkTheme: codeTheme,
                theme: codeTheme,

                additionalLanguages: ['lua', 'cmake', 'cpp'],
            },
            colorMode: {
                defaultMode: 'dark',
                disableSwitch: true,
            },
        }),
};

module.exports = config;

const fs = require('fs');
const { WikiExtract } = require('@edunad/lua-wiki-generator');

const yargs = require('yargs/yargs');
const { hideBin } = require('yargs/helpers');
const argv = yargs(hideBin(process.argv)).argv;

const init = () => {
    const methodTemplate = fs.readFileSync('./md-templates/METHOD_TEMPLATE.md', 'utf8');
    const classTemplate = fs.readFileSync('./md-templates/CLASS_TEMPLATE.md', 'utf8');
    const extensionTemplate = fs.readFileSync('./md-templates/EXTENSION_TEMPLATE.md', 'utf8');
    const gvarTemplate = fs.readFileSync('./md-templates/GVAR_TEMPLATE.md', 'utf8');

    const libPath = './rawrbox-lib/library';
    const output = `${argv.out ?? './'}`;

    console.warn(`Writting wiki to: ${output}`);

    new WikiExtract(libPath, output, {
        glob: '**/*.lua',
        templates: {
            method: methodTemplate,
            class: classTemplate,
            extension: extensionTemplate,
            gvar: gvarTemplate,
        },
        silent: false,
        clean: false,
        mdFolderParser: (file) => {
            const fixedPath = file.replace(`${libPath}/`, '');
            return fixedPath.replace('rawrbox.', '').replace('.lua', '');
        },
        mdLinkParser: (type, linkMap, data) => {
            const link = linkMap[data.title?.link ?? data.link];

            if (type === '$TITLE_NAME$') {
                if (link)
                    return `[${data.title.link}](../${link.replace('rawrbox.', '').replace('.lua', '')}/README.md)${data.title.msg.replace(
                        data.title.link,
                        '',
                    )}`;
                return `${data.title.msg}`;
            } else if (type === '$PARAMETERS$' || type === '$RETURNS$' || type === '$FIELDS$') {
                if (link) return `[${data.type}](../${link.replace('rawrbox.', '').replace('.lua', '')}/README.md)`;
                return `${data.type}`;
            }
        },
        mdTextParser: (linkMap, template, codeBlock) => {
            template = template.replace(/\$TITLE_NAME_CLEAN\$/g, codeBlock.title.msg);

            // Override example parsing
            let example = '';
            if (codeBlock.commentBlock.examples.length > 0) {
                example += '```lua {} showLineNumbers\n';
                codeBlock.commentBlock.examples.forEach((ex) => {
                    example += `${ex}\n`;
                });
                example += '```\n\n';
            }

            template = template.replace(/\$EXAMPLE\$/g, example);
            // ----

            return [true, template];
        },
    }).extract();
};

init();

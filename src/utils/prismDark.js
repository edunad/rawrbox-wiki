const darkTheme = require('prism-react-renderer/themes/dracula/index.cjs.js');

module.exports = {
    plain: {
        color: '#D4D4D4',
        backgroundColor: '#090a11',
    },
    styles: [...darkTheme.styles],
};

const { themes } = require('prism-react-renderer');

module.exports = {
    plain: {
        color: '#D4D4D4',
        backgroundColor: '#090a11',
    },
    styles: [...themes.dracula.styles],
};

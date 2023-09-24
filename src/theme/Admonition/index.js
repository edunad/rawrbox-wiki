import React from 'react';

const getIcon = (type) => {
    switch (type) {
        case 'warning':
            return <img src="/img/wiki/icons/o-warning.svg" className="admonition-icon" alt="warning" />;
        case 'info':
            return <img src="/img/wiki/icons/s-info-e.svg" className="admonition-icon" alt="info" />;
        case 'error':
            return <img src="/img/wiki/icons/stop-sign.svg" className="admonition-icon" alt="caution" />;
    }

    return null;
};

export default function AdmonitionWrapper(props) {
    return (
        <div className={`admonition-container admonition-${props.type}`}>
            {getIcon(props.type)}
            <div className="admonitionContent_node_modules-@docusaurus-theme-classic-lib-theme-Admonition-styles-module">
                {props.children}
            </div>
        </div>
    );
}

define(["require", "exports"], function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    const template = {
        options: {
            persistSelect: ['Users']
        },
        properties: {},
        commands: {
            createUser
        }
    };
    exports.default = template;
    function createUser() {
        alert('create user here');
    }
});

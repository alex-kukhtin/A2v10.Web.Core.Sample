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
    async function createUser() {
        const ctrl = this.$ctrl;
        const users = this.Users;
        let user = await ctrl.$showDialog("/settings/user/create");
        users.$append(user);
    }
});

define(["require", "exports"], function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    const template = {
        validators: {
            'User.UserName': '@[Error.Empty]',
            'User.PersonName': '@[Error.Empty]'
        },
        commands: {
            create
        }
    };
    exports.default = template;
    async function create(user) {
        const ctrl = this.$ctrl;
        let newuser = await ctrl.$invoke("createUser", user);
        ctrl.$modalClose(newuser);
    }
});

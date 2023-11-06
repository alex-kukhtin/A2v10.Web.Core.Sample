
const template: Template = {
	options: {
		persistSelect:['Users']
	},
	properties: {

	},
	commands: {
		createUser
	}
}

export default template;

async function createUser() {
	const ctrl: IController = this.$ctrl;
	const users = this.Users;
	let user = await ctrl.$showDialog("/settings/user/create");
	users.$append(user);
}
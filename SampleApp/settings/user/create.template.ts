
// User.Create
const template: Template = {
	validators: {
		'User.UserName': '@[Error.Empty]',
		'User.PersonName': '@[Error.Empty]'
	},
	commands: {
		create
	}
}

export default template;

async function create(user) {
	const ctrl: IController = this.$ctrl;
	let newuser = await ctrl.$invoke("createUser", user);
	ctrl.$modalClose(newuser);
}
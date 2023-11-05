
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

function createUser() {
	alert('create user here');
}
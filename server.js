const app = require('./app');

const { connectDBs } = require('./db/index');

// ℹ️ Sets the PORT for our app to have access to it. If no env has been set, we hard code it to 5013
const PORT = process.env.PORT || 5013;

connectDBs().then(() => {
	app.listen(PORT, () => {
		console.log(
			`MS_Expirences Server listening on http://localhost:${PORT}`
		);
	});
});

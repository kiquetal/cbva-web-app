var express = require('express');
var router = express.Router();

/* GET users listing. */
router.get('/', function(req, res, next) {

	
	connection.query('SELECT p.name,f.ba  from firefighter as f JOIN person as p ON p.id=f.person_id', function (error, results, fields) {
		if (error) throw error;
		res.send(JSON.stringify({"status": 200, "error": null, "response": results}));
});
	
});




module.exports = router;

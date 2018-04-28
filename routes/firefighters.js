var express = require('express');
var router = express.Router();

router.get('/', function(req, res, next) {

	
	connection.query('SELECT p.name,f.ba  from firefighter as f JOIN person as p ON p.id=f.person_id', function (error, results, fields) {
		if (error) throw error;
		res.send(JSON.stringify({"status": 200, "error": null, "response": results}));
});
});

router.get('/:ba', function(req,res,next)
	{

	let ba=req.params.ba;

	connection.query('SELECT p.name,f.ba,r.acronim as rango from firefighter as f JOIN person as p on p.id=f.person_id JOIN rank as r ON r.id=f.rank_id WHERE f.ba='+ba, function(error,results,fields)
		{
			if (error) throw error;
			res.send(JSON.stringify({"response":results}));
		});
	
	
	});







module.exports = router;

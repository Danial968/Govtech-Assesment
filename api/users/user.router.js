const { suspend, getCommonStudents, register, notification, teacher } = require("./user.controller");
const router = require("express").Router();

router.post("/suspend", suspend);
router.get("/commonstudents", getCommonStudents);
router.post("/register", register);
router.post("/retrievefornotifications", notification);
router.get("/teacher",teacher);

module.exports = router;
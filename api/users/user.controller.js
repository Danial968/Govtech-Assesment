const { suspend, notification, getCommonStudents, register } = require("./user.service")


module.exports = {
    suspend: (req, res) =>{
        const body = req.body;
        suspend(body, (err,results) =>{
            if(err){
                console.log(err);
                return res.status(500).json({
                    message: "Databse connection error"
                });
            }
            return res.status(204).end()
        })
    },

    register: (req,res) => {
        register( req.body, (err,results) => {
            if(err){
                console.log(err);
                return res.status(500).json({
                    message: "Databse connection error"
                });
            }
            return res.status(204).end()
        })
    },

    getCommonStudents: (req, res) => {
        const teacher = req.query.teacher;

        getCommonStudents(teacher, (err,results) => {
            if(err){
                console.log(err);
                return res.status(500).json({
                    message: "Databse connection error"
                });
            }

            let value = []
            results.forEach(student => {
                value.push(student.student)
            });

            return res.status(200).json({
                students: value
            })
        })
    },

    notification: (req, res) => {

        notification(req.body, (err,results) => {
            if(err){
                console.log(err);
                return res.status(500).json({
                    message: "Databse connection error"
                });
            }

            let value = [];
            results.forEach(student => {
                value.push(student.student)
            });

            return res.status(200).json({
                recepients: value
            })
        })
    }
}
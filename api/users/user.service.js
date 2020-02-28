const pool = require("../../config/database");

module.exports = {
    suspend: (data, callBack) => {
        pool.query(
            `update student set suspended = 1 where email = ?`,
            [data.student],
            (error, results, fields) => {
                if(error){
                    return callBack(error);
                }
                return callBack(null, results)
            }
        );
    },

    register: (data, callBack) => {

        var teacher = data.teacher;
        var students = data.students;
        let value = [];

        students.forEach(element => {
            value.push([teacher,element])
        });

        pool.query(
            'insert into relationship (teacher,student) values ?;', 
            [value], 
            (error,results,fields) => {
            if(error){
                return callBack(error);
            }
            return callBack(null,results);
        });
    },

    getCommonStudents: (teachers, callBack) => {

        pool.query(
            'select student from relationship where teacher in (?)', 
            [teachers], 
            function(error, results, fields){
            if(error){
                return callBack(error);
            }
            return callBack(null, results);
        });
        
    },

    notification: (data, callBack) => {
        var teacher = data.teacher;
        var students = data.notification.split(' ');
        let value = [];

        students.forEach(word => {
            if(word.includes("@")){
                value.push(word.slice(1))
            }
        });

        if(value.length > 0){
            pool.query(
                `select distinct r.student from relationship r join student s on s.email = r.student and s.suspended = 0 where r.teacher in (?) or s.email in ?`,
                [
                    [teacher],
                    [value]
                ],
                function(error, results, fields){
                    if(error){
                        return callBack(error);
                    }
                    return callBack(null, results);
                }
            );
        } else {
            pool.query(
                `select distinct r.student from relationship r join student s on s.email = r.student and s.suspended = 0 where r.teacher in (?)`,
                [
                    [teacher],
                ],
                function(error, results, fields){
                    if(error){
                        return callBack(error);
                    }
                    return callBack(null, results);
                }
            );
        }

    }

};
<h1>Govtech Assessment</h1>

Postman test cases:
[![Run in Postman](https://run.pstmn.io/button.svg)](https://app.getpostman.com/run-collection/7a403e1c997cf0157ddc)

Load the sql file into your database. And run the app.js file by using npm start on localhost.

<table>
    <tr>
        <th>
            SQL tables
        </th>
    </tr>
    <tr>
        <td>
            teacher
        </td>
    </tr>
    <tr>
        <td>
            relationship
        </td>
        </td>
    <tr>
        <td>
            student
        </td>
    </tr>
</table>

<table border-style=dotted>
    <tr>
        <th>teacher</th>
    </tr>
    <tr>
        <td>email (PK)</td>
    </tr>
</table>

<table border-style=dotted>
    <tr>
        <th>relationship</th>
    </tr>
    <tr>
        <td>teacher (FK)
        </td>
    </tr>
    <tr>
        <td>student (FK)
        </td>
    </tr>
</table>

<table border-style=dotted>
    <tr>
        <th>
            student
        </th>
    </tr>
    <td>
        email (PK)
    </td>
    <tr>
        <td>
            suspended
        </td>
    </tr>
</table>

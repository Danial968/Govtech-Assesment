<h1>Govtech Assessment</h1>

Postman test cases:
<div class="postman-run-button" data-postman-action="collection/import" data-postman-var-1="7a403e1c997cf0157ddc"></div>
<script type="text/javascript">
    (function (p, o, s, t, m, a, n) {
        !p[s] && (p[s] = function () {
            (p[t] || (p[t] = [])).push(arguments);
        });
        !o.getElementById(s + t) && o.getElementsByTagName("head")[0].appendChild((
            (n = o.createElement("script")),
            (n.id = s + t), (n.async = 1), (n.src = m), n
        ));
    }(window, document, "_pm", "PostmanRunObject", "https://run.pstmn.io/button.js"));
</script>

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

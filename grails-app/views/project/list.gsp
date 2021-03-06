<html>
<head>
    <title>Show projects</title>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
</head>
<body>
<div class="container">

<h1>List Project</h1>

    <table class="table table-bordered table-responsive table-striped">
        <tr>
            <th>Project ID</th>
            <th>Project name</th>
            <th>Project Created</th>
            <th>Action</th>
        </tr>

    <g:each in="${projects}" var="project">
        <tr>
            <td>${project.id}</td>
            <td><g:link action="show" id="${project.id}">${project.name}</g:link></td>
            <td>${project.dateCreated}</td>
            <td><g:link action="edit"
                        id="${project.id}"><button class="btn btn-primary">Edit</button></g:link>
                <g:link action="delete"
                        id="${project.id}"><button class="btn btn-danger">Delete</button></g:link>
            </td>

        </tr>
    </g:each>
    </table>

    <g:link action="create"><button class="btn btn-success">Create new Project</button></g:link>
</div>
</body>
</html>
 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>

<head>
    <title>Save Task</title>


    <link type="text/css"
          rel="stylesheet"
          href="css/style.css">

    <link type="text/css"
          rel="stylesheet"
          href="css/add-customer-style.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
          integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <style type="text/css">

        .error {color:red}

        form {
            margin-top: 20px;
            width: 400px;
            height: 450px;
        }
        div {
            color: darkred;
            display: block;
        }
        h2{
            margin-top: 20px;
            margin-left: 30px;
            color: white;
            text-shadow: 2px 2px 4px black;
        }

        form-group {
            margin-top: 20px;
            text-align: center;
        }

        span{
            width: 50%;
            display:inline-block;
            width: 200px;
            text-align: left;
        }

        input[type=submit] {
            background-color: #4CAF50;
            color: white;
            padding: 12px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            align-self: auto;
        }

    </style>


</head>

<body>


<div id="wrapper" >
    <div id="header" align="center">
        <h2>SAVE TASK</h2>
    </div>
</div>

<div id="container" align="center">
    <form:form action="saveTodo" modelAttribute="todo" method="POST" cssStyle="border-style: solid">
        <form:hidden path="id" />
        <div class="form-group">
            <label style="margin-top: 20px">Task Name:</label>
            <form:input path="todoName"/>
            <form:errors path="todoName" cssClass="error" />

        </div>
        <br/>
        <div class="form-group">
            <label>Starting Date:</label>
            <form:input type ="date" path="todoSDate"/>
            <form:errors path="todoSDate" cssClass="error" />
        </div>
        <div class="form-group">
            <label>Target Date:</label>
            <form:input type ="date" path="todoEDate"/>
            <form:errors path="todoEDate" cssClass="error" />
        </div>
        <br/>
        <div class="form-group">
            <label>Priority:</label>
            <form:input type ="number" path="priority"/>
            <form:errors path="priority" cssClass="error" />
        </div>
        <input type="submit" value="Save" class="save"/>
        <p style="margin-top: 20px">
            <a href="${pageContext.request.contextPath}/todo/listTodo">Back to List</a>
        </p>
    </form:form>



</div>

</body>

</html>









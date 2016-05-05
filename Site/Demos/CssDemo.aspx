<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        h1{
            font-size:20px;
            color:green;
        }

        p{
            color: blue;
            font-style:italic;
        }

        .RightAligned{
            text-align: right;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>Welcome to this CSS Demo page</h1>
        <p>CSS makes it super easy to style your pages.        </p>
        <p class="RightAligned">
            With very litle code, you can quickly change the looks a page.
        </p>
    </div>
    </form>
</body>
</html>

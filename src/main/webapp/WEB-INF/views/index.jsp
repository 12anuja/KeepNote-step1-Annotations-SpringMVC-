<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>KeepNote</title>
</head>
<body>
	<!-- Create a form which will have text boxes for Note ID, title, content and status along with a Send
		 button. Handle errors like empty fields -->
	<form action="/saveNote" method="post">
		Note Id:<br> <input type="text" name="noteId"> <br>
		Title:<br> <input type="text" name="noteTitle"> <br>
		Content:<br> <input type="text" name="noteContent"> <br>
		Status:<br> <input type="text" name="noteStatus"> <br> <br>
		<input type="submit" value="Submit">
	</form>

	<!-- display all existing notes in a tabular structure with Id, Title,Content,Status, Created Date and Action -->
	<table cellpadding="20">
		<tr>
			<th>Note Id</th>
			<th>Note Title</th>
			<th>Note Content</th>
			<th>Note Status</th>
			<th>Note Created At</th>
			<th>Note Action</th>
		</tr>

		<c:forEach items="${noteRepository}" var="note">
			<tr>
				<td><c:out value="${note.noteId}" /></td>
				<td><c:out value="${note.noteTitle}" /></td>
				<td><c:out value="${note.noteContent}" /></td>
				<td><c:out value="${note.noteStatus}" /></td>
				<td><c:out value="${note.createdAt}" /></td>
				<td><form action="deleteNote">

				<th><button type="submit" name="noteId" value="${note.noteId}">DELETE</button>
				</th>
			</tr>
		</c:forEach>


	</table>
</body>
</html>
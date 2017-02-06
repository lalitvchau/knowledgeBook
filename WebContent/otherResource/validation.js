function validate() {

	if (document.signUp.name.value.trim() == "") {
		document.signUp.name.value="";
		document.signUp.name.placeholder = "Please Enter your name  !";
		document.signUp.name.focus();
		return false;
	}

	if (document.signUp.email.value.trim() == "") {
		document.signUp.email.value="";
		document.signUp.email.placeholder = "Please enter your email or username !";
		document.signUp.email.focus();
		return false;
	}

	if (document.signUp.password.value.trim() == "") {
		document.signUp.password.value="";
		document.signUp.password.placeholder = "Please enter a new password !";
		document.signUp.password.focus();
		return false;
	}

	if (document.signUp.password1.value.trim() == "") {
		document.signUp.password1.value="";
		document.signUp.password1.placeholder = "Please conform password !";
		document.signUp.password1.focus();
		return false;
	}
	if (document.signUp.password1.value.trim() != document.signUp.password.value.trim()) {
		document.signUp.password1.value = "";
		document.signUp.password.value = "";
		document.signUp.password1.placeholder = "Conform Password and Password doesn't Match !";
		document.signUp.password.placeholder = "Conform Password and Password doesn't Match !";
		document.signUp.password.focus();
		return false;
	}

	return (true);
}
function validateSign() {

	if (document.signIn.username.value.trim() == "") {
		document.signIn.username.value="";
		document.signIn.username.placeholder = "Please provide your Email ! Empty Field Does not allowed !";
		document.signIn.username.focus();
		return false;
	}

	if (document.signIn.pass.value.trim() == "") {
		document.signIn.pass.value="";
		document.signIn.pass.placeholder = "Please provide your Password ! Empty Field Does not allowed !";
		document.signIn.pass.focus();
		return false;
	}

	return (true);
}
function validateQry() {

	if (document.qry.qryArea.value.trim() == "") {
		document.qry.qryArea.value="";
		document.qry.qryArea.placeholder = "Please write your querry !";
		document.qry.qryArea.focus();
		return false;
	}

	return (true);
}
function validateCode() {

	if (document.cd.cdArea.value.trim() == "") {
		alert("Please write your Code ! and don't delete default class");
		document.cd.cdArea.value = "public class Main{\n\tpublic static void main(String[] args){\n\t\t//call your class or Code here\n\n\t}\n}\nwrite your class or Code here ";
		document.cd.cdArea.focus();
		return false;
	}
	

	return (true);
}

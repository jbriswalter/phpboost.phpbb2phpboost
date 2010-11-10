		<script type="text/javascript">
		<!--
		function check_form_mail(){
			if(document.getElementById('mail_email').value == "") {
				alert("{L_REQUIRE_MAIL}");
				return false;
		    }
			if(document.getElementById('mail_contents').value == "") {
				alert("{L_REQUIRE_TEXT}");
				return false;
		    }
			{L_REQUIRE_VERIF_CODE}
			return true;
		}
		-->
		</script>

		# IF C_ERROR_HANDLER #
		<span id="errorh"></span>
		<div class="{ERRORH_CLASS}" style="width:500px;margin:auto;padding:15px;">
			<img src="../templates/{THEME}/images/{ERRORH_IMG}.png" alt="" style="float:left;padding-right:6px;" /> {L_ERRORH}
			<br />	
		</div>
		# ENDIF #
				
		<form action="" method="post" onsubmit="return check_form_mail();" class="fieldset_mini">
			<fieldset>
				<legend>Mise à jour du mot de passe</legend>
				<p>Ce formulaire vous permet de convertir votre mot de passe au nouveau format suite au changement de forum. Une fois validé, vous pourrez vous connecter normalement.</p>
				<dl>
					<dt><label for="login">* {L_PSEUDO}</label></dt>
					<dd><label><input type="text" size="30" maxlength="50" id="login" name="login" class="text" /></label></dd>
				</dl>		
				<dl>
					<dt><label for="password">* {L_PASSWORD}</label></dt>
					<dd><label><input type="password" size="30" name="password" id="password" class="text" /></label></dd>
				</dl>
			</fieldset>
			
			<fieldset class="fieldset_submit">
				<legend>{L_SUBMIT}</legend>
				<input type="submit" name="mail_valid" value="{L_SUBMIT}" class="submit" />
				&nbsp;
				<input type="reset" value="{L_RESET}" class="reset" />
				<input type="hidden" name="token" value="{TOKEN}" />			
			</fieldset>
		</form>

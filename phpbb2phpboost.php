<?php
/*##################################################
 *                                phpbb2phpboost.php
 *                            -------------------
 *   begin              : April 28, 2009
 *   copyright          : (C) 2009 Viarre Régis
 *   email              : crowkait@phpboost.com
 *
 *
 ###################################################
 *
 *   This program is free software; you can redistribute it and/or modify
 *   it under the terms of the GNU General Public License as published by
 *   the Free Software Foundation; either version 2 of the License, or
 *   (at your option) any later version.
 * 
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
 *
###################################################*/

require_once('../kernel/begin.php');
require_once('../news/news_begin.php');
require_once('../kernel/header.php');

define('PHPBB_PREFIX', 'phpbb_');

include('./functions.php');

$login = retrieve(POST, 'valid', '');
$password = retrieve(POST, 'password', '');
if (!empty($login))
{
	$password_db = $Sql->query("SELECT user_password FROM ".PHPBB_PREFIX."users WHERE username='" . $login . "'", __LINE__, __FILE__);
	if (phpbb_check_hash($password, $password_db))
	{	
		$Sql->query("UPDATE ".PREFIX."member SET password = '" . strhash($password) . "' WHERE login='" . $login . "'", __LINE__, __FILE__);
		redirect(HOST . DIR . '/phpbb2phpboost/phpbb2phpboost.php?s=1');
	}
	else
		redirect(HOST . DIR . '/phpbb2phpboost/phpbb2phpboost.php?s=-1');
}

$tpl = new Template('phpbb2phpboost/phpbb2phpboost.tpl');

$get_error = retrieve(GET, 's', 0);
$Errorh->set_template($tpl);
if ($get_error == 1)
	$Errorh->handler('Le changement de mot de passe s\'est déroulé avec succès, vous pouvez désormais vous connecter normalement au site !', E_USER_SUCCESS);
elseif ($get_error == -1)
	$Errorh->handler('Le mot de passe est erroné', E_WARNING);

$tpl->assign_vars(array(
	'L_PSEUDO' => $LANG['pseudo'],
	'L_PASSWORD' => $LANG['password'],
	'L_SUBMIT' => $LANG['submit'],
	'L_RESET' => $LANG['reset']
));

$tpl->parse();

require_once('../kernel/footer.php');

?>
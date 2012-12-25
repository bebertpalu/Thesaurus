<?php /* Smarty version Smarty-3.1.12, created on 2012-12-25 21:26:22
         compiled from "vues\resultat.vue.html" */ ?>
<?php /*%%SmartyHeaderCode:344350da10dc332970-21198725%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '8a895e16f7bfefde5b62c64f7f6dffb6119a72a2' => 
    array (
      0 => 'vues\\resultat.vue.html',
      1 => 1356470779,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '344350da10dc332970-21198725',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.12',
  'unifunc' => 'content_50da10dc3a3627_35602105',
  'variables' => 
  array (
    'resultats' => 0,
    'resultat' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_50da10dc3a3627_35602105')) {function content_50da10dc3a3627_35602105($_smarty_tpl) {?><?php  $_smarty_tpl->tpl_vars['resultat'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['resultat']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['resultats']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['resultat']->key => $_smarty_tpl->tpl_vars['resultat']->value){
$_smarty_tpl->tpl_vars['resultat']->_loop = true;
?>
	<?php echo $_smarty_tpl->tpl_vars['resultat']->value;?>

<?php }
if (!$_smarty_tpl->tpl_vars['resultat']->_loop) {
?>
	Pas de résultat, essaye encore.
	<form method="post" action="index.php?page=recherche">
		<input type="text" name="libelle">
	</form>
<?php } ?><?php }} ?>
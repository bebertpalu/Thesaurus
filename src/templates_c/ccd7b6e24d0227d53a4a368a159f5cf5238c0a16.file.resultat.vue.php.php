<?php /* Smarty version Smarty-3.1.12, created on 2012-12-25 20:40:29
         compiled from "vues\resultat.vue.php" */ ?>
<?php /*%%SmartyHeaderCode:150650da0f3db22a70-94818783%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'ccd7b6e24d0227d53a4a368a159f5cf5238c0a16' => 
    array (
      0 => 'vues\\resultat.vue.php',
      1 => 1356467881,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '150650da0f3db22a70-94818783',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'resultats' => 0,
    'resultat' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.12',
  'unifunc' => 'content_50da0f3db92607_11670245',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_50da0f3db92607_11670245')) {function content_50da0f3db92607_11670245($_smarty_tpl) {?><?php  $_smarty_tpl->tpl_vars['resultat'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['resultat']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['resultats']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['resultat']->key => $_smarty_tpl->tpl_vars['resultat']->value){
$_smarty_tpl->tpl_vars['resultat']->_loop = true;
?>
	<?php echo $_smarty_tpl->tpl_vars['resultat']->value;?>

<?php }
if (!$_smarty_tpl->tpl_vars['resultat']->_loop) {
?>
	Aucun résultat.
<?php } ?><?php }} ?>
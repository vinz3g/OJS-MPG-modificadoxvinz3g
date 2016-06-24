{**
 * templates/common/search.tpl
 *
 *
 * Search Bar
 *
 *}

<div id="searchbar">
<form id="simpleSearchForm" method="post" action="{url page="search" op="search"}">							
	<input name="search box" type="search" aria-label="Search" value="" class="textField" />
	<input type="submit" value="Buscar" class="button" />
</form>
</div>
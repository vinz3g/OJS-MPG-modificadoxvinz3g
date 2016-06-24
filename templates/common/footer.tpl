{**
 * templates/common/footer.tpl
 *
 * Copyright (c) 2013-2015 Simon Fraser University Library
 * Copyright (c) 2000-2015 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * Common site footer.
 *
 *}

</div><!-- content -->
</div><!-- main -->
</div><!-- body -->
</div><!-- container -->
{strip}
{if $currentJournal && $currentJournal->getSetting('onlineIssn')}
	{assign var=issn value=$currentJournal->getSetting('onlineIssn')}
{elseif $currentJournal && $currentJournal->getSetting('printIssn')}
	{assign var=issn value=$currentJournal->getSetting('printIssn')}
{/if}

{if $displayCreativeCommons}
	{translate key="common.ccLicense"}
{/if}
<div id="pageFooter">
{if $pageFooter}
	{$pageFooter}
{/if}
{call_hook name="Templates::Common::Footer::PageFooter"}
	<div id="standardFooter">
		{if $issn}
			<p>ISSN: {$issn}</p>
		{/if}			
		
		<p>© 2016, Revista Biomédica, correo: <a title="Correo Revista Biomédica" href="mailto:revbiomed@correo.uady.mx" target="_blank">revbiomed@correo.uady.mx</a>
		Avenida Itzaés # 490 x calle 59, Colonia: Centro, C.P. 97000, Mérida, Yucatán, México
		Tel: 52 (999) 9245755 Extensión 151 Fax: 52 (999) 9236120</p>
		<p>© 2016, Derechos Reservados, <a href="http://www.uady.mx">Universidad Autónoma de Yucatán</a>, México. <a href="http://www.cirbiomedicas.uady.mx">Centro de Investigaciones Regionales "Dr. Hideyo Noguchi"</a>.</p>
		<a href="http://www.cirbiomedicas.uady.mx">
			<img src="{$baseUrl}/plugins/themes/mpg/img/uadycir.png" alt="Centro de investigaciones Biomédicas Dr. Hideyo Noguchi"/>
		</a>		
	</div>
{/strip}
<script type="text/javascript" src="{$baseUrl}/plugins/themes/mpg/js/menu.js"></script>
</div>


{get_debug_info}
{if $enableDebugStats}{include file=$pqpTemplate}{/if}


</body>
</html>

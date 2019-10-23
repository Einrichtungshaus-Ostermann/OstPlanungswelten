
{* file to extend *}
{extends file="parent:frontend/index/index.tpl"}

{* our plugin namespace *}
{namespace name="frontend/ost-planungswelten/index"}



{* add our plugin to the breadcrumb *}
{block name='frontend_index_start'}

    {* smarty parent *}
    {$smarty.block.parent}

    {* our breadcrumb name *}
    {assign var="breadcrumbName" value="Abverkauf"}

    {* add it *}
    {$sBreadcrumb[] = ['name' => $breadcrumbName, 'link'=> ""]}

{/block}



{* remove left sidebar *}
{block name='frontend_index_content_left'}{/block}



{* main content *}
{block name='frontend_index_content'}

    {* inner content container *}
    <div class="content ost-planungswelten--content">

        {* load google maps js *}
        <script type="text/javascript" src="https://maps.google.com/maps/api/js?libraries=places&amp;v=3.exp&amp;language=de_DE&amp;key={$ostPlanungsweltenConfiguration.googleMapsApiKey}"></script>


        {* show iframe by key *}
        {if $ostPlanungsweltenKey == ""}

            {* load the iframe *}
            <iframe frameborder="0" src="https://sale.planungswelten.de/fmp/ostermann/" width="100%" height="800px" style="width: 100% !important; max-height: 800px !important;"></iframe>

        {elseif $ostPlanungsweltenKey == "witten"}

            <iframe frameborder="0" src="https://sale.planungswelten.de/fmp/ostermann/?page=1&amp;fi=18046&amp;by=date_input" width="100%" height="800px" style="width: 100% !important; max-height: 800px !important;"></iframe>

        {elseif $ostPlanungsweltenKey == "recklinghausen"}

            <iframe frameborder="0" src="https://sale.planungswelten.de/fmp/ostermann/?page=1&amp;fi=30963&amp;by=date_input" width="100%" height="800px" style="width: 100% !important; max-height: 800px !important;"></iframe>

        {elseif $ostPlanungsweltenKey == "leverkusen"}

            <iframe frameborder="0" src="https://sale.planungswelten.de/fmp/ostermann/?page=1&amp;fi=16834&amp;by=date_input" width="100%" height="800px" style="width: 100% !important; max-height: 800px !important;"></iframe>

        {elseif $ostPlanungsweltenKey == "haan"}

            <iframe frameborder="0" src="https://sale.planungswelten.de/fmp/ostermann/?page=1&amp;fi=21072&amp;by=date_input" width="100%" height="800px" style="width: 100% !important; max-height: 800px !important;"></iframe>

        {elseif $ostPlanungsweltenKey == "bottrop"}

            <iframe frameborder="0" src="https://sale.planungswelten.de/fmp/ostermann/?page=1&amp;fi=21071&amp;by=date_input" width="100%" height="800px" style="width: 100% !important; max-height: 800px !important;"></iframe>

        {/if}
        
    </div>

{/block}

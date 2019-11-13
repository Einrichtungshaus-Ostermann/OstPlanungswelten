
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

        {if $ostPlanungsweltenKey == ""}
            <iframe frameborder="0" src="{$ostPlanungsweltenConfiguration.apiUrl}/fmp/{$ostPlanungsweltenConfiguration.planungsweltenKey}/" width="100%" height="800px" style="width: 100% !important; max-height: 800px !important;"></iframe>
        {elseif $ostPlanungsweltenKey == "witten"}
            <iframe frameborder="0" src="{$ostPlanungsweltenConfiguration.apiUrl}/fmp/{$ostPlanungsweltenConfiguration.planungsweltenKey}/?page=1&amp;fi={$ostPlanungsweltenConfiguration.storeKeyWitten}&amp;by=date_input" width="100%" height="800px" style="width: 100% !important; max-height: 800px !important;"></iframe>
        {elseif $ostPlanungsweltenKey == "recklinghausen"}
            <iframe frameborder="0" src="{$ostPlanungsweltenConfiguration.apiUrl}/fmp/{$ostPlanungsweltenConfiguration.planungsweltenKey}/?page=1&amp;fi={$ostPlanungsweltenConfiguration.storeKeyRecklinghausen}&amp;by=date_input" width="100%" height="800px" style="width: 100% !important; max-height: 800px !important;"></iframe>
        {elseif $ostPlanungsweltenKey == "leverkusen"}
            <iframe frameborder="0" src="{$ostPlanungsweltenConfiguration.apiUrl}/fmp/{$ostPlanungsweltenConfiguration.planungsweltenKey}/?page=1&amp;fi={$ostPlanungsweltenConfiguration.storeKeyLeverkusen}&amp;by=date_input" width="100%" height="800px" style="width: 100% !important; max-height: 800px !important;"></iframe>
        {elseif $ostPlanungsweltenKey == "haan"}
            <iframe frameborder="0" src="{$ostPlanungsweltenConfiguration.apiUrl}/fmp/{$ostPlanungsweltenConfiguration.planungsweltenKey}/?page=1&amp;fi={$ostPlanungsweltenConfiguration.storeKeyHaan}&amp;by=date_input" width="100%" height="800px" style="width: 100% !important; max-height: 800px !important;"></iframe>
        {elseif $ostPlanungsweltenKey == "bottrop"}
            <iframe frameborder="0" src="{$ostPlanungsweltenConfiguration.apiUrl}/fmp/{$ostPlanungsweltenConfiguration.planungsweltenKey}/?page=1&amp;fi={$ostPlanungsweltenConfiguration.storeKeyBottrop}&amp;by=date_input" width="100%" height="800px" style="width: 100% !important; max-height: 800px !important;"></iframe>
        {/if}

    </div>

{/block}

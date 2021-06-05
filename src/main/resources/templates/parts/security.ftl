<#assign
known = Session.SPRING_SECURITY_CONTEXT??
>

<#if known>
    <#assign
    principal = Session.SPRING_SECURITY_CONTEXT.authentication.principal
    username = principal.getShortName()
    >
<#else>
    <#assign
    username = "unknown"
    >
</#if>
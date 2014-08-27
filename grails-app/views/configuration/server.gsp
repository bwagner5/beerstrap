<%@ page import="com.app.admin.domain.configuration.Configuration" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <g:set var="entityName" value="${message(code: 'configuration.label', default: 'Configuration')}"/>
    <parameter name="menu_Configuration" value="active"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>

<g:render template="sidebar" model="['selected': 'sb_server']"></g:render>

<h2><g:message code="app.configuration.server.emailconfig.label" /></h2>
<table class="table" summary="configuration table">
    <thead>
    <tr>
        <th class="col-md-4"></th>
        <th></th>
    </tr>
    </thead>
    <tbody>
    <g:each in="${configurationEmailInstanceList}" status="i" var="configurationInstance">
        <tr>
            <td>
                <strong><g:message code="app.configuration.${configurationInstance?.key}.label" default="${configurationInstance?.key}"/></strong>
                <span rel="tooltip" title="${message(code: "app.configuration.${configurationInstance?.key}.label", default: "")}">
                    <i class="fa fa-info-circle"></i>
                </span>
            </td>
            <td>
                <g:textField name="${configurationInstance?.key}" value="${configurationInstance?.value}" readonly="true" class="form-control"/>
                <g:message code="app.configuration.${configurationInstance?.key}.description" default=""/>
            </td>
        </tr>
    </g:each>
    </tbody>
</table>

<h2><g:message code="app.configuration.server.fileuploader.label" /></h2>
<table class="table" summary="configuration table">
    <thead>
    <tr>
        <th class="col-md-4"></th>
        <th></th>
    </tr>
    </thead>
    <tbody>
    <g:each in="${configurationDocsInstanceList}" status="i" var="configurationInstance">
        <tr>
            <td><strong><g:message code="app.configuration.${configurationInstance?.key}.label" default="${configurationInstance?.key}"/></strong>
                <span rel="tooltip"
                      title="${message(code: "app.configuration.${configurationInstance?.key}.label", default: "")}"><i
                        class="fa fa-info-circle"></i></span>
            </td>
            <td>
                <g:textField name="${configurationInstance?.key}" value="${configurationInstance?.value}" readonly="true" class="form-control"/>
                <g:message code="app.configuration.${configurationInstance?.key}.description" default=""/>
            </td>
        </tr>
    </g:each>
    </tbody>
</table>

<h2><g:message code="app.configuration.server.database.label" /></h2>
<g:link controller="dbconsole" class="btn btn-xs btn-info" target="_blank"><i class="fa fa-hdd"></i> Database Console</g:link>
<table class="table" summary="configuration table">
    <thead>
    <tr>
        <th class="col-md-4"></th>
        <th></th>
    </tr>
    </thead>
    <tbody>
    <g:each in="${configurationDBInstanceList}" status="i" var="configurationInstance">
        <tr>
            <td><strong><g:message code="app.configuration.${configurationInstance?.key}.label" default="${configurationInstance?.key}"/></strong>
                <span rel="tooltip"
                      title="${message(code: "app.configuration.${configurationInstance?.key}.label", default: "")}"><i
                        class="fa fa-info-circle"></i></span>
            </td>
            <td>
                <g:textField name="${configurationInstance?.key}" value="${configurationInstance?.value}" readonly="true" class="form-control"/>
                <g:message code="app.configuration.${configurationInstance?.key}.description" default=""/>
            </td>
        </tr>
    </g:each>
    </tbody>
</table>

<div class="alert alert-info">
    <button type="button" class="close" data-dismiss="alert">&times;</button>
    <g:message code="app.configuration.server.alert.label" />
</div>


<%--
Configuration:
<g:render template="/common/prettycode" model="['code':grailsApplication.config]"></g:render>
--%>

</body>
</html>

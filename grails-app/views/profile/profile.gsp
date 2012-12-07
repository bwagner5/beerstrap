<%@ page import="com.app.domain.configuration.Configuration" %>
<html>
    <head>
        <parameter name="menu_Profile" value="active" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'profile.label', default: 'Profile')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
    	<div class="row">
    		<div class="span16">
    		
			<g:render template="sidebar" model="['selected':'sb_profile']" />
       	
            <g:form action="update">

				<div class="row">
					<div class="span3">
				      <h2>Preferences</h2>
				      <p>
				      	¡Sé astuto! Tu contraseña debe tener al menos 6 caracteres y no ser una palabra del diccionario o un nombre común. 
				      	Por favor, usa una contraseña que no uses para otras cosas y cámbiala ocasionalmente.
						Nunca escribas tu contraseña en un servicio o software que parezca sospechoso.
						</p>
				    </div>
					<div class="span9">
						<fieldset>
							<legend>Preferences</legend>
							<div class="clearfix">
								<label id="optionsCheckboxes">Send me an email when</label>
								<div class="controls">
									<label> 
										<input class="checkbox" type="checkbox" name="optionsCheckboxes" value="option1"> 
											<span>Preference 1</span>
										</label>
										<label> 
										<input class="checkbox" type="checkbox" name="optionsCheckboxes" value="option2"> 
											<span>Preference 2</span>
										</label>
									<span class="help-block"> <strong>Note:</strong> Labels
										surround all the options for much larger click areas and a
										more usable form.
									</span>
								</div>
							</div>
							<!-- /clearfix -->
						</fieldset>
           
					<div class="form-actions">
						<button class="btn btn-primary">
							<g:message code="default.button.update.label" default="Update"/>
						</button>
						<button type="reset" class="btn">Cancel</button>
					</div>
				
				</div>
				</div>
           
            </g:form>
            </div>
        </div>
    </body>
</html>
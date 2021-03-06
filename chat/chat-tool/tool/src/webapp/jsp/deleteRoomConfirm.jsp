<f:view>
	<sakai:view title="#{msgs.delete_room_confirm_title}">
	<sakai:view_title value="#{msgs.delete_room_confirm_title}" />
	
	<h:outputText value="#{msgs.delete_room_confirm_alert}" styleClass="alertMessage" />
	<h:messages  rendered="#{!empty facesContext.maximumSeverity}" />
	
	<h:form styleClass="portletBody">
	
	<sakai:panel_edit>
		<h:outputLabel for="title" value="#{msgs.channel_title_colon}" />
		<h:outputText id="title" value="#{ChatTool.currentChannelEdit.chatChannel.title}" />

		<h:outputLabel for="desc" value="#{msgs.channel_description_colon}" />
		<h:outputText id="desc" value="#{ChatTool.currentChannelEdit.chatChannel.description}" />

	</sakai:panel_edit>
	
	<sakai:button_bar>
	    <h:commandButton id="delete"
	        action="#{ChatTool.processActionDeleteRoom}"
	        value="#{msgs['gen.delete']}"
	        styleClass="active" />
	    <h:commandButton id="cancel"
	        action="#{ChatTool.processActionDeleteRoomCancel}"
	        value="#{msgs['gen.cancel']}" />
	</sakai:button_bar>
	
	</h:form>
	</sakai:view>
</f:view>
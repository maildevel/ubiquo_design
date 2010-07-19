module Ubiquo::WidgetsHelper
  def widget_form(page, widget, &block)
    form_remote_for(
      :widget,
      widget,
      :url => ubiquo_page_design_widget_path(page, widget),
      :before => "killeditor()",
      :html => {  
        :method => :put,
        :name => "widget_edit_form"
      }, &block)
  end
  
  def widget_submit
    %{
      <p class="form_buttons">
        <input type="submit" class="button" value="%s" />
      </p>
    } % [t('ubiquo.design.save')]
  end
  def widget_header(widget)
    %{
      <h3>%s</h3>
      <a href="#" class="lightwindow_action close" rel="deactivate">%s</a>
      <div id="error_messages"></div>
    } % [(t('ubiquo.design.editing_widget', :name => widget.name)), t('ubiquo.design.close_widget')]
  end
end

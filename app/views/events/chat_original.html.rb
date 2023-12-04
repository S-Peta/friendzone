<div class="row">
  <div class="col-3 chat-row">
    <div class="d-flex flex-column">
      <h3> Join to another <%= @event.participants.count %> participants in this event</h3>
      <h5><%= @event.user.nickname %></h5>
      <hr>
      <div>
        <% @participant.each do |p|%>
          <h5><%= p.user.nickname %></h5>
          <hr>
        <% end %>
      </div>
    </div>
  </div>

  <div class="col-6">
    <div class="chatroom" data-controller="event-subscription" data-event-subscription-event-id-value="<%= @event.id %>">
      <div data-event-subscription-target="messages">
        <div class="messages">
          <% @event.messages.each do |message| %>
            <%= render "messages/message", message: message %>
          <% end %>
        </div>
      </div>

      <%= simple_form_for [@event, @message],
        html: { data: { action: "turbo:submit-end->event-subscription#resetForm" }, class: "d-flex" } do |f|
      %>
        <%= f.input :content,
          label: false,
          placeholder: "Message #{@event.name}",
          wrapper_html: {class: "flex-grow-1"}
        %>
        <%= f.submit "Send", class: "btn btn-light mb-3" %>
      <% end %>
    </div>

  </div>

  <div class="col-3">
    <div class="container event-row">
      <h1><%= @event.name %></h1>
      <h2><%= @event.event_date %></h2>
      <p><%= @event.period %></p>
      <p><%= @event.location %></p>
      <%= link_to 'Leave this event', events_path  %>
    </div>

    <div>@markers.to_json >> <%= @markers.to_json  %></div>
    <div style="width: 100%; height: 300px;"
      data-controller="map"
      data-map-markers-value="<%= @markers.to_json %>"
      data-map-api-key-value="<%= ENV['MAPBOX_API_KEY'] %>">
    </div>

  </div>
</div>


<%# <ul class="chat-thread">
	<li>Are we meeting today?</li>
	<li>yes, what time suits you?</li>
	<li>I was thinking after lunch, I have a meeting in the morning</li>
</ul>

<form class="chat-window">
	<input class="chat-window-message" name="chat-window-message" type="text" autocomplete="off" autofocus />
</form> %>

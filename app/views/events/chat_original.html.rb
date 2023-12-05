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

###

<div class="chat-list">

<ul class="ul-chat">
  <li class="me">
    <div class="name">
      <span class="">Cucu Ionel</span>
    </div>

    <div class="message">
      <p>Hey, do you like the new interface? It's done with Font Awesome.</p>
      <span class="msg-time">5:00 pm</span>
    </div>
  </li>

  <li class="">
    <div class="name">
      <span class="">Christian Smith</span>
    </div>
    <div class="message">
      <p><span class="blue-label">Cucu Ionel</span> I see what you did there.</p>
      <span class="msg-time">5:01 pm</span>
    </div>
  </li>


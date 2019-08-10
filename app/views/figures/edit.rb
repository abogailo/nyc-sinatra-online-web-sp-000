<h2>Edit Historical <Figure></Figure></h2>

 <form action="/figures/<%= @figure.id %>" method="post">
  <input id="hidden" type="hidden" name="_method" value="patch">
  <label for="figure_name">Figure Name:</label>
  <input type="text" name="figure[name]" id="figure_name" value="<%= @figure.name %>">
  <br><br>

   <label for="title">Titles: </label>
  <ul style="list-style-type: none; margin-top: 0;">
  <% @titles.each do |title| %>
  <li>
  <input type="checkbox" name="figure[title_ids][]" id="title_<%= title.id %>" value="<%= title.id %>" <%='checked' if @figure.titles.ids.include?(title.id) %> ><%= title.name %></input>
  </li>
  <% end %>
  </ul>

   <label for="figure_name">New Title:</label>
  <input type="text" name="title[name]" id="new_title">

   <br><br>

   <label for="title">Landmarks: </label>
  <ul style="list-style-type: none; margin-top: 0;">
  <% @landmarks.each do |landmark| %>
  <li>
  <input type="checkbox" name="figure[landmark_ids][]" id="landmark_<%= landmark.id %>" value="<%= landmark.id %>" <%='checked' if @figure.landmarks.ids.include?(landmark.id) %>><%= landmark.name %></input>
  </li>
  <% end %>
  </ul>

   <label for="figure_name">New Landmark:</label>
  <input type="text" name="landmark[name]" id="new_landmark">

   <br><br>

   <input type="submit" value="Edit Figure">
</form>

 <a class="button" href="/figures">Figures</a>
<a class="button" href="/">Home</a>

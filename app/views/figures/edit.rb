<h1>Update Figure Below</h1>


   <form action="/figures/<%= @figure.id %>" method="POST">
    <input id="hidden" type="hidden" name="_method" value="patch">
    Edits for Figure <input type=text name="figure[name]" id="figure_name" value="<%= @figure.name %>"><br>
    <p>Select an existing title</p>
    <h3>Existing Titles</h3>
    <% @titles.each do |title| %>
      <input type="checkbox" name="figure[title_ids]" value="<%= title.id %>" id="<%= title.id %>" <%='checked' if @figure.titles.include?(title) %>><%= title.name %><br>
    <% end %>
    <br>
    <h3>Add A New Landmark:</h3>
  <label>Name: </label>
    <input type="text" name="landmark[name]" id="new_landmark" placeholder="Landmark's name.."></input>
  <br><br>
    <input type="submit" value="Edit Figure">
  </form>

 <a class="button" href="/figures">All Figures</a>
<br>
<a class="button" href="/">Home</a>

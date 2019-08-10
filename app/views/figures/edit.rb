<form action='/figures/<%=@figure.id%>' method='post'>
  <input id="hidden" type="hidden" name="_method" value="PATCH">

   <label for='figure_name'> Name: </label>
  <input type='text' name='figure[name]' id='figure_name' value='<%=@figure.name%>'>
  <br><br>

   <h4>Titles</h4>
  <% Title.all.each do |title| %>
    <label for='<%=title.name%>'> <%=title.name%> </label>
    <input type='checkbox' name='figure[title_ids][]' id=<%="title_#{title.id}"%> value='<%=title.id%>' <%if @figure.titles.include?(title)%> checked='true'<% end %>>
    <br>
  <% end %>
  <br>

   <h5>Create New Title</h5>
  <label for='title[name]'>New Title:</label>
  <input type='text' name='title[name]' id='new_title'>

   <h4>Landmarks</h4>
  <% Landmark.all.each do |landmark| %>
    <label for='<%=landmark.name%>'> <%=landmark.name%> </label>
    <input type='checkbox' name='figure[landmark_ids][]' id=<%="landmark_#{landmark.id}"%> value='<%=landmark.id%>' <%if @figure.landmarks.include?(landmark)%> checked='true'<% end %>>
    <br>
  <% end %>
  <br>

   <h5>Create New Landmark</h5>
  <label for='landmark[name]'>Name:</label>
  <input type='text' name='landmark[name]' id='new_landmark'>
  <label for='landmark[year]'>Year:</label>
  <input type='text' name='landmark[year_completed]'>

   <input type='submit' value='Edit Figure'>
</form>

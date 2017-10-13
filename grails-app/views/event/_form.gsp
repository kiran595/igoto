<%@ page import="igoto.Event" %>
<table>
    <tr>
        <td>Event Name</td>
        <td><g:textField name="event_name" value="${editEvent?.event_name}"></g:textField></td>
    </tr>
    <tr>
        <td>Event Type</td>
        <td><select name="event_type">
            <option>Type</option>
            <option value="public">Public</option>
            <option value="private">Private</option>
        </select></td>
    </tr>
    <tr>
        <td>Venue</td>
        <td><g:textField name="venue" value="${editEvent?.event_name}"></g:textField></td>
    </tr>
    <tr>
        <td>Organizer Name</td>
        <td><g:textField name="organizers_name" value="${editEvent?.organizers_name}"></g:textField></td>
    </tr>
    <tr>
        <td>Contact Number</td>
        <td><g:textField name="contact" value="${editEvent?.contact}"></g:textField></td>
    </tr>
    <tr>
        <td>Duration</td>
        <td><g:textField name="event_time" placeholder="1pm-5pm" value="${editEvent?.event_time}"></g:textField></td>
    </tr>
    <tr>
        <td>Date of event</td>
        <td><g:datePicker name="event_date" value="${editEvent?.event_date}" precision="day"></g:datePicker></td>
    </tr>
    %{--<tr>--}%
        %{--<td>Created Date</td>--}%
        %{--<td><g:formatDate name="created_date" format="yyyy-MM-dd" date="${new Date()}"/></td>--}%
    %{--</tr>--}%
    <tr>
        <td>Category</td>
        <td><g:select name="category" from="${igoto.Category.list()}" value="${event?.category?.cat_name}" optionKey="id" optionValue="cat_name"></g:select> </td>
    </tr>
    <tr>
        <td>Description</td>
        <td><g:textArea name="description" value="${editEvent?.description}"></g:textArea></td>
    </tr>
    %{--<% System.out.println %>--}%
</table>
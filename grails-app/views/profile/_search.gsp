

%{--SEARCH RESULT--}%

    <g:if test="${profileinfo}">
        <g:each in="${profileinfo}" var="list">
           <table>
               <tr style="padding-right: 100px;">
                   <td><g:img dir="/images/profilepic" file="${list?.image}" width="50"></g:img></td>
                   <td style="position: relative;left: 20%"><g:link controller="profile" action="viewprofile" id="${list?.id}"> ${list?.userName}</g:link></td>
               </tr>
               <tr>
                   <td style="position: relative;left: 70%">
                       <g:if test="${userGot?.following?.profile?.id?.contains(list?.id)}">
                           <g:link controller="profile" action="unfollow" id="${list?.id}">Unfollow</g:link>
                       </g:if>
                       <g:else>
                           <g:link controller="profile" action="follow" id="${list?.id}">Follow</g:link>
                       </g:else>
                   </td>
               </tr>
           </table>
        </g:each>
    </g:if>

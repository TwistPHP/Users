<h1>Edit: {data:firstname} {data:surname} [{data:id}]</h1>
{messages:all}
<form action="/manager/users/edit/{data:id}" method="post" autocomplete="false">

    <div class="box box25">
        <div class="boxTitle">
            <h3>Avatar</h3>
        </div>
        <div class="boxContent">
            <img src="{data:avatar_url}">
            {asset:upload,name=avatar_new,group='avatar',accept=".jpg|.png|.jpeg"}
        </div>
        <div class="boxFooter">

        </div>
    </div>

    <div class="box box75">
        <div class="boxTitle">
            <h3>Account Details</h3>
        </div>
        <div class="boxContent">

            <label>Name</label>
            <input type="text" class="half" name="firstname" value="{data:firstname}" autocomplete="false">
            <input type="text" class="half" name="surname" value="{data:surname}" autocomplete="false">

            <p>As you email address is used to log you in to the system we will require you to click an email verification link before your change will be accepted.</p>
            <label>Email</label>
            <input type="email" name="email" value="{data:email}" autocomplete="false">

            <div class="infoContainer" {data:user/temporary_email==undefined?'style="display:none;"':''}>
                Pending update, validation link sent: {data:user/temporary_email} <a href="?email-validation=cancel" class="float-right">Cancel</a>
                <div class="clear"></div>
            </div>

            <label>User level</label>
            <select name="level" id="levels" value="{data:level}">
                <option value="0" {data:level==0?"selected":""} >Root user</option>
                <option value="10" {data:level==10?"selected":""} >Super Admin</option>
                <option value="20" {data:level==20?"selected":""} >Admin</option>
                <option value="30" {data:level==30?"selected":""} >Normal user</option>
            </select>

            <div class="clear"></div>
        </div>
        <div class="boxFooter">
            <button class="button button-primary" type="submit">Save Changes</button>
        </div>
    </div>

    <div class="tabContainer">
        <ul class="tabButtons">
            <li>Address</li>
            <li>Devices</li>
            <li>Security</li>
            {data:tabs}
        </ul>
        <div class="tab">
            <div class="box">
                <div class="boxTitle">
                    <h3>Address Details</h3>
                </div>
                <div class="boxContent">

                    <label>Address Line1</label>
                    <input type="text" name="address_line1" value="{data:address_line1}" autocomplete="false">

                    <label>Address Line2</label>
                    <input type="text" name="address_line2" value="{data:address_line2}" autocomplete="false">

                    <label>City</label>
                    <input type="text" name="city" value="{data:city}" autocomplete="false">

                    <label>Region</label>
                    <input type="text" name="region" value="{data:region}" autocomplete="false">

                    <label>PostCode</label>
                    <input type="text" name="postcode" value="{data:postcode}" autocomplete="false">


                </div>
                <div class="boxFooter">

                </div>
            </div>
        </div>
        <div class="tab">
            <div class="box">
                <div class="boxTitle">
                    <h3>Connected Devices</h3>
                </div>
                <div class="boxContent">
                    {user:devices_form}
                </div>
                <div class="boxFooter">

                </div>
            </div>
        </div>
        <div class="tab">
            <div class="box">
                <div class="boxTitle">
                    <h3>Account Security</h3>
                </div>
                <div class="boxContent">

                    <p>An account can be suspended, this will mean that the user is unable to login or interact with the system. Suspended accounts can be re-enabled</p>
                    <dl>
                        <dt>Account Created</dt><dd>{data:joined}</dd>
                        <dt>Last Login</dt><dd>{data:last_login}</dd>
                        <dt>Account Enabled</dt><dd><small><input type="checkbox" name="enabled" class="slim" value="1" {data:enabled=='1'?'checked':''}></small></dd>
                    </dl>

                    <p>Users and devices can be blocked by IP address when undesirable activity has been detected, too many failed login's, URL snooping and other actives. Below you can see any activity relating to recent IP addresses this users has been known to use. IP addresses may not be unique to this user and could be part of a larger public/private network.</p>
                    <dl>
                        <dt>{data:last_login_ip}</dt><dd><a href="#">Block</a> | <a href="#">Whitelist</a></dd>
                    </dl>

                    <p>If a user has forgotten their password or you the account has been compromised a password change request can be sent to the user. The change request will contain a unique link allowing the user to change their password, this link will be valid for 48 hours.</p>
                    <dl>
                        <dt>Last Changed</dt><dd>{data:Y-m-d H:i:s}</dd>
                        <dt>Link Expires</dt><dd>{data:Y-m-d H:i:s}</dd>
                        <dd><a href="#">Send Forgotten Password Link</a></dd>
                    </dl>


                </div>
                <div class="boxFooter">

                </div>
            </div>
        </div>
        {data:tab_content}
    </div>


</form>
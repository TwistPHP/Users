<h1>Users: Create</h1>
<p>This is where you can create users which will be automatically added to the database to reuse within your app.</p>
{messages:all}
<form action="/manager/users/create" method="post" autocomplete="false">
    <div class="box">
        <div class="boxTitle">
            <h3>Account Details</h3>
        </div>
        <div class="boxContent">
            <label>First Name<sup>*</sup></label>
            <input type="text" name="firstname">
            <label>Surname<sup>*</sup></label>
            <input type="text" name="surname">
            <label>Email<sup>*</sup></label>
            <input type="email" name="email">
            <label>User level<sup>*</sup></label>
            <select name="level" id="levels">
                <option value="0">Root user</option>
                <option value="10">Super Admin</option>
                <option value="20">Admin</option>
                <option value="30">Normal user</option>
            </select>
            <label>Password<sup>*</sup></label>
            <input type="password" name="password" required>
            <div class="clear"></div>
        </div>
        <div class="boxFooter">
            <button class="button button-primary" type="submit">Create</button>
        </div>
    </div>
</form>
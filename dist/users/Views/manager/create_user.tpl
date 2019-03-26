
<div class="box 100">
    <div class="box 100" style="border:0;">
        <h2 style="padding-left: 10px;">Create User</h2>
        <p>This is where you can create users which will be automatically added to the database to reuse within your app.</p>
        {messages:error}
        <form action="/manager/users/create" method="post">
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
    </div>
        <div class="boxFooter">
            <button class="button button-primary" type="submit">Submit</button>
        </div>
    </form>
</div>
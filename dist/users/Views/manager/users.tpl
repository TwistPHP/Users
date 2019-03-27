<h1>Users</h1>
<p>Here is a list of users currently registered on your application. Through this dashboard you can either create,edit or delete users.</p>
<div class="buttonBar">
    <a href="/manager/users/create" class="button button-primary"><span class="fas fa-user-plus"></span> Create New</a>
</div>
<table>
    <thead>
    <tr>
        <td>UserID</td>
        <td>Email</td>
        <td>Name</td>
        <td>Last active</td>
        <td>User permissions</td>
        <td>User IP</td>
        <td></td>
    </tr>
    </thead>
    <tbody>
    {data:users}
    </tbody>
</table>
<script>
    $(document).on('click','.delete-user',function(){
        return confirm("Are you sure you want to delete this user?");
    });
</script>
<style>
    .showOnHover{ display: none; } .showHover:hover .showOnHover{ display: block; } tbody a{ font-size: 30px; color: #000;padding-right: 5px;} tbody a:hover{ color: #529F00; transition: all 0.5s ease-in;} p a{ font-size: 16px; text-decoration: none; color: #000; } p a:hover{ color: #529F00; transition: all 0.5s ease-in; } a:visited{ color: #000;} .box-inner{padding:20px;} .box-inner h2{padding-left:10px;}
</style>

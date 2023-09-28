<div class="container">
    <h1 class="text-info text-center"></h1>
    <form action="{{url('form')}}" method="post">
@csrf
    <div class="mb-3">
        <label for="exampleInputEmail1" class="form-label">name</label>
        <input type="text" class="form-control" name="userName">
      
    </div>
    <div class="mb-3">
        <label for="exampleInputEmail1" class="form-label">Email </label>
        <input type="email" class="form-control" name="userEmail">

    </div>
    <button type="submit" class="btn btn-primary">Button</button>
    </form>
</div>
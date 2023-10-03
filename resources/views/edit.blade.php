<div class="container">
    <h1 class="text-info text-center"></h1>
    <form action="{{url('edit')}}" method="post">
@csrf
    <div class="mb-3">
        <input type="hidden" name="userId" value="{{$data['id']}}">
        <label for="exampleInputEmail1" class="form-label">name</label>
        <input type="text" class="form-control" value="{{$data['name']}}" name="userName">
      
    </div>
    <div class="mb-3">
        <label for="exampleInputEmail1" class="form-label">Email </label>
        <input type="email" class="form-control" value="{{$data['email']}}"  name="userEmail">

    </div>
    <button type="submit" class="btn btn-primary">update</button>
    </form>
</div>
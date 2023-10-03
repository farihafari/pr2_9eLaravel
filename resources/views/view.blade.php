<div class="container">
    <table class="table">
        <thead>
            <tr>
                <th scope="col">id</th>
                <th scope="col">name</th>
                <th scope="col">email</th>
                <th scope="col" colspan="2">action</th>
            </tr>
        </thead>
        <tbody>
            @foreach($data as $viewAll)
            <tr>
                <td scope="row">{{$viewAll['id']}}</td>
                <td>{{$viewAll['name']}}</td>
                <td>{{$viewAll['email']}}</td>
                <td>
                    <a href="{{'edit/'.$viewAll['id']}}" class="btn btn-outline-success">edit</a>
                </td>
                <td>
                <a href="{{'delete/'.$viewAll['id']}}" class="btn btn-outline-danger">delete</a>
                </td>
            </tr>
          @endforeach
        </tbody>
    </table>
</div>
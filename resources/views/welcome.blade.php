<table class="table table-primary">

    <tbody>
        @for($i=1;$i <=10; $i++)
        <tr>
            <td scope="row">{{5}}</td>
            <td>{{"X"}}</td>
            <td>{{$i}}</td>
            <td>{{"="}}</td>
            <td>{{$i * 5}}</td>
        </tr>
@endfor       
    </tbody>
</table>

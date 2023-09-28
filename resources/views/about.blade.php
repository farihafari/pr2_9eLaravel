<ul class="list-group">
    @for($i=0;$i < count($array); $i++)
    <li class="list-group-item" aria-current="true">{{$array[$i]}}</li>
@endfor
</ul>
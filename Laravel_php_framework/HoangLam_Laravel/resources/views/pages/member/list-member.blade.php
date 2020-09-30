 @extends('index')

 @section('content')
 @if(session('noti'))
 <div class="alert-success">
 	<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
 	<strong>Thông báo!</strong> {{session('noti')}}
 </div>
  @endif
<h4>Đây là trang danh sách học viên</h4>
<table class="table table-hover">
	<thead>
		<tr>
			<th>STT</th>
			<th>Name</th>
			<th>Phone</th>
			<th>Email</th>
			<th>Address</th>
			<th>Action</th>
		</tr>
	</thead>
	<tbody>
		<?php $count=0; ?>
		@foreach($rs as $key=>$value)
		<tr>
			<td>{{$count+=1}}</td>
			<td>{{$value->name}}</td>
			<td>{{$value->phone}}</td>
			<td>{{$value->email}}</td>
			<td>{{$value->address}}</td>
			<td><button class="btn-danger">Delete</button>
				<button class="btn-primary">Edit</button>
			</td>
		</tr>
		@endforeach

	</tbody>
</table>
{{ $rs->links() }}
@endsection
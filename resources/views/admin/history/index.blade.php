@extends('admin.default')

@section('content')
    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1>История колледжа</h1>
                    </div>
                    <div class="col-sm-6 d-flex justify-content-end">
                        <div class="form-group">
                            <a href="{{route('history.create')}}" class="btn btn-success">Добавить</a>
                        </div>
                    </div>
                </div>
            </div><!-- /.container-fluid -->
        </section>

        <!-- Main content -->
        <section class="content">
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-body">
                            @include('admin.messages')
                            <table id="table" class="table table-bordered table-striped">
                                <thead>
                                <tr>
                                    <th>Год</th>
                                    <th>Описание события</th>
                                    <th>Операции</th>
                                </tr>
                                </thead>
                                <tbody>
                                @foreach($history as $history_item)
                                    <tr>
                                        <td>{{$history_item->year}}</td>
                                        <td>{{$history_item->description}}</td>
                                        <td class="d-flex justify-content-center align-items-center">
                                            <a href="{{route('history.edit', $history_item->id)}}" class="p-2 fas fa-pencil-alt"></a>
                                            <form action="{{route('history.destroy', $history_item->id)}}" method="POST">
                                                @csrf
                                                @method('DELETE')
                                                <button onclick="return confirm('Вы действительно хотите удалить запись?')" type="submit" class="delete p-2">
                                                    <i class="far fa-trash-alt"></i>
                                                </button>
                                            </form>
                                        </td>
                                    </tr>
                                @endforeach
                                </tbody>
                            </table>
                        </div>
                        <!-- /.card-body -->
                    </div>
                    <!-- /.card -->
                </div>
                <!-- /.col -->
            </div>
            <!-- /.row -->
        </section>
        <!-- /.content -->
    </div>
    <!-- /.content-wrapper -->
@endsection

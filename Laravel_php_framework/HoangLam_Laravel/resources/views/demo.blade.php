<!DOCTYPE html>
<html lang="">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Title Page</title>

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.2/html5shiv.min.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->
    </head>
    <body>
   
        <h1 class="text-center">Hello World 
        @if(isset($name)&&isset($age))
        {{$name.' _ '.$age}}
        @endif
        </h1>
        {{'Xin chao kieu Laravel'}}

        {{'<h1>Xin chao kieu Laravel</h1>'}}

        {!!'<h1 style="color:red;">Xin chao kieu Laravel</h1>'!!}

        @for($i=0;$i<10;$i++)
        {!!'Gia tri cua i='.$i."<br>"!!}
        {{-- {{'Gia tri cua i='.$i}} </br> --}}
        @endfor
        
        <?php 
        $number=10;
        $arr=array(
            '1' => array(
                'name' => 'Tung',
                'phone' => '0398724414'
            ),
            '2' => array(
                'name' => 'Mai',
                'phone' => '0398722214'
            )
        );
         ?>
        @if($number>5)
            {!!'Gia tri number > 5'.'<br>'!!}
        @endif

        @foreach($arr as $key => $value)
        {!! $value['name']."<br>" !!}
        @endforeach
        <!-- jQuery -->
        
        <script src="//code.jquery.com/jquery.js"></script>
        <!-- Bootstrap JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
        <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
         <script src="Hello World"></script>
    </body>
</html>
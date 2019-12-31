@section('title')
    Liên Hệ
@endsection

@extends('index')

@section('content')
    <!-- Page Content -->
    <div class="container">

    	@include('block.slide')

        <div class="space20"></div>


        <div class="row main-left">
            @include('block.menu')

            <div class="col-md-9">
	            <div class="panel panel-default">            
	            	<div class="panel-heading" style="background-color:#337AB7; color:white;" >
	            		<h2 style="margin-top:0px; margin-bottom:0px;">Liên hệ</h2>
	            	</div>

	            	<div class="panel-body">
	            		<!-- item -->
                        <h3><span class="glyphicon glyphicon-align-left"></span> Thông tin liên hệ</h3>
					    
                        <div class="break"></div>
					   	<h4><span class= "glyphicon glyphicon-home "></span> Địa chỉ : </h4>
                        <p>53 Võ Văn Ngân, Phường Linh Chiểu, Quận Thủ Đức, TP. HCM </p>

                        <h4><span class="glyphicon glyphicon-envelope"></span> Email : </h4>
                        <p>53 Võ Văn Ngân, Phường Linh Chiểu, Quận Thủ Đức, TP. HCM </p>

                        <h4><span class="glyphicon glyphicon-phone-alt"></span> Điện thoại : </h4>
                        <p>53 Võ Văn Ngân, Phường Linh Chiểu, Quận Thủ Đức, TP. HCM  </p>



                        <br><br>
                        <h3><span class="glyphicon glyphicon-globe"></span> Bản đồ</h3>
                        <div class="break"></div><br>
                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3918.4647139694916!2d106.75635931430763!3d10.852215460758856!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31752797e321f8e9%3A0xb3ff69197b10ec4f!2zVHLGsOG7nW5nIENhbyDEkOG6s25nIEPDtG5nIG5naOG7hyBUaOG7pyDEkOG7qWM!5e0!3m2!1svi!2s!4v1576649762469!5m2!1svi!2s" width="600" height="450" frameborder="0" style="border:0;" allowfullscreen=""></iframe>

					</div>
	            </div>
        	</div>
        </div>
        <!-- /.row -->
    </div>
    <!-- end Page Content -->
@endsection

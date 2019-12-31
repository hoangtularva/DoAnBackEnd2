<div class="col-md-3 ">
    <ul class="list-group" id="menu">
        <li href="#" class="list-group-item menu1 active">
            Danh Sách Thể Loại
        </li>
        <?php
        $count1=1;
        ?>
        @foreach($data['theloai'] as $cate)
            @if(count($cate->LoaiTin) > 0)
            <li class="list-group-item menu1 cate-list">
                <?php echo $count1; ?>. {{ $cate->Ten }}
            </li>
            <ul>
                <?php
                    $count2 = 1;
                ?>
                @foreach($cate->LoaiTin as $subcate)
                    <li class="list-group-item">
                        <a href="loai-tin/{{ $subcate->TenKhongDau }}"><?php echo $count2; ?>. {{ $subcate->Ten }}</a>
                        <?php $count2++; ?>
                    </li>
                @endforeach
            </ul>
            <?php
                $count1++;
            ?>
            @endif
        @endforeach
    </ul>
</div>


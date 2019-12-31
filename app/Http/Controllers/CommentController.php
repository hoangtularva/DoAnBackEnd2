<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\TinTuc;
use App\Comment;

class CommentController extends Controller
{
    //

    //Lấy danh sách tất cả các bình luận
    public function getDanhSach(){
    	$comment = Comment::all();
    	return view('admin.comment.danhsach',['comment'=>$comment]);
    }

    //Xóa bình luận
    public function Xoa($id){
    	$comment = Comment::find($id);
    	$comment->delete();
    	return redirect('admin/tintuc/sua/'.$comment->TinTuc->id)->with('message','Xóa Bình Luận Thành Công!');
    }

    // Thêm bình luận
    public function Them($article_id,Request $request){
        $this->validate($request,
            [
                'content' => 'required'
            ],
            [
                'content.required' => 'Bạn chưa nhập nội dung'
            ]);
        $tintuc = TinTuc::find($article_id);
        $comment = new Comment;
        $comment->idUser = Auth::user()->id;
        $comment->idTinTuc = $article_id;
        $comment->NoiDung = $request->content;
        $comment->save();

        return redirect('tin-tuc/'.$tintuc->TieuDeKhongDau.'.html')->with('message','Bình Luận đã được đăng!');
    }
}

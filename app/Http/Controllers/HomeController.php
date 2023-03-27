<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Dictionary;

class HomeController extends Controller
{

    //Welcome view
    function welcome()
    {

        $dictionaries = Dictionary::orderBy('japanese', 'ASC')->get();
        return view('/welcome', compact('dictionaries'));
    }

    function addWord(Request $request)
    {
        $dictionary = new Dictionary();
        $dictionary->japanese = $request->japanese;
        $dictionary->pronuciation = $request->pronuciation;
        $dictionary->english = $request->english;
        $dictionary->vietnamese = $request->vietnamese;
        $dictionary->save();

        return redirect()->back();
    }

    function deleteWord($id)
    {
        $checkId = Dictionary::find($id);
        if ($checkId) {
            $wordDelete = Dictionary::where('id', $id)->select('japanese')->get();
            Dictionary::find($id)->delete();
            return redirect()->back()->with('infoDeleteWord',  " " . $wordDelete[0]->japanese . " đã được xóa khỏi từ điển.");;
        }
        return redirect()->back()->with('infoDeleteWord', "Xảy ra lỗi khi xóa, vui lòng thử lại!");
    }

    function updateWord(Request $request, $id)
    {
    }

    // Training view
    function training()
    {
        return view('training');
    }
}

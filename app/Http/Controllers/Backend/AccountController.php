<?php

namespace App\Http\Controllers\Backend;
use App\AccountSector;
use App\Account;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Services\Account\AccountService;
use DB;

class AccountController extends Controller
{
   protected $accountSectors;

  public function __construct(AccountService $accountSectors){
    $this->accountSectors = $accountSectors;
  }

  public function sectors(){

  	$sectors = \DB::table('account_sectors')->get();
    $account_type = 'income';
    
    $incomes = \DB::table('accounts')->where('type', $account_type)
                          ->orderBy('id', 'desc')
                          ->take(50)
                          ->get();

    $account_type = 'expense';
    $expenses = \DB::table('accounts')->where('type', $account_type)
                          ->orderBy('id', 'desc')
                          ->take(50)
                          ->get();

    $sector = [];
    return view('backend.accounts.sector',compact('sectors','sector','incomes','expenses'));
  }
  /**
  * Show the form for creating a new resource.
  *
  * @return Response
  */
  public function storeSector(){
  	$input = \Request::all();
    DB::table('account_sectors')->insert(
                array(
                'user_id' => auth()->user()->id,
                'name' => $input['name'],
                'type' => $input['type'],
                'created_at' => date('Y-m-d H:i:s'),
                'updated_at' => date('Y-m-d H:i:s')
                ));
    return back()->with("status","Account Sector Created Succesfully.");
  }
  public function expense(){
    
    $sectors = \DB::table('account_sectors')->where('type', 'expense')
                          ->get();
    return view('backend.accounts.expense',['sectors'=>$sectors]);

  }
  public function storeExpense(){
    $input = \Request::all();
    //dd($input);
    DB::table('accounts')->insert(
                array(
                'user_id' => auth()->user()->id,
                'name' => $input['name'],
                'type' => 'expense',
                'amount' => $input['amount'],
                'description' => $input['description'],
                'created_at' => date('Y-m-d H:i:s'),
                'updated_at' => date('Y-m-d H:i:s')
                ));

    return back()->with("status","expense saved Successfully.");
  }
  public function listExpense(){
    $expenses = [];
    return view('backend.accounts.expense-list',['expenses'=>$expenses]);
  }

  public function postExpense(){
    $input = \Request::all();
 $expenses = \DB::table('accounts')->where('type', 'expense')
                          ->whereYear('created_at',$input['year'])
                          ->get();
    return view('backend.accounts.expense-list',compact('expenses'));
  }
  public function income(){
    $sectors = \DB::table('account_sectors')->where('type', 'income')
                          ->get();
    return view('backend.accounts.income',['sectors'=>$sectors]);

  }
  public function storeIncome(){
    $input = \Request::all();
    //dd($input);
    DB::table('accounts')->insert(
                array(
                'user_id' => auth()->user()->id,
                'name' => $input['name'],
                'type' => 'income',
                'amount' => $input['amount'],
                'description' => $input['description'],
                'created_at' => date('Y-m-d H:i:s'),
                'updated_at' => date('Y-m-d H:i:s')
                ));


    return back()->with("status","Income saved Successfully.");
  }
  public function listIncome(){
    //dd('jjjjjjj');
    $incomes = [];
    return view('backend.accounts.income-list',['incomes'=>$incomes]);
  }
  public function postIncome(Request $request){
    $input = \Request::all();
    
 $incomes = \DB::table('accounts')->where('type', 'income')
                          ->whereYear('created_at',$input['year'])
                          ->get();

    return view('backend.accounts.income-list',compact('incomes'));
  }
}

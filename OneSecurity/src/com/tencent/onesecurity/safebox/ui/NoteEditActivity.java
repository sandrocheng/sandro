package com.tencent.onesecurity.safebox.ui;

import com.tencent.onesecurity.R;
import com.tencent.onesecurity.safebox.manager.NoteManager;
import com.tencent.onesecurity.usage.google.GoogleAnalyticsTracker;
import android.content.Context;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import android.view.View.OnClickListener;
import android.view.inputmethod.InputMethodManager;
import android.widget.ScrollView;
import android.widget.TextView;


/**
 * @ClassName: NoteEditActivity
 * @Description:TODO(编辑查看NOTE页面)
 * @author: Sean
 * @date: 2012-10-29 下午4:13:59
 * 
 */

public class NoteEditActivity extends BaseSafeBoxActivity {
	// constant
	MemoEditText memoEditText;// 文本编辑
	TextView tv_date;// 日期显示
	String text;// 文本内容
	Boolean fromEditeBtn;// 判断是添加还是编辑note
	long noteId;// 如果是是编辑NOTE需要传入NOTE项的存储ID
	private String strOldMemoEditText;// buck:原有的日记内容，如果当前最新的内容与原有的内容相当则不进行保存操作
	private boolean hasMeasured;
	private ScrollView sv_editeView;
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onCreate(savedInstanceState);
		fromEditeBtn = this.getIntent().getBooleanExtra(NoteListActivity.fromEditeNote, false);
		setContentView(R.layout.layout_safebox_note_edit_activity);
//		createTitleBar(null);		
//		super.createTitleBar(R.drawable.title_bar_back, R.drawable.safebox_edit_style, -1);// 创建titlebar
		sv_editeView=(ScrollView) findViewById(R.id.sv_editeView);
		memoEditText = (MemoEditText) findViewById(R.id.note_edit);
		//通过获取memoEditText 的高度计算填充横线的个数。
		ViewTreeObserver vto = memoEditText.getViewTreeObserver();
		vto.addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener()
        {
			public boolean onPreDraw() {
				if (hasMeasured == false) {
					// 获取高度后，用于计算
					int height = sv_editeView.getMeasuredHeight();					
					memoEditText.countOfOneScreen = height/memoEditText.LineHeight;	
					memoEditText.setMinLines(memoEditText.countOfOneScreen-1);
					hasMeasured = true;
				}
				return true;
			}
		});
		memoEditText.setOnClickListener(new OnClickListener() {
			
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				/*--Sean fix bug NO    9586665----20121207-------S-*/
				memoEditText.setLongClickable(true);
				/*--Sean fix bug NO    9586665----20121207-------E-*/
				memoEditText.setCursorVisible(true);
				setSubTitleBarBtnVisable(findViewById(R.id.safe_note_titlebar), -1, View.VISIBLE);
				createTitleBar(titleBarOnClickListener);
			}
		});
		/*--Sean fix bug NO   9577816----20121204-------S-*/
		memoEditText.setOnEditorActionListener(new MemoEditText.OnEditorActionListener() {
			@Override
			public boolean onEditorAction(TextView textview, int i, KeyEvent keyevent) {
				
				if (keyevent.getAction() == KeyEvent.ACTION_DOWN) {
					if (" ".equals(memoEditText.getText())) {
						memoEditText.invalidate();
					}
				}
				return false;
			}
			
		});
		/*--Sean fix bug NO   9577816----20121204-------E-*/

		// memoEditText.setBackgroundResource(R.drawable.bg_menu_bottom_nor);
		tv_date = (TextView) findViewById(R.id.tv_note_date);

		if (fromEditeBtn) {
			// google数据上报
			GoogleAnalyticsTracker.getInstance().trackView("编辑文本");
			noteId = this.getIntent().getLongExtra(NoteListActivity.noteId, 0);
			String text = this.getIntent().getStringExtra(NoteListActivity.NoteText);
			memoEditText.setText(text);
			memoEditText.setCursorVisible(false);
			/*--Sean fix bug NO    9586665----20121207-------S-*/
			memoEditText.setLongClickable(false);
			/*--Sean fix bug NO    9586665----20121207-------E-*/
			this.getWindow().setSoftInputMode(WindowManager.LayoutParams.SOFT_INPUT_STATE_ALWAYS_HIDDEN);
			createTitleBar(null);
			setSubTitleBarBtnVisable(findViewById(R.id.safe_note_titlebar), -1, View.INVISIBLE);
			// memoEditText.setSelection(text.length());
			//createTitleBar(titleBarOnClickListener);
			long updateTime = this.getIntent().getLongExtra(NoteListActivity.updateTime, 0);
			tv_date.setText(NoteManager.getInstance().formatData(updateTime));			
			

		} else {
			// google数据上报
			GoogleAnalyticsTracker.getInstance().trackView("添加文本");
			tv_date.setText(NoteManager.getInstance().formatData(System.currentTimeMillis()));
			createTitleBar(titleBarOnClickListener);
//			tv_date.setFocusable(false);
//			tv_date.setFocusableInTouchMode(false);
//			memoEditText.setFocusable(true);
//			memoEditText.setFocusableInTouchMode(true);
		}
		strOldMemoEditText = memoEditText.getText().toString();
	}
	private OnClickListener titleBarOnClickListener = new OnClickListener() {
		
		@Override
		public void onClick(View v) {
			if (memoEditText.length() == 0) {
				saveDeletDataToDB();
				finish();
			} else {
				collapseSoftInputMethod();
				saveDataToDB();
				finish();
			}
		
			
		}
	};
	
	
	private void createTitleBar(OnClickListener titleBarOnClickListener) {
		String title = null;
		/*--Sean fix bug NO    9581735----20121205-------S-*/
		if (fromEditeBtn) {
			title = this.getIntent().getStringExtra(NoteListActivity.NoteText);
			/*--Sean fix bug NO    9648290----20130111-------S-*/
			if(title==null){
				//getString(R.string.safebox_notes_new_title); // 2013.1.14 原代码
				title = getString(R.string.safebox_notes_new_title);// add by lee
			}
			/*--Sean fix bug NO    9648290----20130111-------E-*/
			if (title != null && title.length() > 12) {
				title = title.substring(0, 10)+"...";
			}			
		} else {
			title = getString(R.string.safebox_notes_new_title);
		}
		/*--Sean fix bug NO    9581735----20121205-------E-*/
		updateSubTitleBar(this, findViewById(R.id.safe_note_titlebar), title, -1, null,
				R.drawable.sel_btn_vault_note_save,titleBarOnClickListener, true);
	}
	
	@Override
	protected void onPause() {
		// TODO Auto-generated method stub
		saveDataToDB();
		// Toast.makeText(this, "pause", Toast.LENGTH_SHORT).show();
		super.onPause();
	}

	@Override
	public void onBackPressed() {
		// TODO Auto-generated method stub
		if (memoEditText.length() == 0) {
			saveDeletDataToDB();			
		} else {
			collapseSoftInputMethod();
			saveDataToDB();													
		}				
		super.onBackPressed();
	}

	// 往数据库中存储数据
	private void saveDataToDB() {
		// TODO Auto-generated method stub
		String text = memoEditText.getText().toString();
		if (strOldMemoEditText.equals(text)) {// 如果当前最新的内容与原有的内容相当则不进行保存操作
			return;
		}
		boolean saveSuccess;
		if (!text.equals("") && fromEditeBtn) {
			saveSuccess = NoteManager.getInstance().updateDate(text, noteId);
			if (!saveSuccess) {
				showDialogNoSDCard();
			}
		} else if (!text.equals("") && text != null && !fromEditeBtn) {
			noteId=NoteManager.getInstance().saveDate(text);
			if(noteId==-1){
				saveSuccess=false;
			}else{
				saveSuccess=true;
			}
			if (!saveSuccess) {
				showDialogNoSDCard();
			} else {
				fromEditeBtn = true;
			}
		}
	}

	// 从数据库中删除存储数据
	private void saveDeletDataToDB() {
		// TODO Auto-generated method stub
		String text = memoEditText.getText().toString();
		boolean saveSuccess;
		if (text.equals("") && fromEditeBtn) {
			saveSuccess = NoteManager.getInstance().deleteItemDate(noteId);
			if (!saveSuccess) {
				showDialogNoSDCard();
			}
		}
	}

	/**
	 * 收起软键盘
	 */
	public void collapseSoftInputMethod() {
		InputMethodManager imm = (InputMethodManager) getSystemService(Context.INPUT_METHOD_SERVICE);
		imm.hideSoftInputFromWindow(memoEditText.getWindowToken(), InputMethodManager.HIDE_NOT_ALWAYS);
	}


}
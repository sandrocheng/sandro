package com.tencent.onesecurity.safebox.ui;

import java.util.ArrayList;
import java.util.List;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.AdapterView;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.AdapterView.OnItemLongClickListener;

import com.tencent.onesecurity.R;
import com.tencent.onesecurity.safebox.dao.NoteDao;
import com.tencent.onesecurity.safebox.manager.NoteManager;
import com.tencent.onesecurity.safebox.model.NoteEntity;
import com.tencent.onesecurity.safebox.ui.adapter.NoteListAdapter;
import com.tencent.onesecurity.safebox.util.SdCardNotExistException;
import com.tencent.onesecurity.ui.customview.dialog.CustomDialog;
import com.tencent.onesecurity.ui.customview.widget.CustomIconButton;
import com.tencent.onesecurity.usage.google.GoogleAnalyticsTracker;
import com.tencent.onesecurity.usage.qq.ActionStatsManager;
import com.tencent.onesecurity.usage.qq.EModelID;

/**
 * @ClassName: NoteListActivity
 * @Description:TODO(notes列表显示类)
 * @author: Sean
 * @date: 2012-10-29 下午4:13:59
 * 
 */
public class NoteListActivity extends BaseSafeBoxActivity implements
		OnItemClickListener, OnClickListener {
	/** Called when the activity is first created. */

	private NoteListAdapter adapter;
	private ListView noteList;
	private ArrayList<NoteListEntity> dateList;
	private ImageView nothingRemindNoPrivateNotes = null;
//	private ImageView nothingRemindArrow = null;
	int currentIndex = -1;
	public static String fromEditeNote = "editeNote";
	public static String NoteText = "text";
	public static String noteId = "noteId";
	public static String updateTime = "updateTime";
	CustomIconButton btn_add;
	CustomIconButton btn_delete;
//	private int showItems = 10;// 一屏能显示的NOTE的个数，这个值应该是计算出来的
	private int notNullItems;
	// 删除提示DIALOG
	private Dialog dialog;

	private final int NOTE_LIST_NORMAL = 0;
	private final int NOTE_LIST_SELECT_DELETE = 1;
	private int Status;
	private boolean hasMeasured;
	//listview每条的高度
//	private int itemHeight;
	/*由DP转换成PIX*/
	public static int dipTopx(Context context, float dipValue){   
        final float scale = context.getResources().getDisplayMetrics().density;   
        return (int)(dipValue * scale + 0.5f);   
}   

	@Override
	public void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		this.setContentView(R.layout.layout_safebox_note_activity);

		btn_add = (CustomIconButton) findViewById(R.id.safe_notes_btn_add);
		btn_add.setOnClickListener(new addButtonOnClickListener());

		btn_delete = (CustomIconButton) findViewById(R.id.safe_notes_btn_del);
		btn_delete.setOnClickListener(new deleteButtonOnClickListener());

		noteList = (ListView) findViewById(R.id.notelist);
		noteList.setOnItemClickListener(this);
		
//		itemHeight=dipTopx(this, 58);
		//通过获取LISTVIEW 的高度计算LISTVIEW填充元素的个数。
//		ViewTreeObserver vto = noteList.getViewTreeObserver();
//		vto.addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener()
//        {
//			public boolean onPreDraw() {
//				if (hasMeasured == false) {
//					// 获取高度后，用于计算
////					int height = noteList.getMeasuredHeight();					
////					showItems = height/itemHeight;
//					initNoteList();
//					hasMeasured = true;
//				}
//				return true;
//			}
//		});
		nothingRemindNoPrivateNotes = (ImageView) findViewById(R.id.safe_notes_no_item_remind_no_private_notes);
		//nothingRemindArrow = (ImageView) findViewById(R.id.safe_notes_no_item_remind_arrow);
		// noteList.setBackgroundResource(R.drawable.bg_menu_bottom_nor);

		setStatus(NOTE_LIST_NORMAL);
		changeToNormalStatus();
	}

	
	private void createSelectAllTitleBar() {
		updateSubTitleBar(this, findViewById(R.id.safe_note_titlebar), null,
				getString(R.string.safebox_notes_selectall), new OnClickListener() {

					@Override
					public void onClick(View v) {
						int len = dateList.size();
						for (int i = 0; i < len; i++) {
							dateList.get(i).setSelected(true);
							adapter.notifyDataSetChanged();
						}
						btn_delete.setEnabled(true);
						createClearAllTitleBar();
					}
				},
				getString(R.string.common_cancel), new OnClickListener() {

					@Override
					public void onClick(View v) {
						setStatus(NOTE_LIST_NORMAL);
						changeToNormalStatus();
					}
				}, true);
	}
	

	
	
	private void createClearAllTitleBar() {
		updateSubTitleBar(this, findViewById(R.id.safe_note_titlebar), null,
				getString(R.string.safebox_notes_clearall), new OnClickListener() {

					@Override
					public void onClick(View v) {
						int len = dateList.size();
						for (int i = 0; i < len; i++) {
							dateList.get(i).setSelected(false);
							adapter.notifyDataSetChanged();
						}
						btn_delete.setEnabled(false);
						createSelectAllTitleBar();
					}
				},
				getString(R.string.common_cancel), new OnClickListener() {

					@Override
					public void onClick(View v) {
						setStatus(NOTE_LIST_NORMAL);
						changeToNormalStatus();
					}
				}, true);
	}
	
	private void createNormalTitleBar() {
		updateSubTitleBar(this, findViewById(R.id.safe_note_titlebar), getString(R.string.safebox_notes_title), -1, null,
				R.drawable.sel_btn_vault_photo_edit, new OnClickListener() {
			@Override
			public void onClick(View v) {
				if (notNullItems <= 0) {
					return;
				}
				GoogleAnalyticsTracker.getInstance().ClickButton("私密箱", "批量编辑文本",
						"私密文本", 1l);
				setStatus(NOTE_LIST_SELECT_DELETE);
				changeToDeleteStatus();
			}
		}, true);
	}
	
	/*
	 * 创建title，用于当前列表中无文本情况下
	 */
	private void createNormalNoItemTitleBar() {
		updateSubTitleBar(
				this, 
				findViewById(R.id.safe_note_titlebar), 
				getString(R.string.safebox_notes_title), 
				-1, null,
				-1, null, 
				true);
	}
	
	@Override
	protected void onResume() {
		// google数据上报
		GoogleAnalyticsTracker.getInstance().trackView("私密文本记事");
		if(Status==NOTE_LIST_NORMAL){
			setStatus(NOTE_LIST_NORMAL);
			initNoteList();
			changeToNormalStatus();	
		}		
		super.onResume();
	}

	@Override
	protected void onDestroy() {
		// TODO Auto-generated method stub
		/*--Sean fix bug NO    9581380 ----20121203-------S-*/
	//	NoteManager.getInstance().clearList();
		/*--Sean fix bug NO    9581380 ----20121203-------E-*/
		
		if (this.dateList != null && this.dateList.size() > 0) {
			dateList.clear();
			dateList = null;
		}	
		adapter.free();
		super.onDestroy();
	}


	/*
	 * 从DB中读取出数据，转换为NoteListEntity类型供秘密文本界面使用
	 */
	private void getDataFromDB() {
		List<NoteEntity> list=null;
		try {
			list = NoteManager.getInstance().getNoteListWithoutContent();
		} catch (SdCardNotExistException e) {
			// TODO Auto-generated catch block			
			showDialogNoSDCard();
			return;
		}

		if (dateList == null) {
			dateList = new ArrayList<NoteListEntity>();
		}
		for (int i = 0; i < list.size(); i++) {
			NoteListEntity noteEntity = new NoteListEntity();
			if (getStatus() == NOTE_LIST_NORMAL) {
				noteEntity.setStatus(NOTE_LIST_NORMAL);
			} else {
				noteEntity.setStatus(NOTE_LIST_SELECT_DELETE);
			}
			noteEntity.setSelected(false);

			noteEntity.setContent(list.get(i).getContent());
			noteEntity.setCreateTime(list.get(i).getCreateTime());
			noteEntity.setId(list.get(i).getId());
			noteEntity.setTitle(list.get(i).getTitle());
			noteEntity.setUpdateTime(list.get(i).getUpdateTime());
			noteEntity.setListIndex(num++);

			dateList.add(noteEntity);
		}
	}

	/**
	 * 初始化NOTE列表
	 */
	private int num;
	protected void initNoteList() {
		num = 1;

		if (dateList != null) {
			dateList.clear();
			dateList = null;
		}
		// dateList = NoteManager.getInstance().getNoteListWithoutContent();

		getDataFromDB();
		// bug id 9560401 mod by lee
		if (dateList == null) {
			return;
		}
		notNullItems = dateList.size();
		if (notNullItems == 0) {
			nothingRemindNoPrivateNotes.setVisibility(View.VISIBLE);
			//nothingRemindArrow.setVisibility(View.VISIBLE);
			noteList.setVisibility(View.INVISIBLE);
		} else {			
			nothingRemindNoPrivateNotes.setVisibility(View.GONE);
			//nothingRemindArrow.setVisibility(View.GONE);
			noteList.setVisibility(View.VISIBLE);
		}
		// 不满一屏的时候添加空白项 为了显示出横线。start
//		if (notNullItems < showItems) {
//			int count = showItems - notNullItems;
//			for (int i = 0; i < count; i++) {
//				NoteListEntity note = new NoteListEntity();
//				note.setId(-1);
//				note.setUpdateTime(-1);
//				note.setListIndex(num++);
//				dateList.add(note);
//				
//			}
//		}
		// 不满一屏的时候添加空白项 为了显示出横线。end
		adapter = new NoteListAdapter(this, dateList);
		noteList.setAdapter(adapter);
	}

	/*--Sean fix bug NO    9581458 ----20121203-------S-*/
	/**
	 * 设置DELETE按钮是否可见
	 */
	private void setBtnOfDelteVisable() {
		boolean selectAll=true;
		boolean UnSelectAll=true;
		if (dateList != null) {
			for (int i = 0; i < notNullItems; i++) {
				
				if (dateList.get(i).isUnSelected()) {					
					selectAll=false;	
				}else{
					UnSelectAll=false;
				}
				
			}
		}
		if(selectAll){						
			createClearAllTitleBar();
			btn_delete.setEnabled(true);
		}else if(UnSelectAll){
			createSelectAllTitleBar();
			btn_delete.setEnabled(false);
		}else if(selectAll==false&&UnSelectAll==false){
			createSelectAllTitleBar();
			btn_delete.setEnabled(true);
		}
	}
	/*--Sean fix bug NO    9581458 ----20121203-------E-*/
	// 列表项点击事件
	@Override
	public void onItemClick(AdapterView<?> arg0, View arg1, int position,
			long id) {
		// TODO Auto-generated method stub
		if (dateList.get(position).getUpdateTime() == -1) {
			return;
		}

		if (getStatus() == NOTE_LIST_NORMAL) {
			currentIndex = position;
			String text = "empty";

			NoteEntity note = NoteManager.getInstance().list.get(currentIndex);
			// 手动添加的NOTE无按键响应处理 start
			if (note.getUpdateTime() < 0) {
				return;
			}
			// 手动添加的NOTE无按键响应处理 end
			byte[] Content;
			try {
				Content = NoteDao.getInstance().findContentById(note.getId());
				text = NoteManager.getInstance().getDate(Content);
			} catch (SdCardNotExistException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			// google数据上报
			GoogleAnalyticsTracker.getInstance().ClickButton("私密箱", "编辑文本",
					"私密文本", 1l);
			 Intent intent = new Intent(NoteListActivity.this,
			 NoteEditActivity.class);
			 intent.putExtra(fromEditeNote, true);
			 intent.putExtra(NoteText, text);
			 intent.putExtra(noteId, note.getId());
			 intent.putExtra(updateTime, note.getUpdateTime());
			 this.startActivity(intent);
			currentIndex = -1;
		} else if (getStatus() == NOTE_LIST_SELECT_DELETE) {

			dateList.get(position).setSelected(
					!(dateList.get(position).isSelected()));
			adapter.notifyDataSetChanged();
			setBtnOfDelteVisable();
//			if (SelectedAll()) {
//				//btn_delete.setEnabled(true);
//				createClearAllTitleBar();
//			} else {
//				//btn_delete.setEnabled(false);				
//				createSelectAllTitleBar();
//			}
		}
	}
	/*--Sean fix bug NO  9576505----20121203-------S-*/
	@Override
	public void onBackPressed() {
		// TODO Auto-generated method stub
		if (getStatus() == NOTE_LIST_SELECT_DELETE) {
			setStatus(NOTE_LIST_NORMAL);
			changeToNormalStatus();
		}else{
			NoteManager.getInstance().clearList();
			super.onBackPressed();
		}		
	}
	/*--Sean fix bug NO  9576505----20121203-------E-*/

	@Override
	public void onClick(View view) {
		// TODO Auto-generated method stub
		// google数据上报
		GoogleAnalyticsTracker.getInstance().ClickButton("私密箱", "添加文本", "私密文本",
				1l);
		// 3g数据上报
		ActionStatsManager.getInstance().saveActionData(EModelID._EMID_Secure_MV_Memo_Enter_PASSWORD);// 成功录入备忘录
		if (getStatus() == NOTE_LIST_NORMAL) {
			 Intent intent = new Intent(NoteListActivity.this,
			 NoteEditActivity.class);
			 intent.putExtra(fromEditeNote, false);
			 this.startActivity(intent);
			// this.startActivity(new Intent(NoteListActivity.this,
			// NotesDeleteActivity.class));
		} else if (getStatus() == NOTE_LIST_SELECT_DELETE) {

		}

	}
	
	/*
	 * 
	 * add按钮监听器
	 */
	private class addButtonOnClickListener implements OnClickListener {
		@Override
		public void onClick(View v) {
			// google数据上报
			GoogleAnalyticsTracker.getInstance().ClickButton("私密箱", "添加文本",
					"私密文本", 1l);
			// 3g数据上报
			ActionStatsManager.getInstance().saveActionData(
					EModelID._EMID_Secure_MV_Memo_Enter_PASSWORD);// 成功录入备忘录
			 Intent intent = new Intent(NoteListActivity.this,
			 NoteEditActivity.class);
			 intent.putExtra(fromEditeNote, false);
			 startActivity(intent);
		}
	};

	/*
	 * 由于此界面比较特殊，当文本列表不满的时候会添加到列表中空的元素来填充表格，
	 * 空的元素会将updateTime置为-1，因此要判断如果List中所有updateTime都是-1则认为List为空.
	 */
	private boolean isDataListEmpty() {
		boolean isEmpty = true;
		if( dateList != null ){
			int len = dateList.size();
			for (int i = 0; i < len; i++) {
				if (dateList.get(i).getUpdateTime() != -1) {
					isEmpty = false;
					break;
				}
			}
		}

		return isEmpty;
	}

	/*
	 * 
	 * Delete按钮监听器
	 */
	private class deleteButtonOnClickListener implements OnClickListener {
		@Override
		public void onClick(View v) {
			
            if (dialog == null || !dialog.isShowing())
            {
                dialog = CustomDialog.createCustomDialogCommonBlack(NoteListActivity.this,
                        getString(R.string.safebox_notes_dial_content),
                        getString(R.string.common_cancel),
                        getString(R.string.common_delete),
                        new DialogInterface.OnClickListener() {

                            @Override
                            public void onClick(DialogInterface dialog, int which) {
                                switch (which) {
                                case CustomDialog.LEFT_BUTTON_CLICK:
                                    // Cancel
                                    dialog.dismiss();
                                    break;
                                case CustomDialog.RIGHT_BUTTON_CLICK:
                                    // OK
                                	// 为了google上报的需求这里用中文
        							GoogleAnalyticsTracker.getInstance().ClickButton("私密箱", "批量删除文本", "私密文本", 1l);
                                	deleteSelectData();
                            		setStatus(NOTE_LIST_NORMAL);
                            		changeToNormalStatus();
                            		dialog.dismiss();
                                    break;
                                }
                            }

                        });
                dialog.setCanceledOnTouchOutside(true);
                dialog.show();
            }

		}
	};

	
	private void deleteSelectData(){
		boolean isDeleted = false;
//		boolean isEmpty = true;
		   
			for (int i = 0; i < dateList.size();) {
				if (dateList.get(i).isSelected()) {
					if (NoteManager.getInstance().deleteItemDate(
							dateList.get(i).getId())) {
						dateList.remove(i);
						isDeleted = true;
					} else {
						// 此处需要加入数据从数据库中删除失败的提示。
						showDialogNoSDCard();
						break;
					}
				} else {
					i++;
				}
			}

			if (isDeleted == true) {
				adapter.notifyDataSetChanged();
				btn_delete.setEnabled(false);
				initNoteList();
			}

		if (isDataListEmpty()) {
			setStatus(NOTE_LIST_NORMAL);
			changeToNormalStatus();
		}
	}
	private class listOnLongClickListener implements OnItemLongClickListener {

		@Override
		public boolean onItemLongClick(AdapterView<?> arg0, View view, int position, long id) {

			if (getStatus() == NOTE_LIST_NORMAL) {
				setStatus(NOTE_LIST_SELECT_DELETE);
				changeToDeleteStatus();
				// 设置选中状态
				dateList.get(position).setSelected(true);
				adapter.notifyDataSetChanged();
				setBtnOfDelteVisable();
			}
			// TODO Auto-generated method stub
			return true;
		}

	};

	private void setStatus(int status) {
		Status = status;
	}

	private int getStatus() {
		return Status;
	}

	/*
	 * 切换当前界面至删除模式时一些数据的状态改变，以及一些按钮的显示及隐藏
	 */
	private void changeToNormalStatus() {
		// 隐藏Delete Button，显示Add Button
		btn_delete.setVisibility(View.GONE);
		btn_add.setVisibility(View.VISIBLE);

		// 为listview注册一个长按菜单事件
		registerForContextMenu(noteList);

		
		if( isDataListEmpty() ){
			createNormalNoItemTitleBar();
		}else{
			createNormalTitleBar();
		}

		noteList.setOnItemLongClickListener(new listOnLongClickListener());

		if (dateList != null && adapter != null) {
			 int len = dateList.size();
			for (int i = 0; i < len; i++) {
				dateList.get(i).setStatus(getStatus());
				dateList.get(i).setSelected(false);
			}
			adapter.notifyDataSetChanged();
		}
		/*--buck fix bug NO 9587399----20121207-------S-*/
		if (dialog != null && dialog.isShowing()) {			
			dialog.dismiss();
		}
		/*--buck fix bug NO 9587399----20121207-------E-*/
	}

	/*
	 * 切换当前界面至删除模式时一些数据的状态改变，以及一些按钮的显示及隐藏
	 */
	private void changeToDeleteStatus() {
		// 隐藏Add Button，显示Delete Button
		btn_add.setVisibility(View.GONE);
		btn_delete.setVisibility(View.VISIBLE);
		btn_delete.setEnabled(false);
		// registerForContextMenu(null);

		// 为listview注册一个长按菜单事件
		unregisterForContextMenu(noteList);

		createSelectAllTitleBar();

		noteList.setOnItemLongClickListener(null);

		if (dateList != null && adapter != null) {
			int len = dateList.size();
			for (int i = 0; i < len; i++) {
				dateList.get(i).setStatus(getStatus());
			}
			adapter.notifyDataSetChanged();
		}
	}

	public class NoteListEntity extends NoteEntity {
		private int Status;

		private boolean mSelected;
		
		private int listIndex;
		
		public void setListIndex(int index){
			listIndex = index;
		}

		public int getListIndex(){
			return listIndex;
		}
		public boolean isUnSelected() {
			return (!mSelected && (getUpdateTime() != -1));
//			 return mSelected;
		}
		public boolean isSelected() {
			return (mSelected && (getUpdateTime() != -1));
//			 return mSelected;
		}

		public void setSelected(boolean selected) {
			mSelected = selected;
		}

		public int getStatus() {
			return Status;
		}

		public void setStatus(int status) {
			Status = status;
		}

	}

}
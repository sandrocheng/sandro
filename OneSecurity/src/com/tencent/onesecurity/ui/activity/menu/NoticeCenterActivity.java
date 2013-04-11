
package com.tencent.onesecurity.ui.activity.menu;

import java.util.ArrayList;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ListView;
import android.widget.TextView;

import com.tencent.onesecurity.R;
import com.tencent.onesecurity.dao.ConfigDao;
import com.tencent.onesecurity.dao.DaoCreator;
import com.tencent.onesecurity.manager.notification.MessageManager;
import com.tencent.onesecurity.model.MessageEntity;
import com.tencent.onesecurity.receiver.NoticeCenterNewMessageReceiver;
import com.tencent.onesecurity.ui.activity.commonComponent.BaseActivity;
import com.tencent.onesecurity.ui.adapter.NoticeCenterListAdapter;
import com.tencent.onesecurity.ui.customview.dialog.CustomDialog;
import com.tencent.onesecurity.ui.helper.UIConstants;
import com.tencent.onesecurity.usage.google.GoogleAnalyticsTracker;

public class NoticeCenterActivity extends BaseActivity implements OnClickListener {
    private final int RET_SUCCESS = 0;

    private final int RET_FAIL = -1;

    private ListView list = null;
    private TextView tvNoNoticeInfo = null;

    private NoticeCenterListAdapter adapter = null;

    private ArrayList<MessageEntity> messageList;
    
//    private boolean isDefaultBack = true;

    private Dialog mAllDeleteDialog;
    
    private NewMessagesReceiver newMesRec;
    
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        View view = LayoutInflater.from(NoticeCenterActivity.this).inflate(
                R.layout.layout_menu_notice_center, null);
        setContentView(view);

        // 数据上报（从Notification跳转）
        if (this.getIntent().getStringExtra(MessageManager.KEY_FROM) != null) {
        	GoogleAnalyticsTracker.getInstance().ClickButton("Menu", "通过通知栏进入消息中心", "", 1l);
        }
        updateSubTitleBar(this, findViewById(R.id.notice_center_line_titlebar),
        		getString(R.string.setting_notice_center_title), -1,
    			null, R.drawable.sel_btn_center_info_delete,
    			new OnClickListener() {

    	            @Override
    	            public void onClick(View v) {
    	            	if(adapter != null && !adapter.isEmpty()){
    	            		mAllDeleteDialog.show();
    	                    GoogleAnalyticsTracker.getInstance().ClickButton("Menu", "清空消息中心", "消息中心", 1l);
    	                }
    	            }

    	        },
    			true) ;
        // 设置右侧的删除按钮
//        updateTitleBar(getString(R.string.setting_notice_center_title));

        initData();
        
        // 如果通过Notification进入这个页面的话，返回时要Intent到Main。
//        int flg = this.getIntent().getIntExtra(MessageManager.KEY_BACK_FLG, MessageManager.BACK_DEFAULT);
//        if (flg == MessageManager.BACK_TO_MAIN) {
//        	isDefaultBack = false;
//        }
        
        newMesRec = new NewMessagesReceiver();
        //初始化没有消息提示
        tvNoNoticeInfo = (TextView)findViewById(R.id.notice_center_list_textview_nonotice);
        initAllDeleteDialog();
    }
    
    /**
     * 清除通知栏消息通知信息，以及菜单中的new标识
     */
    private void clearNotificationIcon(){
    	if (DaoCreator.createConfigDao().getNewMsgNum() != 0) {
        	DaoCreator.createConfigDao().setNewMsgNum(0);
            MessageManager.getInstance().removeNewMsgNotification(NoticeCenterActivity.this);
        }
    }

    /**
     * add by lynnawang 9590619 修改  20121214
     */
    @Override
	public boolean onKeyDown(int keyCode, KeyEvent event) {
    	clearNotificationIcon();
		return super.onKeyDown(keyCode, event);
	}

	/**
     * 接收新消息Receiver,用于接收服务器新消息刷新当前页面数据
     */
    public class NewMessagesReceiver extends NoticeCenterNewMessageReceiver{
		@Override
		public void onReceive(Context context, Intent intent) {
			// TODO Auto-generated method stub
			super.onReceive(context, intent);
			clearList();
	        initData();
	        setSubTitleBarBtn(findViewById(R.id.notice_center_line_titlebar), false, true);
	        tvNoNoticeInfo.setVisibility(View.GONE);
		}
    }
    
    @Override
    protected void onResume() {
        super.onResume();
        // modify by lynnawang 9590619 修改  20121214
        String urlForAutoOpen = this.getIntent().getStringExtra(MessageManager.KEY_URL_AUTO_OPEN);
        int id = this.getIntent().getIntExtra(MessageManager.KEY_ID_AUTO_OPEN, 0);
        if (urlForAutoOpen != null && !"".equals(urlForAutoOpen) && ConfigDao.getInstance().getNewMsgNum()==1) {
        	// 更新FLG
        	MessageManager.getInstance().updateHasReadFlag(id, true);
        	
        	updateListData(id, true);
        	// 跳转到指定URL
        	goToUrl(urlForAutoOpen);
        }
        
//        clearNotificationIcon();
        
        /*--josh fix bug NO 9558891----20121123-------Start-*/
        //如果跳转至其他页面来消息后再返回当前页面，更新List
        if ( DaoCreator.createConfigDao().getNewMsgNum() > 0 ){
        	clearList();
            initData();
//		    clearNotificationIcon();
        }
        /*--josh fix bug NO 9558891----20121123-------End-*/
        if ( adapter == null || adapter.isEmpty()){
        	setSubTitleBarBtn(findViewById(R.id.notice_center_line_titlebar), false, false);
        	tvNoNoticeInfo.setVisibility(View.VISIBLE);
        }else{
        	setSubTitleBarBtn(findViewById(R.id.notice_center_line_titlebar), false, true);
        	tvNoNoticeInfo.setVisibility(View.GONE);
        }
        // add by tony google analytics
        GoogleAnalyticsTracker.getInstance().trackView("消息中心");
    }

    @Override
    public void onClick(View v) {
        // TODO Auto-generated method stub
    }
    
    @Override
    protected void onDestroy() {
        super.onDestroy();
        clearList();
    }

    private class NCListAdapter extends NoticeCenterListAdapter {

        public NCListAdapter(Context context, ArrayList<MessageEntity> arrys) {
            super(context, arrys);
        }

        @Override
        public void itemClick(View v) {
            NoticeCenterItemHolder holder = (NoticeCenterItemHolder)v.getTag();
            // 首先判断数据库中是否更新成功
            if (updateDabaBase(holder.id) != -1) {
                // 更新当前页面列表中内容
                updateListData(holder.id, true);
                // 跳转到指定的 URL
                goToUrl(holder.url);
            }
        }
    }


//	/**
//	 * 显示dialog
//	 * 
//	 * @param title
//	 * @param message
//	 */
//	private void showDialogBuilder(int titleID, int messageID, int leftID, int rightID) {
//		mDialog = DialogUtil.showDefaultDialog(
//				this, 
//				this.getString(titleID),
//				this.getString(messageID), 
//				this.getString(leftID), 
//				leftOnClickListener,
//				this.getString(rightID), 
//				rightOnClickListener, 
//				true
//				);
//		mDialog.setCanceledOnTouchOutside(true);
//	}

//	private OnClickListener leftOnClickListener = new OnClickListener() {
//        @Override
//        public void onClick(View v) {
//        	mDialog.dismiss();
//        }
//    };
//    
//	private OnClickListener rightOnClickListener = new OnClickListener() {
//        @Override
//        public void onClick(View v) {
//			//mDialog.cancel();
//			mDialog.dismiss();
//        	removeAllDataFromDataBase();
//        }
//    };
    
    
    /**
	 * 初始化询问退出扫描病毒对话框
	 */
	private void initAllDeleteDialog() {

		// 初始化询问退出扫描病毒对话框
		// modify by lynnawang 对应bug 9581341 start 20121205
		this.mAllDeleteDialog = CustomDialog.createCustomDialogCommonBlack(
				this, getString(R.string.notice_center_dial_message),
				getString(R.string.common_cancel),
				getString(R.string.common_delete), 
				new onDialogBtnClickListener());
		// modify by lynnawang 对应bug 9581341 end 20121205
		mAllDeleteDialog.setCanceledOnTouchOutside(true);
	}
    
    /**
     * 更新当前页面列表中item已读状态
     */
    private void updateListData(int id, Boolean hasRead) {
        for (int i = 0; i < messageList.size(); i++) {
            MessageEntity model = (MessageEntity)messageList.get(i);
            if (model.id == id) {
                model.hasRead = hasRead;
                messageList.set(i, model);
                adapter.notifyDataSetChanged();
                //break;
            }
        }
    }

    private int removeAllDataFromDataBase() {
        // 此处需要判断是否从数据库中删除成功，若成功则将页面中的LIST中的数据清除掉
        if (MessageManager.getInstance().clearAllMessage() != -1) {
        	if (messageList != null ){
        		messageList.removeAll(messageList);
        	}
            
        	if ( adapter != null ){
                adapter.notifyDataSetChanged();
                //adapter.clear();
        	}
        	setSubTitleBarBtn(findViewById(R.id.notice_center_line_titlebar), false, false);
        	tvNoNoticeInfo.setVisibility(View.VISIBLE);
            clearNotificationIcon();
            
            return RET_SUCCESS;
        } else {
            return RET_FAIL;
        }
    }

    /*
     * 更新数据库中信息已读状态
     */
    private int updateDabaBase(int id) {
        if (MessageManager.getInstance().updateHasReadFlag(id, true) == 1) {
            return RET_SUCCESS;
        } else {
            return RET_FAIL;
        }
    }

    /*
     * goToUrl函数中没有处理内部链接跳转的处理，需要加入 !!!!!!!!
     */
    private void goToUrl(String url) {
        Intent intent = new Intent();
        intent.putExtra(UIConstants.NOTICE_CENTER_LIST_ITEM_URL, url);
        intent.setClass(NoticeCenterActivity.this, NoticeCenterInformationActivity.class);
        startActivity(intent);

        GoogleAnalyticsTracker.getInstance().ClickButton("Menu", "点击消息详细", "消息中心", 1l);
    }

    /*
     * 此界面比较特殊，右上角有一个清除按键，因此titlebar需要重新写
     */
//    private void updateTitleBar(String title) {
//    	
//    	// delete by lynnawang 页面没有返回键了 start
//        // 设置title文字
//        ImageView imageViewBack = null;
//        ImageView imageViewDelAll = null;
//        TextView textViewCenterTitle  = null;
//
//        imageViewBack = (ImageView)findViewById(R.id.notice_center_titlebar_left_img);
//        imageViewBack.setOnClickListener(new OnClickListener() {
//
//            @Override
//            public void onClick(View v) {
//            	
//            	// Notification的情况，需要Intent到Main页面。
//            	if (isDefaultBack == true) {
//            		finish();
//            	} else {
//                	Intent intent = new Intent(NoticeCenterActivity.this, MainActivity.class);
//                	/*--Jess fix bug NO 9558903 ----20121123-------S-*/
//                	intent.setFlags(Intent.FLAG_ACTIVITY_CLEAR_TOP);
//                	/*--Jess fix bug NO 9558903 ----20121123-------E-*/
//        			startActivity(intent);	
//        			isDefaultBack = false;
//        			NoticeCenterActivity.this.finish();
//            	}
//            }
//        });
//        
//     // delete by lynnawang 页面没有返回键了 end
//        imageViewDelAll = (ImageView)findViewById(R.id.notice_center_titlebar_right_img);
//        imageViewDelAll.setOnClickListener(new OnClickListener() {
//
//            @Override
//            public void onClick(View v) {
//                // TODO Auto-generated method stub
//            	if(!adapter.isEmpty()){
//            		mAllDeleteDialog.show();
//                    GoogleAnalyticsTracker.getInstance().ClickButton("Menu", "清空消息中心", "消息中心", 1l);
//                }
//            }
//
//        });
//        
//    }

//    // 初始化数据--临时函数
//    private void initDate() {
//        MessageManager.getInstance().tmpIninDb();
//        messageList = MessageManager.getInstance().getDeliveredMessages();
//        if ( messageList != null ){
//        	adapter = new NCListAdapter(NoticeCenterActivity.this, messageList);
//        	list = (ListView)findViewById(R.id.setting_notice_center_listview_message_list);
//        	list.setAdapter(adapter);
//        }else{
//        	list = (ListView)findViewById(R.id.setting_notice_center_listview_message_list);
//        }
//
//    }
    
    /*
     *清空当前列表 
     */
    private void clearList(){
        if( messageList != null && messageList.size() > 0){
        	messageList.clear();
        	messageList = null;
        }
		
		if( adapter != null && !adapter.isEmpty()){
        	adapter.clear();
			adapter = null;
        }
    }
    
    /*
     * 初始化当前列表
     */
    private void initData() {
//    	MessageManager.getInstance().tmpIninDb();
        messageList = MessageManager.getInstance().getDeliveredMessages();
        
        if ( messageList != null ){
        	adapter = new NCListAdapter(NoticeCenterActivity.this, messageList);
        	list = (ListView)findViewById(R.id.setting_notice_center_listview_message_list);
        	list.setVisibility(View.VISIBLE);
        	list.setDivider(null);
        	list.setAdapter(adapter);
        }else{
        	list = (ListView)findViewById(R.id.setting_notice_center_listview_message_list);
        	list.setVisibility(View.GONE);
        }
    }
    
	@Override
	protected void onStart() {
		// TODO Auto-generated method stub
		super.onStart();
		//注册广播接收监听
		IntentFilter filter = new IntentFilter();
        filter.addAction(UIConstants.NOTICE_CENTER_NEW_MESSAGE_ACTION);
		registerReceiver(newMesRec, filter);
	}

	@Override
	protected void onStop() {
		// TODO Auto-generated method stub
		super.onStop();
		//解除广播接收监听
		unregisterReceiver(newMesRec);
		/*--josh fix bug NO 9560131----20121126-------Start-*/
		//当跳转至其他页面的时候清除通知栏消息
		clearNotificationIcon();
		/*--josh fix bug NO 9560131----20121126-------End-*/
	}

	@Override
	protected void onPause() {
		/*--lynna fix bug NO 9587234----20121207-------Start-*/
		//当跳转至其他页面的时候清除通知栏消息
		 /**
	     * delete by lynnawang 9590619 修改  20121214
	     */
//		clearNotificationIcon();
		/*--lynna fix bug NO 9587234----20121207-------End-*/
		// TODO Auto-generated method stub
		super.onPause();

	}
	
	/**
	 * @ClassName: onDialogBtnClickListener
	 * @Description: Dialog 按钮监听
	 * @author: hunt
	 * @date: 2012-11-27
	 */
	private class onDialogBtnClickListener implements
			DialogInterface.OnClickListener {

		@Override
		public void onClick(DialogInterface dialog, int buttonType) {
			// modify by lynnawang 对应bug 9581341 start 20121205
			switch (buttonType) {
			case CustomDialog.LEFT_BUTTON_CLICK:
				dialog.dismiss();
				break;
			case CustomDialog.RIGHT_BUTTON_CLICK:
				dialog.dismiss();
				removeAllDataFromDataBase();
				break;
			default:
				break;
			}
			// modify by lynnawang 对应bug 9581341 end 20121205
		}
	}
}

package com.tencent.onesecurity.ui.activity.virus;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map.Entry;

import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ListView;
import android.widget.TextView;

import com.tencent.onesecurity.R;
import com.tencent.onesecurity.manager.virus.VirusWhiteListManager;
import com.tencent.onesecurity.model.ScanResultModel;
import com.tencent.onesecurity.ui.activity.commonComponent.BaseActivity;
import com.tencent.onesecurity.ui.adapter.VirusWhiteListAdapter;
import com.tencent.onesecurity.ui.adapter.VirusWhiteListAdapter.SimpleClickListener;
import com.tencent.onesecurity.ui.customview.dialog.CustomLoadingDialog;
import com.tencent.onesecurity.ui.customview.widget.CustomIconButton;
import com.tencent.onesecurity.usage.google.GoogleAnalyticsTracker;
import com.tencent.onesecurity.util.ToastUtil;

/**
 * @ClassName: VirusWhiteListActivity
 * @Description:白名单管理
 * @author: lee
 * @date: 2013-2-18 下午01:31:50
 */
public class VirusWhiteListActivity extends BaseActivity {

	private VirusWhiteListAdapter mAdapter;

	private ListView mListView;

	private List<ScanResultModel> mListData;

	private CustomIconButton mBtnRemove;

	private CustomLoadingDialog mLoadDlg;
	/** 空列表 提示*/
	private TextView mTvWhiteListEmpty ;
	
	/** 加载数据完成 */
	private static final int MSG_LOAD_LIST_END = 1;

	private Handler mHandler = new Handler() {

		@Override
		public void handleMessage(Message msg) {
			switch (msg.what) {
			case MSG_LOAD_LIST_END:
				mAdapter.setListData(mListData);
				mAdapter.notifyDataSetChanged();
				mTvWhiteListEmpty.setVisibility(mListData.isEmpty() ? View.VISIBLE : View.GONE);
				mListView.setVisibility(mListData.isEmpty() ? View.GONE : View.VISIBLE);
				mBtnRemove.setEnabled(!mAdapter.getCheckedMap().isEmpty());
				refreshButtonText();
				dismissDialog();
				break;

			default:
				break;
			}
			super.handleMessage(msg);
		}

	};

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.layout_virus_white_list);
		updateSubTitleBar(this, findViewById(R.id.white_list_title_bar), getString(R.string.vvcl_white_list_title), -1,
				null, -1, null, true);

		mListView = (ListView) findViewById(R.id.list_white_list);
		mAdapter = new VirusWhiteListAdapter(this);

		mLoadDlg = new CustomLoadingDialog(this);
		mLoadDlg.setMessage(getString(R.string.image_view_laoding));
		
		mTvWhiteListEmpty = (TextView) findViewById(R.id.tv_no_white_list_tips) ;
		

		mListView.setAdapter(mAdapter);

		mBtnRemove = (CustomIconButton) findViewById(R.id.btn_white_list_remove);
		mBtnRemove.setOnClickListener(removeListener);
		mAdapter.registerSimpleClickListener(simpleClickListener);
		
		// 加载数据
		mLoadDlg.show();
		new Thread(new LoadThread()).start();
	}
	// 线程取数据
	private class LoadThread implements Runnable {
		@Override
		public void run() {
			
			mListData = VirusWhiteListManager.getInstance().getAll();
			mHandler.sendEmptyMessage(MSG_LOAD_LIST_END);

		}
	}

	// 选择一个应用，button文字变化 Remove(3)
	private SimpleClickListener simpleClickListener = new SimpleClickListener() {

		@Override
		public void onClickItem() {
			refreshButtonText() ;
		}
	};
	/**
	 * 刷新按钮文字
	 */
	private void refreshButtonText(){

		if (mAdapter.getCheckedMap() != null && mAdapter.getCheckedMap().size() > 0) {
			mBtnRemove.setEnabled(true);
			String txt = getResources().getString(R.string.vvcl_white_list_btn_remove1);
			txt = String.format(txt, mAdapter.getCheckedMap().size());
			mBtnRemove.setButtonText(txt);
		} else {
			mBtnRemove.setEnabled(false);
			String txt = getResources().getString(R.string.vvcl_white_list_btn_remove);
			mBtnRemove.setButtonText(txt);
		}

	
	}
	
	// 响应从白名单中移除应用
	private OnClickListener removeListener = new OnClickListener() {

		@Override
		public void onClick(View v) {
			
			GoogleAnalyticsTracker.getInstance().ClickButton("Menu",
					"白名单点击Remove", "", 1l);
			
			// 删除在manager里做,开线程
			mLoadDlg.show();
			List<ScanResultModel> delList = new ArrayList<ScanResultModel>(mAdapter.getCheckedMap().size()) ;
			Iterator<Entry<Long, ScanResultModel>> iterator = mAdapter.getCheckedMap().entrySet().iterator();
			while (iterator.hasNext()) {
				Entry<Long, ScanResultModel> entry = iterator.next();
				ScanResultModel value = (ScanResultModel) entry.getValue();
				delList.add(value) ;
			}
			VirusWhiteListManager.getInstance().delete(delList) ;
			String tips = String.format(getString(R.string.vvcl_white_list_remove_tips), delList
					.size());
			ToastUtil.ShowSimpleTextShortToast(tips,R.layout.custom_toast);
			mAdapter.getCheckedMap().clear();
			delList.clear() ;
			new Thread(new LoadThread()).start();
		}
	};

	/**
	 * 关闭菊花
	 */
	private void dismissDialog() {
		if (mLoadDlg != null && mLoadDlg.isShowing()) {
			mLoadDlg.dismiss();
		}
	}

	@Override
	protected void onDestroy() {
		dismissDialog();
		mAdapter.unregisterSimpleClickListener();
		mAdapter.free() ;
		super.onDestroy();
	}
}

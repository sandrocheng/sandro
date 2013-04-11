/**
 * @ClassName: VirusScanResultAdapterAbstract
 * @Description:病毒扫描结果适配器 Adapter 抽象类
 * @author: hunt
 * @date: 2012-10-31
 */
package com.tencent.onesecurity.ui.adapter;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;

import android.graphics.drawable.Drawable;
import android.text.Spannable;
import android.text.SpannableStringBuilder;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.ForegroundColorSpan;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.widget.BaseAdapter;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;

import com.tencent.onesecurity.MainApplication;
import com.tencent.onesecurity.R;
import com.tencent.onesecurity.model.ScanResultModel;
import com.tencent.onesecurity.ui.helper.UIConstants;
import com.tencent.onesecurity.ui.helper.VirusImageLoader;
import com.tencent.onesecurity.ui.helper.VirusImageLoader.ImageCallback;
import com.tencent.onesecurity.ui.helper.VirusImageLoader.ImageLoadEnum;
import com.tencent.onesecurity.usage.google.GoogleAnalyticsTracker;
import com.tencent.onesecurity.usage.qq.ActionStatsManager;
import com.tencent.onesecurity.usage.qq.EModelID;
import com.tencent.tmsecure.module.qscanner.QScanConstants;

/**
 * @ClassName: VirusScanResultAdapterAbstract
 * @Description:病毒扫描结果适配器 Adapter 抽象类
 * @author: hunt
 * @date: 2012-10-31
 */
public abstract class VirusScanResultAdapterAbstract extends BaseAdapter {

	// 最近一次点击的Cell的序列号
	private int indexOfCellShowDetail = -1;

	private HashSet<ItemHolder> viewItemHoldersSet;

	// 数据源
	private List<ScanResultModel> listDataSource;

	// Layout 填充器
	private LayoutInflater inflater;
	
	private VirusImageLoader mImageLoader ;

	// 已清除病毒及风险个数
//	private int clearedCount = 0;
//	// 病毒个数
//	private int virusCount = 0;
//	// 风险个数
//	private int risksCount = 0;

	// 卸载应用 VirusScanResultAdapter 抽象方法
	protected abstract void uninstallApp(String pkgName);

	// 删除文件 VirusScanResultAdapter 抽象方法
	protected abstract void deleteFile(ScanResultModel scanResult);

	/**
	 * 加入白名单
	 * 
	 * @param scanResult
	 */
	protected abstract void trustApp(ScanResultModel scanResult);
	
	// 软件管理相关管理器 Manager
	//private SoftwareManager softwareManager = ManagerCreator.getManager(SoftwareManager.class);
	/**
	 * 病毒扫描结果适配器构造
	 */
	public VirusScanResultAdapterAbstract() {
		super();
		mImageLoader = new VirusImageLoader(MainApplication.mContext, new ImageCallback() {

			@Override
			public void imageLoaded(ImageView imgView, Drawable imageBitmap) {
				imgView.setImageDrawable(imageBitmap);

			}
		});
	}

	/**
	 * 初始化病毒扫描结果适配器
	 */
	public void initVirusScanResultAdapterAbstract(
			List<ScanResultModel> thisVirus, int clearedCount, int virusCount,
			int risksCount) {

		this.inflater = LayoutInflater.from(MainApplication.getContext());
		this.listDataSource = thisVirus;
		// 已清除病毒及风险个数
//		this.clearedCount = clearedCount;
		// 病毒个数
//		this.virusCount = virusCount;
		// 风险个数
//		this.risksCount = risksCount;

		this.viewItemHoldersSet = new HashSet<ItemHolder>();
	}

	/**
	 * 取得 病毒扫描结果适配器 数据源
	 */
	public List<ScanResultModel> getListDataSource() {

		if (null == this.listDataSource) {
			this.listDataSource = new ArrayList<ScanResultModel>();
		}

		return this.listDataSource;
	}

// jess0219:灰度需求后，这个方法不使用。
//	/**
//	 * 设置 病毒扫描结果适配器 数据源
//	 */
//	public void setListDataSource(List<ScanResultModel> virusList,
//			int clearedCount, int virusCount, int risksCount) {
//
//		this.listDataSource = virusList;
//
//		// 已清除病毒及风险个数
////		this.clearedCount = clearedCount;
//		// 病毒个数
////		this.virusCount = virusCount;
//		// 风险个数
////		this.risksCount = risksCount;
//
//		// 设置指定Cell 应用详细信息布局 不可见 TODO
//		this.hideOtherlayDetail();
//
//		this.notifyDataSetChanged();
//	}

	@Override
	public int getCount() {
		return this.listDataSource != null ? this.listDataSource.size() : 0;
	}

	@Override
	public Object getItem(int position) {
		return (this.listDataSource != null && !this.listDataSource.isEmpty()) ? this.listDataSource
				.get(position) : null;
	}

	@Override
	public long getItemId(int position) {
		return position;
	}

	@Override
	public View getView(final int position, View convertView,
			final ViewGroup parent) {
		// 列表view
		View itemView = null;
		// 列表Item类
		ItemHolder itemHolder = null;

		// Cell 复用
		if (convertView == null) {
			itemView = (LinearLayout) inflater.inflate(
					R.layout.layout_virus_sacn_result_item, parent, false);
			itemHolder = new ItemHolder(itemView);
			itemView.setTag(itemHolder);
		} else {
			itemView = convertView;
			itemHolder = (ItemHolder) itemView.getTag();
		}

		if (itemHolder != null) {

			viewItemHoldersSet.add(itemHolder);

			final ItemHolder holder = itemHolder;
			final ScanResultModel scanResult = listDataSource.get(position);
			final View view = itemView;

			if (scanResult != null) {
				
				// 设置病毒分类标题布局可见性
				this.setLayTitleVisibility(position, scanResult, holder);
				
				// 设置该Cell病毒处理状态
				this.setVirusCleanState(scanResult, holder);
				// 设置白名单按钮状态
				this.setTrustBtnState(scanResult, holder);

				// 设置应用程序Icon
				this.setAppIcon(scanResult, holder);
				// set listView selector 
//				if(scanResult.isProblemApk()){
//					
//					holder.layResultSummary.setBackgroundDrawable(MainApplication.getContext().
//							getResources().getDrawable(R.drawable.sel_bg_common_list));
//				}else{
//					holder.layResultSummary.setBackgroundDrawable(null);
//				}
				
				// 应用名
				// lee 20130116 灰度2.0二次修订，增加安装包区分
				String appName = scanResult.softName ;
				if(scanResult.softScanAddress == ScanResultModel.SOFT_SCAN_ADDRESS_SD){
					appName += MainApplication.getContext().getResources().getString(R.string.vvcl_apk_differentiate);
				}
				// 灰度第四版，信任和已清除病毒，置灰
				int appNameCol ;
				if(scanResult.trustFlg == UIConstants.VIRUS_JUST_ADDED_WHITE_LIST ||
						scanResult.trustFlg == UIConstants.VIRUS_ALREADY_ADDED_WHITE_LIST|| scanResult.isCleared){
					appNameCol = MainApplication.getContext().getResources().getColor(R.color.gray_11_cccccc);
				}else{
					//病毒和风险文字为红色，其他为蓝色
					if(scanResult.isProblemApk()){
						appNameCol = MainApplication.getContext().getResources().getColor(R.color.red_1_ff6459);
					}else{
						appNameCol = MainApplication.getContext().getResources().getColor(R.color.blue_1_205791);
					}

				}
				holder.textAppName.setTextColor(appNameCol) ;
				holder.textAppName.setText(appName);
				
				
				// 设置 应用详细信息布局 可见性
				this.setLayDetailVisibility(position, scanResult, holder);

				// 病毒详细描述
				// lee 20130117灰度2.0二次修订 添加SD卡路径描述（风险 ，病毒，且在SD卡中）字体为蓝色
				SpannableStringBuilder descStyle = new SpannableStringBuilder(scanResult.virusDesc);
				if ((scanResult.softScanAddress == ScanResultModel.SOFT_SCAN_ADDRESS_SD && scanResult.isProblemApk())
						|| (scanResult.softScanAddress == ScanResultModel.SOFT_SCAN_ADDRESS_SD && scanResult.isCleared)) {
					String sdPath = scanResult.path;
					if (sdPath != null && sdPath.length() != 0) {
						int color = MainApplication.getContext().getResources().getColor(R.color.black_2_595959);
						descStyle.setSpan(new ForegroundColorSpan(color), 0, sdPath.length(),
								Spannable.SPAN_EXCLUSIVE_EXCLUSIVE);
					}
				}
				holder.textVirusDesc.setText(descStyle);

				// jess0219：灰度追加病毒白名单
				holder.btnTrust.setOnClickListener(new View.OnClickListener() {

					@Override
					public void onClick(View v) {

						GoogleAnalyticsTracker.getInstance().ClickButton("杀毒", "有毒结果页面：点击Trust", "", 1l);

						// 保存apk到白名单
						trustApp(scanResult);

						// 更新该项trust标识
					}
				});
				
				// ListView 单元杀毒按钮点击事件
				holder.btnClear.setOnClickListener(new OnClickListener() {

					@Override
					public void onClick(View v) {

						switch (scanResult.apkType) {
						// 卸载已经安装在系统的文件
						case QScanConstants.APK_TYPE_PACKAGE_NORMAL:
						case QScanConstants.APK_TYPE_PACKAGE_SYSTEM:
							// 卸载应用 VirusScanResultAdapter 抽象方法
							uninstallApp(scanResult.packageName);
							break;
						// 删除保存在SD中的源文件
						case QScanConstants.APK_TYPE_SDCARD:
							deleteFile(scanResult);
							break;
						}

						GoogleAnalyticsTracker.getInstance().ClickButton("杀毒",
								"清除病毒", "快速/全盘查杀", 1l);
						// 发现病毒后提示-立即清除
						ActionStatsManager
								.getInstance()
								.saveActionData(
										EModelID._EMID_Secure_Outside_VirusTabView_Kill_Immediately);
					}
				});
				
				// ListView 单元点击事件
				view.setOnClickListener(new OnClickListener() {

					@Override
					public void onClick(View v) {
						ScanResultModel result = (ScanResultModel)VirusScanResultAdapterAbstract.this.getItem(position);
						if (result == null || result.type == QScanConstants.TYPE_OK || result.type == QScanConstants.TYPE_UNKNOWN) {
							return;
						}
						
						// 最近一次点击的Cell是否相同
						if (indexOfCellShowDetail == position) {

							if (holder.layDetail.getVisibility() == View.GONE) {

								// 设置 应用详细信息布局 可见
								showlayDetail(holder, scanResult, parent);
								// 设置最近一次点击的Cell的序列号
								indexOfCellShowDetail = position;
							} else {
								// 设置 应用详细信息布局 不可见
								hidelayDetail(holder, scanResult);
							}

						} else {

							// 设置指定Cell 应用详细信息布局 不可见
							hideOtherlayDetail();
							// 设置 应用详细信息布局 可见
							showlayDetail(holder, scanResult, parent);
							// 设置最近一次点击的Cell的序列号
							indexOfCellShowDetail = position;
						}
					}
				});
				// ListView 单元触碰事件
				view.setOnTouchListener(new OnTouchListener() {

					@Override
					public boolean onTouch(View v, MotionEvent event) {

						ItemHolder itemHolder = (ItemHolder) v.getTag();
						ScanResultModel result = (ScanResultModel) VirusScanResultAdapterAbstract.this
								.getItem(position);
						if (result == null || result.type == QScanConstants.TYPE_OK
								|| result.type == QScanConstants.TYPE_UNKNOWN) {
							return false;
						}

						
						// 触碰开始
						if (event.getAction() == MotionEvent.ACTION_DOWN) {
							itemHolder.imageAppHead.setImageDrawable(MainApplication.getContext().getResources()
									.getDrawable(R.drawable.btn_common_list_item_detail_red_disable));
							
						}
						// 触碰结束
						if (event.getAction() == MotionEvent.ACTION_CANCEL
								|| event.getAction() == MotionEvent.ACTION_UP) {
							itemHolder.imageAppHead.setImageDrawable(MainApplication.getContext().getResources()
									.getDrawable(R.drawable.btn_common_list_item_detail_red));
						}
						
						
						
						// 触碰开始
						if (event.getAction() == MotionEvent.ACTION_DOWN) {
							itemHolder.imageAppHead.setImageDrawable(MainApplication.getContext().getResources()
									.getDrawable(R.drawable.btn_common_list_item_detail_red_disable));
							
							
						}
						// 触碰结束
						if (event.getAction() == MotionEvent.ACTION_CANCEL
								|| event.getAction() == MotionEvent.ACTION_UP) {
							if (scanResult.trustFlg == UIConstants.VIRUS_JUST_ADDED_WHITE_LIST ||
									scanResult.trustFlg == UIConstants.VIRUS_ALREADY_ADDED_WHITE_LIST|| scanResult.isCleared) {
								itemHolder.imageAppHead.setImageDrawable(MainApplication.getContext().getResources()
										.getDrawable(R.drawable.btn_common_list_item_detail_red_disable));
							
							} else {
								itemHolder.imageAppHead.setImageDrawable(MainApplication.getContext().getResources()
										.getDrawable(R.drawable.btn_common_list_item_detail_red));
							}
						}

						return false;
					}
				});
			}

			return view;
		}

		return itemView;
	}

	/**
	 * 设置 病毒分类标题布局 可见性
	 */
	private void setLayTitleVisibility(int position,
			ScanResultModel scanResult, ItemHolder holder) {

		// 上一个Cell对应的病毒
		ScanResultModel scanResultLast = null;

		// 不是第一行,可以取得上一个Cell对应的病毒
		if (0 != position) {
			scanResultLast = listDataSource.get(position - 1);
		}

		// 是第一行 或者 该行病毒类型与上一行对应的病毒类型不同的情况, 该行病毒的标题可见
		// 否则该行病毒的标题不可见
		if (null == scanResultLast
				|| isSameGroup(scanResultLast, scanResult) == false) {

			String strFormat = "";
			SpannableStringBuilder style = new SpannableStringBuilder() ;
			
			// jess0219:灰度版本不需要cleared分组
			// 已清除病毒及风险个数 标题
//			if (UIConstants.CONST_CLEANED_VIRUS_FLG == scanResult.type) {
//
//				strFormat = MainApplication.getContext().getResources()
//						.getString(R.string.vvcl_cleared_items_X);
//				style.append(strFormat) ;
//				// Jess1129:需求变更，去掉计数
////				strFormat = String.format(strFormat, this.clearedCount);
//
////				holder.layTitleBarbg.setBackgroundDrawable(MainApplication
////						.getContext().getResources()
////						.getDrawable(R.drawable.bg_common_list_title_blue));
//				// icon = 对号
//				holder.ivTitleIcon.setBackgroundResource(R.drawable.icon_virus_report_title_bar_no_virus);
//
//			} else 
			if (QScanConstants.TYPE_VIRUS == scanResult.type) {

				// 病毒个数 标题
				strFormat = MainApplication.getContext().getResources()
						.getString(R.string.vvcl_viruses_X);
				// lee 20130316 灰度2.0二次修订，加处理意见
				String virusTips = strFormat + MainApplication.getContext().getResources()
						.getString(R.string.vvcl_viruses_x_deal_idea);
				style.append(virusTips);
				style.setSpan(new AbsoluteSizeSpan(11,true),strFormat.length(),
						virusTips.length(), Spannable.SPAN_EXCLUSIVE_EXCLUSIVE);
				//lee 20130325 颜色统一改为白色
//				style.setSpan(new ForegroundColorSpan(0xffff6459), strFormat.length(),
//						virusTips.length(), Spannable.SPAN_EXCLUSIVE_EXCLUSIVE);
				
				
				// Jess1129:需求变更，去掉计数
//				strFormat = String.format(strFormat, this.virusCount);

				// jess1129:子Title背景改为蓝色
				// lee 20130325 又需要动态设置了红色
				holder.layTitleBarbg.setBackgroundDrawable(MainApplication
						.getContext().getResources()
						.getDrawable(R.drawable.bg_common_list_title_red));
				
				// icon = 叹号
				holder.ivTitleIcon.setBackgroundResource(R.drawable.icon_virus_report_title_bar_find_virus);

			} else if (QScanConstants.TYPE_AD_BLOCK == scanResult.type || 
						QScanConstants.TYPE_RISK == scanResult.type|| 
						QScanConstants.TYPE_NOT_OFFICIAL == scanResult.type){
				
				// 风险个数 标题
				strFormat = MainApplication.getContext().getResources()
						.getString(R.string.vvcl_cautions_X);
				// lee 20130116 灰度2.0二次修订，加处理意见
				String cautionsTips = strFormat
						+ MainApplication.getContext().getResources().getString(R.string.vvcl_cautions_x_deal_idea);
				style.append(cautionsTips);
				style.setSpan(new AbsoluteSizeSpan(11,true),strFormat.length(),
						cautionsTips.length(), Spannable.SPAN_EXCLUSIVE_EXCLUSIVE);
				// Jess1129:需求变更，去掉计数
//				strFormat = String.format(strFormat, this.risksCount);

				// jess1129:子Title背景改为蓝色
				// lee 20130325 又需要动态设置了红色
				holder.layTitleBarbg.setBackgroundDrawable(MainApplication
						.getContext().getResources()
						.getDrawable(R.drawable.bg_common_list_title_red));
				
				// icon = 叹号
				holder.ivTitleIcon.setBackgroundResource(R.drawable.icon_virus_report_title_bar_find_virus);
			} else if (QScanConstants.TYPE_OK == scanResult.type || 
					QScanConstants.TYPE_UNKNOWN == scanResult.type) {
				// 安全的apk 标题
				strFormat = MainApplication.getContext().getResources()
						.getString(R.string.vvcl_secure_item_title);
				style.append(strFormat) ;
				// icon = 对号
				holder.ivTitleIcon.setBackgroundResource(R.drawable.icon_virus_report_title_bar_no_virus);
				// lee 20130325 又需要动态设置了蓝色
				holder.layTitleBarbg.setBackgroundDrawable(MainApplication
						.getContext().getResources()
						.getDrawable(R.drawable.bg_common_list_title_blue));
			}

			holder.textTitle.setText(style);

			holder.layTitle.setVisibility(View.VISIBLE);

			// 设置该病毒数据源
			scanResult.islayTitleShow = true;

		} else {
			holder.textTitle.setText("");
			holder.layTitle.setVisibility(View.GONE);
			// 设置该病毒数据源
			scanResult.islayTitleShow = false;
		}
	}
	
	/**
	 * 判断两个病毒是否属于同一组
	 * @param type1
	 * @param type2
	 * @return
	 */
	private boolean isSameGroup(ScanResultModel scanResultLast, ScanResultModel scanResult) {
		boolean ret = false;
		// jess0219:删除对Cleared的Item的分组逻辑
//		if (scanResultLast.isCleared == true && scanResult.isCleared == true) {
//			
//			// Cleared组
//			ret = true;
//		} else 
			
		if ((scanResultLast.type == QScanConstants.TYPE_OK || 
			scanResultLast.type ==QScanConstants.TYPE_UNKNOWN) 
			&&
			(scanResult.type == QScanConstants.TYPE_OK || 
			scanResult.type ==QScanConstants.TYPE_UNKNOWN)) {
			
			// 安全apk组
			ret = true;
		} else if (scanResultLast.type == QScanConstants.TYPE_VIRUS 
					&& scanResult.type == QScanConstants.TYPE_VIRUS) {
			
			// 病毒组
			ret = true;
		} else if ((scanResultLast.type == QScanConstants.TYPE_RISK || 
					scanResultLast.type ==QScanConstants.TYPE_AD_BLOCK || 
					scanResultLast.type == QScanConstants.TYPE_NOT_OFFICIAL|| 
					scanResultLast.type == ScanResultModel.TYPE_NOT_OFFICIAL)// lee 新增类型归为风险组
					&&
					(scanResult.type == QScanConstants.TYPE_RISK || 
					scanResult.type ==QScanConstants.TYPE_AD_BLOCK || 
					scanResultLast.type == QScanConstants.TYPE_NOT_OFFICIAL||
					scanResultLast.type == ScanResultModel.TYPE_NOT_OFFICIAL)){
					
			
			// 风险组
			ret = true;
		} else {
			ret = false;
		}
		
		return ret;
	}
	
	/**
	 * 设置 Cell对应病毒处理状态
	 */
	private void setAppIcon(ScanResultModel scanResult, ItemHolder holder) {
		// 1，不再此处设置Virsu图标，在回调处设置，也就是说，virus图标也走一遍线程池，之后返回，给UI，这样应该不会有问题
		
		// 该病毒是否已经被处理过，或者是安全的apk，不显示按钮
		//if (scanResult.type == QScanConstants.TYPE_OK || scanResult.type ==QScanConstants.TYPE_UNKNOWN) {
			Drawable iDrawable ;
			
		// 设置app图标
		if (ScanResultModel.SOFT_SCAN_ADDRESS_SD == scanResult.softScanAddress) {
			// holder.imageAppHead.setImageDrawable(AppIconUtil.getApkIcon(scanResult.path));
			iDrawable = mImageLoader.loadDrawable(holder.imageAppHead, scanResult.path,
					ImageLoadEnum.LOAD_FROM_PACKAGE,scanResult);
		} else {
			// holder.imageAppHead.setImageDrawable(AppIconUtil.getAppIcon(scanResult.packageName));
			iDrawable = mImageLoader.loadDrawable(holder.imageAppHead, scanResult.packageName,
					ImageLoadEnum.LOAD_FROM_APP, scanResult);

		}
			if(iDrawable == null){
				iDrawable = MainApplication.getContext().getResources()
				.getDrawable(R.drawable.icon_common_question_mark)	;
			}
			holder.imageAppHead.setImageDrawable(iDrawable) ;

//		} else {
//			// 设置病毒详细图标
//			holder.imageAppHead.setImageResource(R.drawable.sel_btn_common_item_detail_white);
//		}
	}
	
	private void setTrustBtnState(ScanResultModel scanResult,
			ItemHolder holder) {
		
		
		// 该病毒是否已经被处理过，或者是安全的apk，不显示按钮
		if (scanResult.type == QScanConstants.TYPE_OK || scanResult.type ==QScanConstants.TYPE_UNKNOWN) {
			holder.imgBtnLeftLine.setVisibility(View.GONE);
			// 病毒白名单
			holder.btnTrust.setVisibility(View.GONE);
			holder.tvTrusted.setVisibility(View.GONE);

		} else if (scanResult.isCleared) {
			// 信任按钮隐藏
			holder.btnTrust.setVisibility(View.GONE);
			// Trusted 隐藏
			holder.tvTrusted.setVisibility(View.GONE);
			holder.btnClear.setVisibility(View.GONE) ;
			// 中间线隐藏
			holder.imgBtnLeftLine.setVisibility(View.GONE) ;
			holder.imgBtnLeftLineTrust.setVisibility(View.GONE) ;
			
			// icon 置灰
//			holder.imageAppHead.setImageDrawable(MainApplication.getContext().getResources()
//					.getDrawable(R.drawable.btn_common_list_item_detail_red_disable));
		} else {
			
			switch(scanResult.trustFlg) {
				case UIConstants.VIRUS_DONOT_ADDED_WHITE_LIST:		// 非白名单apk
					// 病毒白名单
					// 信任按钮显示
					holder.btnTrust.setVisibility(View.VISIBLE);
					holder.btnTrust.setEnabled(true) ;
					// Trusted Cleared隐藏
					holder.tvTrusted.setVisibility(View.GONE);
					//holder.textCleared.setVisibility(View.GONE);
					// Clear按钮显示
					holder.btnClear.setVisibility(View.VISIBLE) ;
					// 中间线显示
					holder.imgBtnLeftLine.setVisibility(View.VISIBLE) ;
					holder.imgBtnLeftLineTrust.setVisibility(View.VISIBLE) ;
					
					break;
				case UIConstants.VIRUS_ALREADY_ADDED_WHITE_LIST:		// 白名单apk
				case UIConstants.VIRUS_JUST_ADDED_WHITE_LIST:		// 刚加入的白名单apk
					// 加入白名单按钮隐藏
					holder.btnTrust.setVisibility(View.GONE);
					// clear 按钮隐藏
					holder.btnClear.setVisibility(View.GONE) ;
					// 两条竖线隐藏
					holder.imgBtnLeftLine.setVisibility(View.GONE) ;
					holder.imgBtnLeftLineTrust.setVisibility(View.GONE) ;
					// 已加入白名单显示
					holder.tvTrusted.setVisibility(View.VISIBLE);
					break;
				default:
					holder.imgBtnLeftLineTrust.setVisibility(View.VISIBLE) ;
					break;
			}
		}
	}

	/**
	 * 设置 Cell对应病毒处理状态
	 */
	private void setVirusCleanState(ScanResultModel scanResult,
			ItemHolder holder) {
		
		
		// 该病毒是否已经被处理过，或者是安全的apk，不显示按钮
		if (scanResult.type == QScanConstants.TYPE_OK || scanResult.type ==QScanConstants.TYPE_UNKNOWN) {
			holder.imgBtnLeftLine.setVisibility(View.GONE);
			// 杀毒按钮 Button 隐藏
			holder.btnClear.setVisibility(View.GONE);
			// 病毒清除描述 TextView 显示
			holder.textCleared.setVisibility(View.GONE);
			
			// 安全apkIcon显示
			holder.ivSecureApk.setVisibility(View.VISIBLE);
			
//			if (VirusScanResultActivity.scanedVirusNum == 0) {
//				// 安全apkIcon显示
//				holder.ivSecureApk.setVisibility(View.VISIBLE);
//			} else {
//				// 安全apkIcon显示
//				holder.ivSecureApk.setVisibility(View.GONE);
//			}

		} else if (scanResult.isCleared) {
			// 直线隐藏
			holder.imgBtnLeftLine.setVisibility(View.GONE);
			// 杀毒按钮 Button 隐藏
			holder.btnClear.setVisibility(View.GONE);
			// 病毒清除描述 TextView 显示
			holder.textCleared.setVisibility(View.VISIBLE);
			// 安全apkIcon隐藏
			holder.ivSecureApk.setVisibility(View.GONE);
		} else {
			holder.imgBtnLeftLine.setVisibility(View.VISIBLE);
			// 杀毒按钮 Button 显示
			holder.btnClear.setVisibility(View.VISIBLE);
			// 病毒清除描述 TextView 隐藏
			holder.textCleared.setVisibility(View.GONE);
			// 安全apkIcon隐藏
			holder.ivSecureApk.setVisibility(View.GONE);
			
			// 设置背景色和字体
//			holder.layResultSummary.setBackgroundColor(R.color.white_1_fafafa);
//			holder.textAppName.setTextColor(R.color.gray_5_393939);
		}
	}
	/**
	 * 设置 应用详细信息布局 可见性
	 */
	private void setLayDetailVisibility(int position,
			ScanResultModel scanResult, ItemHolder holder) {

		// 初始化时 第一行应用详细信息布局 可见
 		//if (-1 == indexOfCellShowDetail&& 0 == position) { // 如果只有一条应用，需要下面的判断
			// 需求变更  第一条病毒详细内容不显示
			// if (VirusScanResultActivity.scanedVirusNum > 0) {
			// 扫描结果中如果有病毒，默认打开第一个
			// // 应用详细信息布局 可见
			// scanResult.islayDetailShow = true;
			// holder.layDetail.setVisibility(View.VISIBLE);
			// indexOfCellShowDetail = 0;
			// } else { // 无病毒，忽略单击事件
			// scanResult.islayDetailShow = false;
			// holder.layDetail.setVisibility(View.GONE);
			// }
		//} else {
			
			if (scanResult.islayDetailShow) {
				// 应用详细信息布局 可见
				holder.layDetail.setVisibility(View.VISIBLE);
			} else {
				// 应用详细信息布局 不可见
				holder.layDetail.setVisibility(View.GONE);
			}
		//}
	}

	/**
	 * 设置 应用详细信息布局 可见
	 */
	private void showlayDetail(ItemHolder holder, ScanResultModel scanResult,
			ViewGroup parent) {
		holder.layDetail.setVisibility(View.VISIBLE);
		scanResult.islayDetailShow = true;

	}

	/**
	 * 设置 应用详细信息布局 不可见
	 */
	private void hidelayDetail(ItemHolder holder, ScanResultModel scanResult) {
		holder.layDetail.setVisibility(View.GONE);
		scanResult.islayDetailShow = false;
	}

	/**
	 * 设置指定Cell 应用详细信息布局 不可见
	 */
	private void hideOtherlayDetail() {
		if (indexOfCellShowDetail != -1){
			
			// 原来展开的cell对应的数据源
			ScanResultModel scanResultLastShowDetail = listDataSource
					.get(indexOfCellShowDetail);
			scanResultLastShowDetail.islayDetailShow = false;

			// 原来展开的cell对应的画面
			for (ItemHolder hoder : viewItemHoldersSet) {
				hoder.layDetail.setVisibility(View.GONE);
			}
		}
	}

	/**
	 * @ClassName: ItemHolder
	 * @Description: 列表Item类
	 * @author: hunt
	 * @date: 2012-10-31
	 */
	private class ItemHolder {

		// 应用分类布局 LinearLayout
		private FrameLayout layTitle;
		// jess1130:不需要动态设置了
		// 题头背景 LinearLayout
		// lee 20130325 又需要动态设置了
		private LinearLayout layTitleBarbg;

		// 病毒分类标题 TextView
		private TextView textTitle;

		// 应用头像 ImageView
		private ImageView imageAppHead;
		// 应用名 TextView
		private TextView textAppName;
		
		private ImageView imgBtnLeftLine;
		
		// 加入白名单按钮 
		private LinearLayout btnTrust;
		// 已加入白名单文字
		private TextView tvTrusted;
		// 杀毒按钮 Button
		private LinearLayout btnClear;
		//	杀毒btn图片	
		private ImageView ivClear ;
		
		// 病毒清除描述 TextView
		private TextView textCleared;
		// 安全apkIcon
		private ImageView ivSecureApk;

		// 应用详细信息布局 LinearLayout
		private LinearLayout layDetail;
		// 病毒详细描述 TextView
		private TextView textVirusDesc;
		// 标题右侧Icon
		private ImageView ivTitleIcon;
		// 病毒结果的摘要
		private RelativeLayout layResultSummary;
		
		private ImageView imgBtnLeftLineTrust ;
		/**
		 * 列表Item类构造
		 */
		private ItemHolder(View view) {

			// 病毒分类标题布局 LinearLayout
			this.layTitle = (FrameLayout) view
					.findViewById(R.id.item_virus_result_lay_title);
			// jess1130:不需要动态设置了
//			// 题头背景 LinearLayout
			// lee 20130325 又需要动态设置了
			this.layTitleBarbg = (LinearLayout) view
					.findViewById(R.id.item_virus_result_lay_title_bar_bg);

			// 病毒分类标题 TextView
			this.textTitle = (TextView) view
					.findViewById(R.id.item_virus_result_text_title);

			// 应用头像 ImageView
			this.imageAppHead = (ImageView) view
					.findViewById(R.id.item_virus_result_image_app_head);
			// 应用名 TextView
			this.textAppName = (TextView) view
					.findViewById(R.id.item_virus_result_text_app_name);
			
			this.imgBtnLeftLine = (ImageView) view
					.findViewById(R.id.item_virus_btn_left_line);
			
			// 加入白名单按钮
			this.btnTrust = (LinearLayout) view
					.findViewById(R.id.item_virus_result_ll_trust);
			// 已加入白名单文字
			this.tvTrusted = (TextView) view.findViewById(R.id.item_virus_result_text_trusted);
			// 杀毒按钮 Button
			this.btnClear = (LinearLayout) view
					.findViewById(R.id.item_virus_result_ll_clear);
			this.ivClear = (ImageView) view.findViewById(R.id.iv_virus_clear_btn) ;
			// 病毒清除描述 TextView
			this.textCleared = (TextView) view
					.findViewById(R.id.item_virus_result_text_cleared);
			// 安全APK 的标识Icon
			this.ivSecureApk = (ImageView) view.findViewById(R.id.item_virus_result_icon_ok);
			
			// 应用详细信息布局 LinearLayout
			this.layDetail = (LinearLayout) view
					.findViewById(R.id.item_virus_result_lay_detail);
			// 应用详细信息 TextView
			this.textVirusDesc = (TextView) view
					.findViewById(R.id.item_virus_result_text_virus_desc);
			// 标题右侧Icon
			this.ivTitleIcon = (ImageView) view.findViewById(R.id.item_virus_result_title_icon_no_virus);
			// 病毒结果的摘要
			this.layResultSummary = (RelativeLayout) view.findViewById(R.id.item_virus_result_summary);
			// trust  左边竖线
			this.imgBtnLeftLineTrust = (ImageView)view.findViewById(R.id.item_virus_btn_left_line_trust) ;
		}
	}

	public void release() {
		if (mImageLoader != null) {
			mImageLoader.release();
		}
	}
}

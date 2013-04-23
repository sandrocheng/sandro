package com.sandro.ImageTrans;

import android.app.ListActivity;
import android.net.TrafficStats;
import android.os.Bundle;
import android.widget.TextView;

/**
 * 
 * 流量调查 使用TrafficStats类库获取总流量和gprs流量以及根据uid获取应用的流量统计 使用这个类有两个缺陷：
 *  1
 * 手机重启后，数据会被归零，必须要有保存数据的策略保证数据完整
 *  2 根据官方文档，这个类库不是所有平台（platforms）都会支持（These statistics may
 * not be available on all platforms. If the statistics are not supported by
 * this device, UNSUPPORTED will be returned.）
 * 反编译腾讯qq管家，发现qq管家有读取/proc/uid_stat/{uid}文件获取每个uid对应的流量数据。
 * 
 * 注意 ：系统没有提供wifi流量的函数，但是wifi流量 约等于 总流量 - gprs流量：实际上总流量 > wifi流量 + gprs流量。
 * 比如手机关闭wifi，重启动后查看，发现总流量大于gprs流量。
 * 
 * @author sandrocheng
 * 
 */
public class TrafficStatsActivity extends ListActivity {

	/**
	 * 总接收流量
	 */
	private TextView totalRxTv;

	/**
	 * 总发送流量
	 */
	private TextView totalTxTv;

	/**
	 * 总流量
	 */
	private TextView totalTrafficTv;

	/**
	 * gprs接收流量
	 */
	private TextView totalGPRSRxTv;

	/**
	 * gprs接收流量
	 */
	private TextView totalGPRSTxTv;

	/**
	 * gprs总流量
	 */
	private TextView totalGPRSTotalTv;


	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		this.setContentView(R.layout.traffic_static_layout);
		initView();
		initData();
		getAppInfo();
	}

	/**
	 * 使用TrafficStats.getUidRxBytes 和 TrafficStats.getUidTxBytes(uid) 
	 * 获取流量，但是无法获取gprs流量
	 */
//	private void getAppInfo() {
//		PackageManager pm = MainApp.getContext().getPackageManager();
//		List<PackageInfo> listPackages = pm.getInstalledPackages(0);
//		List<String> processData = new ArrayList<String>();
//		for (PackageInfo pi : listPackages) {
//			int uid = pi.applicationInfo.uid;
//			long total = (TrafficStats.getUidRxBytes(uid) + TrafficStats.getUidTxBytes(uid) )/1024;
//			if(total >0){
//				String appName = (String) pi.applicationInfo.loadLabel(pm);
//				if(appName != null){
//					processData.add(appName + " : " + total + "KB");
//				}
//			}
//		}
//		ArrayAdapter<String> dataAdapter = new ArrayAdapter<String>(TrafficStatsActivity.this,
//				android.R.layout.simple_list_item_1, processData);
//		setListAdapter(dataAdapter);
//	}
	
	private void getAppInfo(){
		
	}

	private void initView() {
		totalRxTv = (TextView) this.findViewById(R.id.text_total_rx);
		totalTxTv = (TextView) this.findViewById(R.id.text_total_tx);
		totalTrafficTv = (TextView) this.findViewById(R.id.text_total_traffic);
		totalGPRSRxTv = (TextView) this.findViewById(R.id.text_mobile_rx);
		totalGPRSTxTv = (TextView) this.findViewById(R.id.text_mobile_tx);
		totalGPRSTotalTv = (TextView) this.findViewById(R.id.text_mobile_total);
	}

	private void initData() {
		long totalRx = TrafficStats.getTotalRxBytes();
		totalRxTv.setText("总接收流量 : " + totalRx / 1024 + "KB");

		long totalTx = TrafficStats.getTotalTxBytes();
		totalTxTv.setText("总发送流量 : " + totalTx / 1024 + "KB");

		totalTrafficTv.setText("总流量 : " + (totalRx + totalTx) / 1024 + "KB");

		long gprsRx = TrafficStats.getMobileRxBytes();
		totalGPRSRxTv.setText("GPRS接收流量  : " + gprsRx / 1024 + "KB");

		long gprsTx = TrafficStats.getMobileTxBytes();
		totalGPRSTxTv.setText("GPRS发送流量  : " + gprsTx / 1024 + "KB");

		totalGPRSTotalTv
				.setText("GPRS总流量 : " + (gprsRx + gprsTx) / 1024 + "KB");
	}

}

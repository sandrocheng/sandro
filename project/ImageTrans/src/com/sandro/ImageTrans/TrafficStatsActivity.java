package com.sandro.ImageTrans;

import android.app.Activity;
import android.net.TrafficStats;
import android.os.Bundle;
import android.widget.TextView;

public class TrafficStatsActivity extends Activity{

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
	
	private TextView totalGPRSTotalTv;
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		this.setContentView(R.layout.traffic_static_layout);
		totalRxTv = (TextView)this.findViewById(R.id.text_total_rx);
		totalTxTv = (TextView)this.findViewById(R.id.text_total_tx);
		totalTrafficTv = (TextView)this.findViewById(R.id.text_total_traffic);
		totalGPRSRxTv = (TextView)this.findViewById(R.id.text_mobile_rx);
		totalGPRSTxTv = (TextView)this.findViewById(R.id.text_mobile_tx);
		totalGPRSTotalTv = (TextView)this.findViewById(R.id.text_mobile_total);
		initData();
	}
	
	private void initData(){
		long totalRx = TrafficStats.getTotalRxBytes();
		totalRxTv.setText("总接收流量 : " + totalRx/1024 + "KB");
		
		long totalTx = TrafficStats.getTotalTxBytes();
		totalTxTv.setText("总发送流量 : " + totalTx/1024 + "KB");
		
		totalTrafficTv.setText("总流量 : " + (totalRx + totalTx)/1024 + "KB");
		
		long gprsRx = TrafficStats.getMobileRxBytes();
		totalGPRSRxTv.setText("GPRS接收流量  : " + gprsRx/1024 + "KB");
		
		long gprsTx = TrafficStats.getMobileTxBytes();
		totalGPRSTxTv.setText("GPRS发送流量  : " + gprsTx/1024 + "KB");
		
		totalGPRSTotalTv.setText("GPRS总流量 : " + (gprsRx + gprsTx)/1024 + "KB");
	}

}

package com.sandro.ImageTrans;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.BatteryManager;
import android.os.Bundle;
import android.util.Log;
import android.widget.ImageView;
import android.widget.TextView;

public class PowerActivity extends Activity{

	private IntentFilter   mIntentFilter;
	
	
	public void onCreate(Bundle savedInstanceState){
		super.onCreate(savedInstanceState);
		setContentView(R.layout.power_test);
		mIntentFilter = new IntentFilter();   
		mIntentFilter.addAction(Intent.ACTION_BATTERY_CHANGED);   
		registerReceiver(mIntentReceiver, mIntentFilter);
		statLog(10);
	}
	


	/**
	 * 输出pid对应的proc中stat文件内容
		13 utime  该任务在用户态运行的时间，单位为jiffies
        14 stime  该任务在核心态运行的时间，单位为jiffies
        15 cutime 累计的该任务的所有的waited-for进程曾经在用户态运行的时间，单位为jiffies
        16 cstime 累计的该任务的所有的waited-for进程曾经在核心态运行的时间，单位为jiffies
        
                    进程的总Cpu时间processCpuTime = utime + stime + cutime + cstime，该值包括其所有线程的cpu时间。 
	 * @param pid
	 */
	private void statLog(int pid) {
		String str = "/proc/" + pid + "/stat";
		FileReader localFileReader = null;
		BufferedReader localBufferedReader = null;
		try {
			localFileReader = new FileReader(str);
			localBufferedReader = new BufferedReader(localFileReader);
			String text = localBufferedReader.readLine().trim();
			String[] arrayOfString = text.split("\\s+");
			for (String arrayStr : arrayOfString) {
				Log.i("PowerActivity", "arrayStr : " + arrayStr);
			}

			Log.i("PowerActivity", "arrayStr : " + text);
		} catch (FileNotFoundException e) {
			Log.e("PowerActivity", "FileNotFoundException : " + e.toString());
		} catch (IOException e) {
			Log.e("PowerActivity", "IOException : " + e.toString());
		}finally{
			if(localBufferedReader!=null){
				try {
					localBufferedReader.close();
					Log.i("PowerActivity", "localBufferedReader colse");
				} catch (IOException e) {
				}
			}
			if(localFileReader!=null){
				try {
					localFileReader.close();
					Log.i("PowerActivity", "localFileReader colse");
				} catch (IOException e) {
				}
			}
		}
	}
	
	private BroadcastReceiver mIntentReceiver = new BroadcastReceiver(){

		@Override
		public void onReceive(Context context, Intent intent) {
			String action = intent.getAction();
			if (action.equals(Intent.ACTION_BATTERY_CHANGED)) {
				setExtraLevel(intent);
				setExtraHealth(intent);
				setSmallIconId(intent);
				setPlugedStatus(intent);
				setPresent(intent);
				setMaxLevel(intent);
				setChargingStatus(intent);
				setBatteryTechnology(intent);
				setBatteryTemperature(intent);
				setVoltage(intent);
			}
		}
		
		private void setVoltage(Intent intent){
			TextView voltageView = (TextView)PowerActivity.this.findViewById(R.id.power_voltage);
			int value = intent.getIntExtra(BatteryManager.EXTRA_VOLTAGE,0);
			voltageView.setText("电池电压  EXTRA_VOLTAGE : " + value);		
		}
		
		private void setBatteryTechnology(Intent intent){
			TextView techonlogyView = (TextView)PowerActivity.this.findViewById(R.id.power_technology);
			String value = intent.getStringExtra(BatteryManager.EXTRA_TECHNOLOGY);
			techonlogyView.setText("电池工艺  EXTRA_TECHNOLOGY : " + value);				
		}
		
		private void setBatteryTemperature(Intent intent){
			TextView temperatureView = (TextView)PowerActivity.this.findViewById(R.id.power_temperature);
			int value = intent.getIntExtra(BatteryManager.EXTRA_TEMPERATURE, 0);
			temperatureView.setText("电池温度  EXTRA_TEMPERATURE : " + value);	
		}
		
		private void setChargingStatus(Intent intent){
			TextView tvPowerStatus = (TextView)PowerActivity.this.findViewById(R.id.power_status);
			int status = intent.getIntExtra(BatteryManager.EXTRA_STATUS,  BatteryManager.BATTERY_STATUS_NOT_CHARGING);
			String statusStr = "未充电";
			if(status == BatteryManager.BATTERY_STATUS_CHARGING){
				statusStr = "充电中";
			}else if(status == BatteryManager.BATTERY_STATUS_DISCHARGING){
				statusStr = "充电取消";
			}else if(status == BatteryManager.BATTERY_STATUS_FULL){
				statusStr = "充电完毕";
			}else if(status == BatteryManager.BATTERY_STATUS_NOT_CHARGING){
				statusStr = "未充电 ";
			}else if(status == BatteryManager.BATTERY_STATUS_UNKNOWN){
				statusStr = "未知状态";
			}
			tvPowerStatus.setText("充电状态  EXTRA_STATUS ：" + statusStr + "-" + status);			
		}
		
		private void setMaxLevel(Intent intent){
			TextView maxLevelView = (TextView)PowerActivity.this.findViewById(R.id.power_maxLevel);
			int value = intent.getIntExtra(BatteryManager.EXTRA_SCALE, 0);
			maxLevelView.setText("电池容量最大额度数值  EXTRA_SCALE : " + value);	
		}
		
		private void setPresent(Intent intent){
			TextView presentView = (TextView)PowerActivity.this.findViewById(R.id.power_present);
			boolean present = intent.getBooleanExtra(BatteryManager.EXTRA_PRESENT, false);
			presentView.setText("电池是否存在  present : " + present);
		}
		
		private void setPlugedStatus(Intent intent){
			TextView pluggedTextView = (TextView)PowerActivity.this.findViewById(R.id.power_plugged);
			String str = "充电方式 EXTRA_PLUGGED : ";
			int pluggedState = intent.getIntExtra(BatteryManager.EXTRA_PLUGGED,  BatteryManager.BATTERY_PLUGGED_AC);
			if(pluggedState == BatteryManager.BATTERY_PLUGGED_AC){
				str += " 电源充电";
			}else if(pluggedState == BatteryManager.BATTERY_PLUGGED_USB){
				str += " usb充电";
			}else{
				str += " 未充电";
			}
			pluggedTextView.setText(str);
		}

		private void setSmallIconId(Intent intent){
			int id = intent.getIntExtra(BatteryManager.EXTRA_ICON_SMALL,  0);
			ImageView tvPowerHealth = (ImageView)PowerActivity.this.findViewById(R.id.power_icon);
			tvPowerHealth.setImageResource(id);
		}
		
		private void setExtraHealth(Intent intent) {
			TextView tvPowerHealth = (TextView)PowerActivity.this.findViewById(R.id.power_health);
			int health = intent.getIntExtra(BatteryManager.EXTRA_HEALTH,  BatteryManager.BATTERY_HEALTH_UNKNOWN);
			String healthStr = "良好";
			if(health == BatteryManager.BATTERY_HEALTH_GOOD){
				healthStr = "良好";
			}else if(health == BatteryManager.BATTERY_HEALTH_OVERHEAT){
				healthStr = "过热 ";
			}else if(health == BatteryManager.BATTERY_HEALTH_DEAD){
				healthStr = "没电";
			}else if(health == BatteryManager.BATTERY_HEALTH_OVER_VOLTAGE){
				healthStr = "过电压";
			}else if(health == BatteryManager.BATTERY_HEALTH_UNSPECIFIED_FAILURE){
				healthStr = "未知错误";
			}else if(health == BatteryManager.BATTERY_HEALTH_UNKNOWN){
				healthStr = "健康度不明";
			}
			tvPowerHealth.setText("健康度 HEALTH ：" + healthStr + "-" + health);
		}

		/**
		 * from 0 to EXTRA_SCALE.
		 * @param intent
		 */
		private void setExtraLevel(Intent intent) {
			TextView tvPowerNum = (TextView)PowerActivity.this.findViewById(R.id.power_num);
			tvPowerNum.setText("当前电量数值 EXTRA_LEVEL ：" + intent.getIntExtra(BatteryManager.EXTRA_LEVEL, 0));
		}
		
	};
}

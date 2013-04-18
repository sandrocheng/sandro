package com.tinyscreen.quteWatcher.log;

import java.util.HashMap;
import java.util.Map;

import android.os.Parcel;
import android.os.Parcelable;

/**
 * 显示信息对象
 * @author sandroCheng
 *
 */
public class InfoObj implements Parcelable {
	
	 
	
	/**
	 * info类型
	 */
	public static int INFO_TYPE = 0;

	/**
	 * debug类型
	 */
	public static int DEBUG_TYPE = 1;

	/**
	 * warning类型
	 */
	public static int WARNING_TYPE = 2;

	/**
	 * error类型
	 */
	public static int ERROR_TYPE = 3;
	
	public static Map<Integer,String> COLOR_MAP = new HashMap<Integer,String>();
	
	static {
		COLOR_MAP.put(INFO_TYPE, "<font color=\"green\">");
		COLOR_MAP.put(DEBUG_TYPE, "<font color=\"Blue\">");
		COLOR_MAP.put(WARNING_TYPE, "<font color=\"#CD853F\">");
		COLOR_MAP.put(ERROR_TYPE, "<font color=\"Red\">");
	}
	/**
	 * 文字字符串
	 */
	private String info;
	
	private String tagTitle;
	
	/**
	 * 错误类型
	 * 0:info 
	 * 1:debug
	 * 2:warning
	 * 3:error 
	 */
	private int type;
	
	public InfoObj(String title,String info,int type){
		this.setInfo(info);
		this.setType(type);
		this.setTagTitle(title);
	}
	
	public String getInfo() {
		return info;
	}
	public void setInfo(String info) {
		this.info = info;
	}
	public int getType() {
		return type;
	}
	public void setType(int type) {
		this.type = type;
	}

	@Override
	public int describeContents() {
		return 0;
	}

	@Override
	public void writeToParcel(Parcel dest, int flags) {
		dest.writeString(this.getTagTitle());
		dest.writeString(this.getInfo());
		dest.writeInt(this.getType());
	}
	
	public static final Parcelable.Creator<InfoObj> CREATOR = new Creator<InfoObj>() {

		@Override
		public InfoObj createFromParcel(Parcel source) {
			InfoObj obj = new InfoObj(source.readString(),source.readString(),source.readInt());
			return obj;
		}

		@Override
		public InfoObj[] newArray(int size) {
			return new InfoObj[size];
		}
	};

	public String getTagTitle() {
		return tagTitle;
	}

	public void setTagTitle(String tagTitle) {
		this.tagTitle = tagTitle;
	}	
	
	
}

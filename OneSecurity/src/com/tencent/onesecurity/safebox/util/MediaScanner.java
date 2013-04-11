package com.tencent.onesecurity.safebox.util;

import android.content.Context;
import android.media.MediaScannerConnection;
import android.net.Uri;

/**
 * 
 * @ClassName: MediaScanner
 * @Description:TODO(这里用一句话描述这个类的作用)
 * @author: lee
 * @date: 2012-11-29 下午06:45:38
 * 
 */
public class MediaScanner {

	private MediaScannerConnection mediaScanConn = null;

	private MusicSannerClient client = null;

	private String filePath = null;

	private String fileType = null;

	private String[] filePaths = null;

	/**
	 * 然后调用MediaScanner.scanFile("/sdcard/2.mp3");
	 * */
	public MediaScanner(Context context) {
		// 创建MusicSannerClient
		if (client == null) {
			client = new MusicSannerClient();
		}
		if (mediaScanConn == null) {
			mediaScanConn = new MediaScannerConnection(context, client);
		}
	}

	class MusicSannerClient implements MediaScannerConnection.MediaScannerConnectionClient {
		/** 扫描回调个数成功 +1 */
		private int scanCount;
		/** 所有个数 */
		private int totalCount;
		@Override
		public void onMediaScannerConnected() {
			if (filePath != null) {
				mediaScanConn.scanFile(filePath, fileType);
			}
			if (filePaths != null) {
				totalCount = filePaths.length;
				for (String file : filePaths) {
					mediaScanConn.scanFile(file, fileType);
				}
			}
			filePath = null;
			fileType = null;
			filePaths = null;
		}
		@Override
		public void onScanCompleted(String path, Uri uri) {
			scanCount++;
			if (scanCount == totalCount) {
				mediaScanConn.disconnect();
				scanCount = 0;
				totalCount = 0;
				if (mediaScannerListener != null) {
					//Log.i("lee", "end scan===") ;
					mediaScannerListener.onFinishedScanFile();

				}
			}

		}

	}

	/**
	 * 扫描文件标签信息
	 * 
	 * @param filePath
	 *            文件路径 eg:/sdcard/MediaPlayer/dahai.mp3
	 * @param fileType
	 *            文件类型 eg: audio/mp3 media/* application/ogg
	 * */
	public void scanFile(String filepath, String fileType) {

		this.filePath = filepath;

		this.fileType = fileType;
		// 连接之后调用MusicSannerClient的onMediaScannerConnected()方法
		mediaScanConn.connect();
	}

	/**
	 * @param filePaths
	 *            文件路径
	 * @param fileType
	 *            文件类型
	 * */
	public void scanFile(String[] filePaths, String fileType) {

		this.filePaths = filePaths;

		this.fileType = fileType;

		mediaScanConn.connect();

	}

	public String getFilePath() {

		return filePath;
	}

	public void setFilePath(String filePath) {

		this.filePath = filePath;
	}

	public String getFileType() {

		return fileType;
	}

	public void setFileType(String fileType) {

		this.fileType = fileType;
	}


	/**
	 * 
	* @ClassName: MediaScannerListener
	* @Description:媒体扫描监听器 
	* @author: lee
	* @date: 2012-12-4 下午05:18:58
	*
	 */
	public interface MediaScannerListener {
		void onFinishedScanFile(); // 结束 通知相册界面刷新UI
	}
	private MediaScannerListener mediaScannerListener;

	public void registMediaScannerListener(MediaScannerListener mediaScannerListener) {
		this.mediaScannerListener = mediaScannerListener;
	}

	public void unregistMediaScannerListener() {
		if (this.mediaScannerListener != null) {
			this.mediaScannerListener = null;
		}
	}
}

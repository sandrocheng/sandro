/**
 * FileName: HttpConnection.java
 * @Description: TODO(用一句话描述该文件做什么)
 * All rights Reserved, Designed By 21winmess
 * Copyright: Copyright(C) 2010-2011 
 * Company 21winmess DaLian LTD.
 * @author: Allan Zhang
 * @version V1.3
 * Createdate: 2012-10-15 下午03:58:58
 *
 * Modification History:
 * Date Author Version Discription
 * -----------------------------------------------------------------------------------
 * 2012-10-15 Qute_Android2.0
 * Why & What is modified: <修改原因描述>
 */
package com.tencent.onesecurity.util;

import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.InetSocketAddress;
import java.net.MalformedURLException;
import java.net.ProtocolException;
import java.net.Proxy;
import java.net.URL;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.atomic.AtomicReference;
import java.util.zip.InflaterInputStream;

import com.tencent.tmsecure.exception.NetWorkException;

public final class HttpConnection {
	public static final String METHOD_GET = "GET";
	public static final String METHOD_POST = "POST";
//	private static final String LOGIN_ACCEPT_TYPE = "*/*";
//	private static final String LOGIN_CONTENT_TYPE = "application/octet-stream";
	private static final int CONNECT_TIMEOUT = 30000;
	private static final int READ_TIMEOUT = 30000;
//	private static final byte MAX_REDIRECT_TIMES = 2;
//	private static final byte MAX_RECONNECT_TIMES = 1;
	private String mUrl;
	private String mRequestMethod;
	private HttpURLConnection mHttpUrlConn;
	private byte mPostData[];
	private int mResponseCode;
	private Hashtable<String,String> mSetRequestProperties;
	private boolean isWapConnection;
//	private boolean needSwitchNetwork;
	private byte mRedirectTimes;
	private byte mReConnectTimes;

	private HttpConnection(String url) {
		mRequestMethod = "GET";
		mResponseCode = -1;
		mSetRequestProperties = new Hashtable<String,String>(0);
		isWapConnection = false;
//		needSwitchNetwork = true;
		mRedirectTimes = 0;
		mReConnectTimes = 0;
		mUrl = url;
	}

	public static synchronized HttpConnection createHttpConnection(String url) throws NetWorkException {
		HttpConnection con = new HttpConnection(url);
		byte networkType = NetworkUtil.getNetworkType();
		int errCode = 0;
		if (-1 == networkType) {
			errCode = -1052;
			throw new NetWorkException(errCode, "no connecition!");
		}

		try {
			errCode = -1000;
			con.initConnection(new URL(con.mUrl), networkType);
		} catch (MalformedURLException e) {
			errCode = -1053;
			throw new NetWorkException(errCode, (new StringBuilder("malformed url: ")).append(url).append(" ").append(e.getMessage()).toString());
		}
		return con;
	}

	public static synchronized HttpConnection createHttpConnection(HttpConnection http) throws NetWorkException {
		byte networkType = NetworkUtil.getNetworkType();
		HttpConnection con = new HttpConnection(http.getRequestUrl());
		int errCode = 0;
		if (-1 == networkType) {
			errCode = -1052;
			throw new NetWorkException(errCode, "no connection!");
		}
		try {
			errCode = -1000;
			if (http.isWapConnection && networkType != 2)
				networkType = 2;
			else if (!http.isWapConnection && networkType == 2)
				networkType = 1;

			con.initConnection(new URL(con.mUrl), networkType);
			con.setRequestMethod(http.getRequestMethod());
			con.setPostData(http.getPostData());
			con.setRequestPropertiesEx(http.getRequestProperties());
		} catch (MalformedURLException e) {
			errCode = -1053;
			throw new NetWorkException(errCode, (new StringBuilder("invalide url: ")).append(con.mUrl).append(" ").append(e.getMessage()).toString());
		}
		errCode = 0;
		return con;
	}

	private void initConnection(URL requestUrl, byte networkType) throws NetWorkException {
		int errCode = -1000;

		try {
			if (-1 != networkType) {
				if (2 == networkType) {
					Proxy proxy = new Proxy(java.net.Proxy.Type.HTTP, new InetSocketAddress(NetworkUtil.getProxyHost(), NetworkUtil.getProxyPort()));
					mHttpUrlConn = (HttpURLConnection) requestUrl.openConnection(proxy);
					isWapConnection = true;
				} else {
					if (networkType == 0) {
						if (WifiUtil.needWifiApprove()) {
							errCode -= 63;
							throw new NetWorkException(errCode, "wifi need authenticate!");
						}
						/*
						 * WifiUtil.needWifiApprove(new
						 * IWifiApproveCheckCallBack() {
						 * 
						 * @Override public void
						 * onWifiApproveCheckFinished(boolean arg0, boolean
						 * arg1) { // TODO Auto-generated method stub if(arg0 ==
						 * true) { //errCode -= 63; //throw new
						 * NetWorkException(-63, "wifi need authenticate!"); int
						 * errCode = -63; Log.i("HttpConnection", "-63"); }
						 * if(arg1 = true) { int errCode = -63;
						 * Log.i("HttpConnection", "-63"); } } });
						 */
					}
					mHttpUrlConn = (HttpURLConnection) requestUrl.openConnection();
					isWapConnection = false;
				}
				mHttpUrlConn.setReadTimeout(READ_TIMEOUT);
				mHttpUrlConn.setConnectTimeout(CONNECT_TIMEOUT);
			}
		} catch (IllegalArgumentException e) {
			errCode -= 57;
			throw new NetWorkException(errCode, (new StringBuilder("arg error: ")).append(e.getMessage()).toString());
		} catch (SecurityException e) {
			errCode -= 58;
			throw new NetWorkException(errCode, (new StringBuilder("security error: ")).append(e.getMessage()).toString());
		} catch (UnsupportedOperationException e) {
			errCode -= 59;
			throw new NetWorkException(errCode, (new StringBuilder("unsupported operation error: ")).append(e.getMessage()).toString());
		} catch (IOException e) {
			errCode -= 56;
			throw new NetWorkException(errCode, (new StringBuilder("IOException : ")).append(e.getMessage()).toString());
		}
	}

	public void setRequestProperty(String field, String value) {

		if (field == null || value == null)
			return;

		if (mHttpUrlConn != null) {
			mHttpUrlConn.setRequestProperty(field, value);
			mSetRequestProperties.put(field, value);
		}
	}

	@SuppressWarnings("unchecked")
	public void setRequestPropertiesEx(Hashtable<String,String> properties) {
		if (mHttpUrlConn != null && properties != null) {
			Set propertySet = properties.entrySet();
			java.util.Map.Entry entry;
			for (Iterator iterator = propertySet.iterator(); iterator.hasNext(); setRequestProperty((String) entry.getKey(), (String) entry.getValue()))
				entry = (java.util.Map.Entry) iterator.next();
		}
	}

	@SuppressWarnings("unchecked")
	public void setRequestProperties(Hashtable<String,String> properties) {
		if (properties == null || properties.size() == 0)
			return;

		if (mHttpUrlConn != null) {
			Set propertySet = properties.entrySet();
			java.util.Map.Entry entry;
			for (Iterator iterator = propertySet.iterator(); iterator.hasNext(); mHttpUrlConn.setRequestProperty((String) entry.getKey(), (String) entry.getValue()))
				entry = (java.util.Map.Entry) iterator.next();
		}
	}

	public void setRequestMethod(String method) {
		mRequestMethod = method;
		if ("GET".equalsIgnoreCase(method))
			mRequestMethod = "GET";
		else if ("POST".equalsIgnoreCase(method))
			mRequestMethod = "POST";
	}

	public String getRequestMethod() {
		return mRequestMethod;
	}

	public void setPostData(byte postData[]) {
		mPostData = postData;
	}

	public byte[] getPostData() {
		return mPostData;
	}

	public int sendRequest() throws NetWorkException {

		int errCode = 0;

		mHttpUrlConn.setRequestProperty("Cookie", "");
		mHttpUrlConn.setRequestProperty("Accept", "*/*");
		mHttpUrlConn.setRequestProperty("Accept-Charset", "utf-8");
		mHttpUrlConn.setRequestProperty("Content-Type", "application/octet-stream");
		mHttpUrlConn.setInstanceFollowRedirects(true);
		System.setProperty("http.keepAlive", "false");

		if ("GET".equalsIgnoreCase(mRequestMethod)) {
			errCode = -3000;
			try {
				mHttpUrlConn.setRequestMethod("GET");
			} catch (ProtocolException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} else {
			errCode = -2000;
			try {
				mHttpUrlConn.setRequestMethod("POST");
			} catch (ProtocolException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			mHttpUrlConn.setDoOutput(true);
			mHttpUrlConn.setDoInput(true);
			mHttpUrlConn.setUseCaches(false);

			if (mPostData != null) {
				mHttpUrlConn.setRequestProperty("Content-length", (new StringBuilder()).append(mPostData.length).toString());
				OutputStream outputStream;
				try {
					outputStream = mHttpUrlConn.getOutputStream();
					outputStream.write(mPostData);
					outputStream.flush();
					outputStream.close();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}

		try {
			mResponseCode = mHttpUrlConn.getResponseCode();
			if (mResponseCode >= 302 && mResponseCode <= 305) {

				if (mRedirectTimes++ < 2) {
					mUrl = getRedirectUrl();
					mHttpUrlConn.disconnect();
					initConnection(new URL(mUrl), NetworkUtil.getNetworkType());
					setRequestMethod(mRequestMethod);
					if ("POST".equalsIgnoreCase(mRequestMethod) && mPostData != null)
						setPostData(mPostData);

					setRequestProperties(mSetRequestProperties);
					return sendRequest();
				}
				// break MISSING_BLOCK_LABEL_922;
			}

			try {
				if (mResponseCode == 200) {
					String contentType = getContentType();
					if (2 == NetworkUtil.getNetworkType() && contentType != null && contentType.toLowerCase().indexOf("vnd.wap.wml") != -1 && mReConnectTimes++ < 1) {
						mHttpUrlConn.disconnect();
						initConnection(new URL(mUrl), (byte) NetworkUtil.getNetworkType());
						setRequestMethod(mRequestMethod);
						if ("POST".equalsIgnoreCase(mRequestMethod) && mPostData != null)
							setPostData(mPostData);

						setRequestProperties(mSetRequestProperties);
						return sendRequest();
					}
				}
			} /*
			 * catch(UnknownHostException e) { if(needSwitchNetwork) {
			 * needSwitchNetwork = false; mHttpUrlConn.disconnect();
			 * 
			 * try {if(2 == NetworkUtil.getNetworkType().value() &&
			 * isWapConnection) initConnection(new URL(mUrl), (byte)1); else
			 * if(2 != NetworkUtil.getNetworkType().value() && !isWapConnection)
			 * initConnection(new URL(mUrl), (byte)2); }
			 * catch(MalformedURLException e1) { errCode -= 53; throw new
			 * NetWorkException(errCode, (new
			 * StringBuilder("malformed url: ")).append
			 * (mUrl).append(" ").append(e.getMessage()).toString()); }
			 * setRequestMethod(mRequestMethod);
			 * if("POST".equalsIgnoreCase(mRequestMethod) && mPostData != null)
			 * setPostData(mPostData);
			 * 
			 * setRequestProperties(mSetRequestProperties); return
			 * sendRequest(); } else{ errCode -= 62; throw new
			 * NetWorkException(errCode, (new
			 * StringBuilder("sendRequest UnknownHostException: "
			 * )).append(e.getMessage()).toString()); } }
			 */catch (IllegalAccessError e) {
				errCode -= 60;
				throw new NetWorkException(errCode, (new StringBuilder("sendRequest IllegalAccessError: ")).append(e.getMessage()).toString());
			} catch (IllegalStateException e) {
				errCode -= 61;
				throw new NetWorkException(errCode, (new StringBuilder("sendRequest IllegalStateException: ")).append(e.getMessage()).toString());
			} /*
			 * catch(ProtocolException e) { errCode -= 51; throw new
			 * NetWorkException(errCode, (new
			 * StringBuilder("sendRequest ProtocolException: "
			 * )).append(e.getMessage()).toString()); }
			 * catch(ClientProtocolException e) { errCode -= 51; throw new
			 * NetWorkException(errCode, (new
			 * StringBuilder("sendRequest ClientProtocolException: "
			 * )).append(e.getMessage()).toString()); } catch(SocketException e)
			 * { errCode -= 54; throw new NetWorkException(errCode, (new
			 * StringBuilder
			 * ("sendRequest SocketException: ")).append(e.getMessage
			 * ()).toString()); } catch(SocketTimeoutException e) { errCode -=
			 * 55; throw new NetWorkException(errCode, (new
			 * StringBuilder("sendRequest SocketTimeoutException: "
			 * )).append(e.getMessage()).toString()); }
			 */catch (NetWorkException e) {
				errCode -= 56;
				throw new NetWorkException(errCode, (new StringBuilder("sendRequest NetWorkException: ")).append(e.getMessage()).toString());
			} catch (Exception e) {
				throw new NetWorkException(errCode, (new StringBuilder("sendRequest Exception: ")).append(e.getMessage()).toString());
			}
			if (mResponseCode != 206 && mResponseCode != 200) {

				errCode += mResponseCode;
				throw new NetWorkException(errCode, (new StringBuilder("response code is unnormal: ")).append(mResponseCode).toString());
			} else {
				return mResponseCode;
			}

		} catch (IOException e2) {
			// TODO Auto-generated catch block
			e2.printStackTrace();
		}
		return errCode;
	}

	public int getResponse(boolean deflate, AtomicReference<byte[]> retBytesRef) throws NetWorkException {
		int rst = -4000;
		if (mHttpUrlConn == null || !isConnected())
			return rst;

		byte rspData[] = (byte[]) null;

		try {
			InputStream fin = ((InputStream) (deflate ? ((InputStream) (new InflaterInputStream(mHttpUrlConn.getInputStream()))) : mHttpUrlConn.getInputStream()));
			rspData = getBytesFromIS(fin);
			rst = 0;
		} catch (Exception e) {
			rst = -4002;
			throw new NetWorkException(rst, (new StringBuilder("get response exception : ")).append(e.getMessage()).toString());
		}

		retBytesRef.set(rspData);

		return rst;
	}

	private static byte[] getBytesFromIS(InputStream is) throws NetWorkException {
		BufferedInputStream bis = new BufferedInputStream(is);
		byte buffer[] = new byte[2048];
		ByteArrayOutputStream baos = new ByteArrayOutputStream();
		int len = 0;

		try {
			while ((len = is.read(buffer)) != -1)
				baos.write(buffer, 0, len);
		} catch (IOException e1) {
			throw new NetWorkException(-56, (new StringBuilder("get Bytes from inputStream when read buffer: ")).append(e1.getMessage()).toString());
		}

		byte rst[] = baos.toByteArray();

		try {
			bis.close();
			bis = null;
			baos.close();
			baos = null;
		} catch (Exception e) {
			throw new NetWorkException(-56, (new StringBuilder("get Bytes from inputStream: ")).append(e.getMessage()).toString());
		}
		return rst;
	}

	public InputStream getInputStream() throws NetWorkException {
		try {
			return mHttpUrlConn.getInputStream();
		} catch (Exception e) {
			throw new NetWorkException(-56, (new StringBuilder("get inputStream: ")).append(e.getMessage()).toString());
		}
	}

	private boolean isConnected() {
		return mResponseCode == 200 || mResponseCode == 206;
	}

	public int getResponseCode() {
		return mResponseCode;
	}

	public void close() {
		if (mHttpUrlConn != null) {
			mHttpUrlConn.disconnect();
			mHttpUrlConn = null;
		}
	}

	public String getHeaderField(String field) throws NetWorkException {
		try {
			return mHttpUrlConn.getHeaderField(field);
		} catch (Exception e) {
			throw new NetWorkException(-56, (new StringBuilder("get header field: ")).append(e.getMessage()).toString());
		}
	}

	public long getBreakPointTotalSize() throws NetWorkException {
		long size = -1L;
		String headerField = getHeaderField("Content-Range");
		if (headerField != null)

			try {
				int index = headerField.lastIndexOf('/') + 1;
				size = Long.parseLong(headerField.substring(index).trim());
			} catch (Exception e) {
				throw new NetWorkException(-56, (new StringBuilder("get breakpoint total size: ")).append(e.getMessage()).toString());
			}
		return size;
	}

	public long getContentLength() throws NetWorkException {
		long size = -1L;
		String headerField = getHeaderField("content-length");
		if (headerField != null)

			try {
				size = Long.parseLong(headerField.trim());
			} catch (Exception e) {
				throw new NetWorkException(-56, (new StringBuilder("get content length: ")).append(e.getMessage()).toString());
			}

		return size;
	}

	public String getContentType() throws NetWorkException {
		try {
			return mHttpUrlConn.getHeaderField("Content-Type");
		} catch (Exception e) {
			throw new NetWorkException(-56, (new StringBuilder("get content type: ")).append(e.getMessage()).toString());
		}
	}

	public String getRedirectUrl() throws NetWorkException {
		try {
			return mHttpUrlConn.getHeaderField("Location");
		} catch (Exception e) {
			throw new NetWorkException(-56, (new StringBuilder("get redirect url: ")).append(e.getMessage()).toString());
		}
	}

	public boolean isWapConnection() {
		return isWapConnection;
	}

	public String getRequestUrl() {
		return mUrl;
	}

	private Hashtable<String,String> getRequestProperties() {
		return mSetRequestProperties;
	}

}
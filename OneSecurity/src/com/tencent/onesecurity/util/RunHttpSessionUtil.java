/**
* FileName: RunHttpSessionUtil.java
* @Description: TODO(用一句话描述该文件做什么)
* All rights Reserved, Designed By 21winmess
* Copyright: Copyright(C) 2010-2011 
* Company 21winmess DaLian LTD.
* @author: Allan Zhang
* @version V1.3
* Createdate: 2012-11-15 上午11:10:10
*
* Modification History:
* Date Author Version Discription
* -----------------------------------------------------------------------------------
* 2012-11-15 Qute_Android2.0
* Why & What is modified: <修改原因描述>
*/
package com.tencent.onesecurity.util;

import java.util.concurrent.atomic.AtomicReference;

import android.content.Context;

import com.qq.jce.wup.UniPacket;
import com.tencent.onesecurity.common.ApplicationConfig;
import com.tencent.tmsecure.exception.NetWorkException;

/**
 * @ClassName: RunHttpSessionUtil
 * @Description:TODO(这里用一句话描述这个类的作用)
 * @author: Allan
 * @date: 2012-11-15 上午11:10:10
 *
 */
public class RunHttpSessionUtil {

//	private static final String TAG = "RunHttpSessionUtil";
	private static RunHttpSessionUtil instance = null;
	private static Object lock = new Object();
	
	RunHttpSessionUtil() {
	}
	
	public static RunHttpSessionUtil getInstance() {
		if (instance == null) {
			synchronized (lock) {
				if (instance == null) {
					instance = new RunHttpSessionUtil();
				}
			}
		}
		return instance;
	}
	
	/*
	 * 将本地信息编码、加密后发送到服务器，服务器返回相应的信息解密、解码
	 * @param request： 请求对象
	 * @param response：应答对象
	 * @param report：是否获取返回数据
	 */
	public int runHttpSession(Context context, UniPacket request, UniPacket respond, boolean report, String url, String method) 
	{
		int err = ErrorCode.ERR_WUP;
		HttpConnection httpConnection = null;
		try{
			// 编码
			byte[] vEncodedData = request.encode();
			// 加密
			//byte[] vEncryptData = TccCryptor.encrypt(context, vEncodedData, null);
			byte[] vEncryptData = null;
			XxteaCoding xxtea = null;
			if(ApplicationConfig.teakey != null && "".equals(ApplicationConfig.teakey) == false) {
				xxtea = new XxteaCoding(ApplicationConfig.teakey.getBytes());
				vEncryptData = xxtea.encode(vEncodedData);
			}
			
			// 发送
			httpConnection = HttpConnection.createHttpConnection(url);
			httpConnection.setRequestMethod(method);
			httpConnection.setPostData(vEncryptData);
			httpConnection.sendRequest();
			// 接收
			AtomicReference<byte[]> retBytesRef = new AtomicReference<byte[]>();
			if ((err = httpConnection.getResponse(false, retBytesRef)) != ErrorCode.ERR_NONE) 
			{
				return err;
			}

			byte[] retInfo = retBytesRef.get();

			if (report && retInfo != null && retInfo.length > 0) 
			{
				// 解密
				//byte[] vDecryptData = TccCryptor.decrypt(context, retInfo, null);
				byte[] vDecryptData = xxtea.decode(retInfo);

				// 解码
				respond.decode(vDecryptData);
			}

			err = ErrorCode.ERR_NONE;
		}
		catch (NetWorkException e) {
			err = e.getErrCode();
			return err;
		}
		catch(IllegalArgumentException e) {
			err = ErrorCode.ERR_WUP + ErrorCode.ERR_ILLEGAL_ARG;
			e.printStackTrace();
		} 
		catch (Throwable e) {
			err = ErrorCode.ERR_WUP;
			e.printStackTrace();
		} 
		finally {
			if(null != httpConnection) 
			{
				httpConnection.close();
				httpConnection = null;
			}
		}

		return err;
	}
}

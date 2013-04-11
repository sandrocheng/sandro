/**
* FileName: INotifcatePayResult.java
* @Description: TODO(用一句话描述该文件做什么)
* All rights Reserved, Designed By 21winmess
* Copyright: Copyright(C) 2010-2011 
* Company 21winmess DaLian LTD.
* @author: Allan Zhang
* @version V1.3
* Createdate: 2012-11-27 下午07:23:46
*
* Modification History:
* Date Author Version Discription
* -----------------------------------------------------------------------------------
* 2012-11-27 Qute_Android2.0
* Why & What is modified: <修改原因描述>
*/
package com.tencent.onesecurity.manager.vip;

/**
 * @ClassName: INotifcatePayResult
 * @Description:
 * @author: Allan
 * @date: 2012-11-27 下午07:23:46
 *
 */
public interface INotifcatePayResult {

	public void notificatePayResult(int payState, long days);
	public void notificateGetStatus();
	public void notificateNetworkError();
}

package com.tencent.onesecurity.model;

import com.tencent.onesecurity.util.jce.TipsTaf;


/**
 * 消息实体类
 * @ClassName: MessageEntity
 * @Description:消息实体类
 * @author: Jess Yan
 * @date: 2012-11-1 下午04:34:52
 *
 */
public class MessageEntity {
	
	public MessageEntity() {}
	public MessageEntity(TipsTaf messageTif) {
		msgId = messageTif.Id;
//		msgType = messageTif.
		noticeTime = messageTif.DisplayBegin;
		title = "";
		summary = messageTif.summary;
		url = messageTif.Url;
	}
	
	/** 主键 */
	public int id = -1;
	/** 后台可以识别的消息ID */
	public String msgId = null;
	/** 消息类型，暂时用不上 */
	public int msgType = -1;
	/** 消息通知时间 */
	public long noticeTime = -1;
	/** 消息标题 */
	public String title = null;
	/** 消息摘要 */
	public String summary = null;
	/** 全文url */
	public String url = null;
	/** 是否已读 */
	public Boolean hasRead = null;
	/** 是否已经展示 */
	public Boolean hasReveal = null;
	/** 消息接收时间 */
	public long receiveTime = -1;
}

package com.tencent.onesecurity.manager.notification;

import java.util.ArrayList;
import java.util.Date;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;

import com.tencent.onesecurity.MainApplication;
import com.tencent.onesecurity.R;
import com.tencent.onesecurity.dao.ConfigDao;
import com.tencent.onesecurity.dao.MessageDao;
import com.tencent.onesecurity.model.MessageEntity;
import com.tencent.onesecurity.ui.activity.menu.NoticeCenterActivity;
import com.tencent.onesecurity.ui.helper.UIConstants;
import com.tencent.onesecurity.util.Log;
import com.tencent.onesecurity.util.jce.TipsTaf;

/**
 * 消息管理器
 * 
 * @ClassName: MessageManager
 * @Description:对本地的消息进行管理
 * @author: Jess Yan
 * @date: 2012-11-1 下午05:57:12
 * 
 */
public class MessageManager {

	public static int NOTIFICATION_ID = 201082;
	public static String KEY_FROM = "KEY_FROM";
	public static String KEY_ID_AUTO_OPEN = "KEY_ID_AUTO_OPEN";
	public static String KEY_URL_AUTO_OPEN = "KEY_URL_AUTO_OPEN";
	public static int BACK_TO_MAIN = 1;
	public static int BACK_DEFAULT = 2;

	/*--Lion fix bug NO 9619185----2012-12-25------Start--*/
	/**
	 * 是否第一次从服务器拉取到新消息， 如拉取到新消息，则置true，同时通知UI绘制new标志， 第二个新消息，则不提示。
	 */
	private boolean firstNewMsg = false;

	/*--Lion fix bug NO 9619185----2012-12-25------End--*/

	/** 单例 */
	private static MessageManager instance = null;

	/**
	 * 私有构造方法
	 */
	private MessageManager() {

	}

	/**
	 * 获得单例的MessageManager对象
	 * 
	 * @return
	 */
	public static MessageManager getInstance() {
		if (instance == null) {
			synchronized (MessageManager.class) {
				if (instance == null) {
					instance = new MessageManager();
				}
			}
		}
		return instance;
	}

	/**
	 * 从网络拉取到的消息保存到数据库
	 * 
	 * @param tafMessages
	 */
	public void saveMessages(ArrayList<TipsTaf> tafMessages) {
		MessageEntity entity = null;
		MessageDao msgDao = new MessageDao();
		for (TipsTaf tafMsg : tafMessages) {
			entity = new MessageEntity(tafMsg);
			if (hasMsgId(entity.msgId) == false)
				// 默认列表显示的时间是展示时间
				entity.receiveTime = entity.noticeTime;

			/*--Jess fix bug NO 9557618 ----20121121-------S-*/
			// 如果是消息已经错过了展示时间，则修改hasReveal = true
			if (entity.noticeTime <= System.currentTimeMillis()) {
				entity.hasReveal = true;

				// 错过展示的消息，列表展示时间显示当前拉取的时间
				entity.receiveTime = System.currentTimeMillis();
			}
			/*--Jess fix bug NO 9557618 ----20121121-------E-*/

			msgDao.insertMessage(entity);
		}
	}

	/**
	 * 从网上拉取的消息保存到本地
	 * 
	 * @param tafMessages
	 */
	public void saveMessage(TipsTaf tafMessages) {
		MessageEntity entity = null;
		entity = new MessageEntity(tafMessages);
		if (hasMsgId(entity.msgId)) {
			Log.d("FETCH_DATA", "Repeate data, msgId:" + entity.msgId);
			return;
		}

		long now = System.currentTimeMillis();

		// 如果展示时间比现在小，说明已经错过了展示时间，这时候修改hasReveal = true, UI显示的时间为当前时间。
		if (entity.noticeTime <= now) {
			entity.hasReveal = true;

			// modify by lynnawang bug:9581163 20121205 start
			ConfigDao.getInstance().setNewMsgNum(1);
			// modify by lynnawang bug:9581163 20121205 end

			/*--Lion fix bug NO 9619185----2012-12-25------Start--*/
			// 如果是第一个从服务器拉下来的新消息，则提醒UI绘制new标志
			if (!firstNewMsg && null != msgUnReadNotify) {
				msgUnReadNotify.onChange(1);
				firstNewMsg = true;
			}
			/*--Lion fix bug NO 9619185----2012-12-25------End--*/

			// 错过展示的消息，列表展示时间显示当前拉取的时间
			entity.receiveTime = now;
		} else {
			entity.receiveTime = entity.noticeTime;
		}

		// 保存到数据库。
		MessageDao msgDao = new MessageDao();
		msgDao.insertMessage(entity);

		Log.d("FETCH_DATA", "Save data:" + " hasReveal:" + entity.hasReveal
				+ " id:" + entity.id + " msgId:" + entity.msgId
				+ " noticeTime:" + entity.noticeTime + " receiveTime:"
				+ entity.receiveTime);
	}

	/**
	 * 向消息中心插入一条开通试用消息
	 */
	public String saveBuildInTrialMessage() {
		MessageEntity entity = null;
		entity = new MessageEntity();
		// 为防止与后台下发消息冲突，此处msgid赋固定值
		String msgId = MainApplication.getContext().getResources().getString(R.string.buildin_msgid);
		entity.msgId = msgId;
		entity.summary = MainApplication.getContext().getResources().getString(R.string.buildin_msg_summary);
		entity.hasRead = false;
		entity.url = "file:///android_asset/builtin/builtin.html";

		// 提醒UI绘制new标志
		if (null != msgUnReadNotify) {
			msgUnReadNotify.onChange(1);
		}

		// 保存到数据库。
		MessageDao msgDao = new MessageDao();
		msgDao.insertMessage(entity);

		Log.d("BUILD_IN_DATA", "Save data:" + " hasReveal:" + entity.hasReveal
				+ " id:" + entity.id + " msgId:" + entity.msgId
				+ " noticeTime:" + entity.noticeTime + " receiveTime:"
				+ entity.receiveTime);

		return msgId;
	}
	
	public boolean hasMsgId(String msgId) {
		ArrayList<MessageEntity> messages = null;

		MessageDao msgDao = new MessageDao();
		String sql = "select " + MessageDao.COLUMN_ID + ", "
				+ MessageDao.COLUMN_MSG_ID + ", " + MessageDao.COLUMN_MSG_TYPE
				+ ", " + MessageDao.COLUMN_NOTICE_TIME + ", "
				+ MessageDao.COLUMN_TITLE + ", " + MessageDao.COLUMN_SUMMARY
				+ ", " + MessageDao.COLUMN_URL + ", "
				+ MessageDao.COLUMN_HAS_READ + ", "
				+ MessageDao.COLUMN_HAS_REVEAL + ", "
				+ MessageDao.COLUMN_RECEIVE_TIME + " FROM "
				+ MessageDao.TB_MESSAGE + " WHERE " + MessageDao.COLUMN_MSG_ID
				+ " = '" + msgId + "'";

		messages = msgDao.queryMessages(sql);

		if (messages != null && messages.size() != 0) {
			messages.clear();
			return true;
		}
		return false;
	}

	/**
	 * 获得可以投递的消息列表
	 * 
	 * @return
	 */
	public ArrayList<MessageEntity> getCanDeliverMessages() {
		ArrayList<MessageEntity> messages = null;

		MessageDao msgDao = new MessageDao();
		String sql = "select " + MessageDao.COLUMN_ID + ", "
				+ MessageDao.COLUMN_MSG_ID + ", " + MessageDao.COLUMN_MSG_TYPE
				+ ", " + MessageDao.COLUMN_NOTICE_TIME + ", "
				+ MessageDao.COLUMN_TITLE + ", " + MessageDao.COLUMN_SUMMARY
				+ ", " + MessageDao.COLUMN_URL + ", "
				+ MessageDao.COLUMN_HAS_READ + ", "
				+ MessageDao.COLUMN_HAS_REVEAL + ", "
				+ MessageDao.COLUMN_RECEIVE_TIME + " FROM "
				+ MessageDao.TB_MESSAGE + " WHERE "
				+ MessageDao.COLUMN_HAS_READ + " = 0" + "   AND "
				+ MessageDao.COLUMN_HAS_REVEAL + " = 0" + "   AND "
				+ MessageDao.COLUMN_NOTICE_TIME + " > "
				+ System.currentTimeMillis();

		messages = msgDao.queryMessages(sql);

		return messages;
	}

	/**
	 * 获得所有已经通知过的Message
	 * 
	 * @return
	 */
	public ArrayList<MessageEntity> getDeliveredMessages() {
		ArrayList<MessageEntity> messages = null;

		MessageDao msgDao = new MessageDao();
		String sql = "select " + MessageDao.COLUMN_ID + ", "
				+ MessageDao.COLUMN_MSG_ID + ", " + MessageDao.COLUMN_MSG_TYPE
				+ ", " + MessageDao.COLUMN_NOTICE_TIME + ", "
				+ MessageDao.COLUMN_TITLE + ", " + MessageDao.COLUMN_SUMMARY
				+ ", " + MessageDao.COLUMN_URL + ", "
				+ MessageDao.COLUMN_HAS_READ + ", "
				+ MessageDao.COLUMN_HAS_REVEAL + ", "
				+ MessageDao.COLUMN_RECEIVE_TIME + " FROM "
				+ MessageDao.TB_MESSAGE + " WHERE "
				+ MessageDao.COLUMN_HAS_REVEAL + " = 1" + " ORDER BY "
				+ MessageDao.COLUMN_RECEIVE_TIME + " DESC ";

		messages = msgDao.queryMessages(sql);

		return messages;
	}

	/**
	 * 获得未读消息数。 条件：a.已展示FLG = 1 b.已读FLG = 0;
	 * 
	 * @return
	 */
	public int getUnreadMsgCnt() {
		int cnt = 0;

		MessageDao msgDao = new MessageDao();
		String sql = "select " + MessageDao.COLUMN_ID + " FROM "
				+ MessageDao.TB_MESSAGE + " WHERE "
				+ MessageDao.COLUMN_HAS_REVEAL + " = 1" + "   AND "
				+ MessageDao.COLUMN_HAS_READ + " = 0";

		cnt = msgDao.queryMessagesCnt(sql);

		return cnt;
	}

	/**
	 * 获得所有消息，调试用
	 * 
	 * @return
	 */
	public ArrayList<MessageEntity> getAllMessages() {
		ArrayList<MessageEntity> messages = null;

		MessageDao msgDao = new MessageDao();
		String sql = "select " + MessageDao.COLUMN_ID + ", "
				+ MessageDao.COLUMN_MSG_ID + ", " + MessageDao.COLUMN_MSG_TYPE
				+ ", " + MessageDao.COLUMN_NOTICE_TIME + ", "
				+ MessageDao.COLUMN_TITLE + ", " + MessageDao.COLUMN_SUMMARY
				+ ", " + MessageDao.COLUMN_URL + ", "
				+ MessageDao.COLUMN_HAS_READ + ", "
				+ MessageDao.COLUMN_HAS_REVEAL + ", "
				+ MessageDao.COLUMN_RECEIVE_TIME + " FROM "
				+ MessageDao.TB_MESSAGE;

		messages = msgDao.queryMessages(sql);

		return messages;
	}

	/**
	 * 获得1个Message
	 * 
	 * @return
	 */
	public MessageEntity getMessage(String id) {

		MessageDao msgDao = new MessageDao();
		String sql = "select " + MessageDao.COLUMN_ID + ", "
				+ MessageDao.COLUMN_MSG_ID + ", " + MessageDao.COLUMN_MSG_TYPE
				+ ", " + MessageDao.COLUMN_NOTICE_TIME + ", "
				+ MessageDao.COLUMN_TITLE + ", " + MessageDao.COLUMN_SUMMARY
				+ ", " + MessageDao.COLUMN_URL + ", "
				+ MessageDao.COLUMN_HAS_READ + ", "
				+ MessageDao.COLUMN_HAS_REVEAL + ", "
				+ MessageDao.COLUMN_RECEIVE_TIME + " FROM "
				+ MessageDao.TB_MESSAGE + " WHERE " + MessageDao.COLUMN_ID
				+ " = " + id;

		ArrayList<MessageEntity> messages = msgDao.queryMessages(sql);
		MessageEntity ret = null;
		if (messages != null && messages.size() != 0) {
			ret = messages.get(0);
		}
		return ret;
	}

	/**
	 * 内置vip赠送,获得1个Message
	 * @param msgID
	 * @return
	 */
	public MessageEntity getMessageByMsgID(String msgID) {

		MessageDao msgDao = new MessageDao();
		String sql = "select " + MessageDao.COLUMN_ID + ", "
				+ MessageDao.COLUMN_MSG_ID + ", " 
				+ MessageDao.COLUMN_MSG_TYPE + ", " 
				+ MessageDao.COLUMN_NOTICE_TIME + ", "
				+ MessageDao.COLUMN_TITLE + ", " 
				+ MessageDao.COLUMN_SUMMARY + ", " 
				+ MessageDao.COLUMN_URL + ", "
				+ MessageDao.COLUMN_HAS_READ + ", "
				+ MessageDao.COLUMN_HAS_REVEAL + ", "
				+ MessageDao.COLUMN_RECEIVE_TIME + " FROM "
				+ MessageDao.TB_MESSAGE 
				+ " WHERE " + MessageDao.COLUMN_MSG_ID + " = '" + msgID + "'";

		ArrayList<MessageEntity> messages = msgDao.queryMessages(sql);
		MessageEntity ret = null;
		if (messages != null && messages.size() != 0) {
			ret = messages.get(0);
		}
		return ret;
	}

	/**
	 * 更新已读标志
	 * 
	 * @param id
	 * @param hasReadFlag
	 * @return
	 */
	public int updateHasReadFlag(int id, boolean hasReadFlag) {
		MessageDao msgDao = new MessageDao();
		MessageEntity entity = new MessageEntity();
		entity.hasRead = hasReadFlag;
		return msgDao.updateMessage(entity, MessageDao.COLUMN_ID + "=?",
				new String[] { String.valueOf(id) });
	}

	/**
	 * 更新已展现标志和时间（时间更新为客户端当前时间）
	 * 
	 * @param id
	 * @param hasRevealFlag
	 * @return
	 */
	public int updateHasRevealFlagAndTime(int id, boolean hasRevealFlag,
			long receiveTime) {
		MessageDao msgDao = new MessageDao();
		MessageEntity entity = new MessageEntity();
		entity.hasReveal = hasRevealFlag;
		entity.receiveTime = receiveTime;
		return msgDao.updateMessage(entity, MessageDao.COLUMN_ID + "=?",
				new String[] { String.valueOf(id) });
	}

	/**
	 * 清除所有消息
	 * 
	 * @return
	 */
	public int clearAllMessage() {
		MessageDao msgDao = new MessageDao();
		return msgDao.deleteMessage(MessageDao.COLUMN_HAS_REVEAL + "=?",
				new String[] { "1" });
	}

	/**
	 * 新消息提醒
	 */
	public void noticeMessage(long msgId) {

		// get消息
		MessageEntity entity = MessageManager.getInstance().getMessage(
				String.valueOf(msgId));
		if (entity == null) {
			return;
		}

		/*--Jess fix bug NO 9584499 ----20121206-------E-*/
		// 更新数据Reveal = true,receiveTime;
		long currentTime = System.currentTimeMillis();
		int cnt = MessageManager.getInstance().updateHasRevealFlagAndTime(
				entity.id, true, currentTime);
		if (cnt <= 0) {
			return;
		}

		// // 未读消息数
		// int unreadCnt = MessageManager.getInstance().getUnreadMsgCnt();

		// 新消息数量
		int newMsgNum = ConfigDao.getInstance().getNewMsgNum() + 1;

		ConfigDao.getInstance().setNewMsgNum(newMsgNum);

		// 发出Notification
		postNewMsgNotification(MainApplication.getContext(), entity, newMsgNum);

		// 记录未读消息标识
		// ConfigDao.getInstance().setHasUnreadMsgFlg(true);
	}

	/**
	 * 内置vip赠送新消息提醒
	 * @param msgId
	 */
	public void noticeMessage(String msgId) {

		// get消息
		MessageEntity entity = MessageManager.getInstance().getMessageByMsgID(
				msgId);
		if (entity == null) {
			return;
		}

		/*--Jess fix bug NO 9584499 ----20121206-------E-*/
		// 更新数据Reveal = true,receiveTime;
		long currentTime = System.currentTimeMillis();
		int cnt = MessageManager.getInstance().updateHasRevealFlagAndTime(
				entity.id, true, currentTime);
		if (cnt <= 0) {
			return;
		}

		// // 未读消息数
		// int unreadCnt = MessageManager.getInstance().getUnreadMsgCnt();

		// 新消息数量
		int newMsgNum = ConfigDao.getInstance().getNewMsgNum() + 1;

		ConfigDao.getInstance().setNewMsgNum(newMsgNum);

		// 发出Notification
		postNewMsgNotification(MainApplication.getContext(), entity, newMsgNum);

		// 记录未读消息标识
		// ConfigDao.getInstance().setHasUnreadMsgFlg(true);
	}

	/**
	 * 发一个新消息的通知
	 * 
	 * @param context
	 * @param entity
	 * @param unreadCnt
	 */
	private void postNewMsgNotification(Context context, MessageEntity entity,
			int unreadCnt) {

		NotificationManager mNotificationManager = (NotificationManager) context
				.getSystemService(Context.NOTIFICATION_SERVICE);

		// 先清空前一个
		mNotificationManager.cancel("TAG_NEW_MSG", NOTIFICATION_ID);

		Notification notification = new Notification();

		// modify by lynnawang 消息图标
		notification.icon = R.drawable.icon_notification_logo_new_msg;
		notification.tickerText = "tickerText " + entity.summary;

		/*--Jess fix bug NO 9560038 ----20121123-------S-*/
		notification.defaults = Notification.DEFAULT_ALL;
		notification.audioStreamType = android.media.AudioManager.ADJUST_LOWER;
		notification.flags = Notification.FLAG_AUTO_CANCEL
				| Notification.FLAG_ONLY_ALERT_ONCE;
		/*--Jess fix bug NO 9560038 ----20121123-------E-*/
		String title = MainApplication.getContext().getString(
				R.string.notice_center_unread)
				+ unreadCnt;
		String content = entity.summary;

		Intent back = new Intent(context, NoticeCenterActivity.class); // 点击该通知后要跳转的Activity
		/*--josh fix bug NO 9560131----20121126-------Start-*/
		back.setFlags(Intent.FLAG_ACTIVITY_CLEAR_TOP);
		/*--josh fix bug NO 9560131----20121126-------End-*/
		back.putExtra(KEY_FROM, KEY_FROM);
		if (unreadCnt == 1) {
			back.putExtra(KEY_URL_AUTO_OPEN, entity.url);
			back.putExtra(KEY_ID_AUTO_OPEN, entity.id);
		}
		PendingIntent contentIntent = PendingIntent.getActivity(context, 0,
				back, 0);

		// 发消息
		notification.setLatestEventInfo(context, title, content, contentIntent);
		mNotificationManager.notify("TAG_NEW_MSG", NOTIFICATION_ID,
				notification);

		// add by lynnawang 设置来消息的监听
		if (msgUnReadNotify != null) {
			msgUnReadNotify.onChange(unreadCnt);
		}

		// 广播通知消息中心界面有一条新消息来鸟
		sendBoradcastToNoticeCenter();

	}

	/*
	 * 当前页面停留在消息中心，通知消息中心有新数据到了
	 * 
	 * @param void
	 * 
	 * @return void
	 */
	private void sendBoradcastToNoticeCenter() {

		Intent intent = new Intent(UIConstants.NOTICE_CENTER_NEW_MESSAGE_ACTION);
		MainApplication.getContext().sendBroadcast(intent);
	}

	/**
	 * 清空通知栏的Notification
	 * 
	 * @param context
	 */
	public void removeNewMsgNotification(Context context) {
		NotificationManager mNotificationManager = (NotificationManager) context
				.getSystemService(Context.NOTIFICATION_SERVICE);

		// 先清空前一个
		mNotificationManager.cancel("TAG_NEW_MSG", NOTIFICATION_ID);

	}

	/**
	 * add by lynnawang 增加一个监听,监听新的消息
	 */
	public MsgUnreadNotify msgUnReadNotify;

	public interface MsgUnreadNotify {
		public void onChange(int unReadNum);
	}

	// /////////////////////////////////////////////
	public void tmpIninDb() {
		Date d = new Date();
		d.setMinutes(d.getMinutes() + 1); // 两分钟后弹一个

		MessageEntity entity = new MessageEntity();
		entity.msgId = "001";
		entity.msgType = 1;
		entity.noticeTime = d.getTime();
		entity.receiveTime = d.getTime();
		entity.title = "Hello world";
		entity.summary = "Hey, hehe ....";
		entity.url = "http://www.baidu.com";
		entity.hasRead = false;
		entity.hasReveal = false;

		// MessageDao msgDao = new MessageDao();

		// long id = msgDao.insertMessage(entity);

		// Intent intent = new Intent();
		// intent.setClass(MainApplication.getContext(),
		// ScheduleTaskProcessService.class);
		// intent.setAction(ScheduleTaskProcessService.ACTION_NOTICE_NEW_MESSAGE);
		// intent.putExtra("MSG_ID", id);
		// SystemTimerManager.getInstance().addSpecDateRemindTask("Message:" +
		// id, entity.noticeTime, intent);

		// ////////////
		ArrayList<MessageEntity> entities = MessageManager.getInstance()
				.getCanDeliverMessages();
		if (entities != null && entities.size() != 0) {
			// for (MessageEntity msg : entities) {

			// Intent intent = new Intent();
			// intent.setClass(MainApplication.getContext(),
			// ScheduleTaskProcessService.class);
			// intent.setAction(ScheduleTaskProcessService.ACTION_NOTICE_NEW_MESSAGE);
			// intent.putExtra("MSG_ID", msg.id);
			// SystemTimerManager.getInstance().addSpecDateRemindTask("Message:"
			// + msg.id, msg.noticeTime, intent);
			// }
		}
	}
}

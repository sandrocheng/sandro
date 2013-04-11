
package com.tencent.onesecurity.ui.customview.customWindow;

import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Message;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.PopupWindow;

import com.tencent.onesecurity.R;
import com.tencent.onesecurity.dao.ConfigDao;
import com.tencent.onesecurity.dao.DaoCreator;
import com.tencent.onesecurity.manager.notification.MessageManager;
import com.tencent.onesecurity.manager.notification.MessageManager.MsgUnreadNotify;
import com.tencent.onesecurity.ui.activity.menu.AboutActivity;
import com.tencent.onesecurity.ui.activity.menu.FeedbackActivity;
import com.tencent.onesecurity.ui.activity.menu.NoticeCenterActivity;
import com.tencent.onesecurity.ui.activity.menu.SettingActivity;
import com.tencent.onesecurity.ui.activity.vip.VipZoneActivity;
import com.tencent.onesecurity.usage.google.GoogleAnalyticsTracker;
import com.tencent.onesecurity.usage.qq.ActionStatsManager;
import com.tencent.onesecurity.usage.qq.EModelID;

/**
 * Menu Pop Window
 * 
 * @author LionLiu
 */
public class MainMenuPopupWindow extends PopupWindow implements OnClickListener, MsgUnreadNotify {

    private static final byte CHANGE_MSG_NUM = 1;

    private static final byte MAINACTIVITY_CHANGE_MSG_NUM = 2;

    // Menu
    private View menuView;

    // About New标志
    private View aboutNewView;

    private Context context;

    private ConfigDao configDao;

    private Handler mainActivityHandler;

    public MainMenuPopupWindow(Context context, View contentView, int width, int height) {
        super(contentView, width, height);
        contentView.setOnClickListener(this);
        this.context = context;
        menuView = contentView.findViewById(R.id.layout_menu);
        aboutNewView = menuView.findViewById(R.id.icon_update);
        configDao = DaoCreator.createConfigDao();

        initBtn();

    }

    public void setHandler(Handler mainActivityHandler) {
        this.mainActivityHandler = mainActivityHandler;
    };

    Handler mHandler = new Handler() {

        @Override
        public void handleMessage(Message msg) {

            switch (msg.what) {
                case CHANGE_MSG_NUM:
                    refreshNoticeNewIcon();
                    break;
                default:
                    break;
            }
            super.handleMessage(msg);

        }

    };

    private void initBtn() {
        menuView.findViewById(R.id.main_menu_linearlayout_vip).setOnClickListener(new OnClickListener() {
            @Override
            public void onClick(View v) {
                MainMenuPopupWindow.this.dismiss();
                Intent intent = new Intent(context, VipZoneActivity.class);
                context.startActivity(intent);;
            }
        });
        menuView.findViewById(R.id.main_menu_linearlayout_setting).setOnClickListener(new OnClickListener() {
            @Override
            public void onClick(View v) {
                MainMenuPopupWindow.this.dismiss();
                // 跳转至setting页面
                context.startActivity(new Intent(context, SettingActivity.class));
                // Google上报
                GoogleAnalyticsTracker.getInstance().ClickButton("Menu", "点击设置", "设置", 1l);
            }
        });

        menuView.findViewById(R.id.main_menu_linearlayout_share).setOnClickListener(new OnClickListener() {

            @Override
            public void onClick(View v) {
                MainMenuPopupWindow.this.dismiss();

                // 调用系统可分享的组件
                Intent intent = new Intent(Intent.ACTION_SEND);
                intent.setType("text/plain");
                intent.putExtra(Intent.EXTRA_SUBJECT,
                        context.getString(R.string.menu_share_subject));
                intent.putExtra(Intent.EXTRA_TEXT, context.getString(R.string.menu_share_tip));
                intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
                context.startActivity(Intent.createChooser(intent,
                        context.getString(R.string.menu_title_share)));

                // feature上报
                ActionStatsManager.getInstance().saveActionData(
                        EModelID._EMID_Secure_Trial_Get_SMS_Share);
                GoogleAnalyticsTracker.getInstance().ClickButton("Menu", "点击分享", "分享", 1l);
//                GoogleAnalyticsTracker.getInstance().ClickButton("Menu", "选择分享方式", "分享", 1l);
            }

        });

        menuView.findViewById(R.id.main_menu_linearlayout_msg_center).setOnClickListener(
                new OnClickListener() {
                    @Override
                    public void onClick(View v) {
                        MainMenuPopupWindow.this.dismiss();

                        context.startActivity(new Intent(context, NoticeCenterActivity.class));
                        // TODO 跳转至noticeCenter页面

                        GoogleAnalyticsTracker.getInstance().ClickButton("Menu", "点击消息中心", "消息中心",
                                1l);
                    }
                });

        menuView.findViewById(R.id.main_menu_linearlayout_feedback).setOnClickListener(new OnClickListener() {
            @Override
            public void onClick(View v) {
                MainMenuPopupWindow.this.dismiss();
                // 跳转至feedback页面
                context.startActivity(new Intent(context, FeedbackActivity.class));

                GoogleAnalyticsTracker.getInstance().ClickButton("Menu", "点击用户反馈", "用户反馈", 1l);
            }
        });

        menuView.findViewById(R.id.main_menu_linearlayout_about).setOnClickListener(
                new OnClickListener() {
                    @Override
                    public void onClick(View v) {
                        MainMenuPopupWindow.this.dismiss();
                        // 跳转至about页面
                        context.startActivity(new Intent(context, AboutActivity.class));

                        GoogleAnalyticsTracker.getInstance().ClickButton("Menu", "点击关于我们", "关于我们",
                                1l);
                    }
                });
    }

    public void show(View parent, int gravity, int x, int y) {
        super.showAtLocation(parent, gravity, x, y);
        MessageManager.getInstance().msgUnReadNotify = this;
        // 消息中心new标志
        refreshNoticeNewIcon();
        // 设置new标志是否显示
        setAboutUpdateShow();
    }

    @Override
    public void onClick(View v) {
        this.dismiss();
    }

    private void refreshNoticeNewIcon() {
        /*
         * 此处判断若消息中心数据中有未读消息，则需要显示未读消息的提醒图标 若没有则将图标隐藏
         */
        ImageView msgCenterImg = (ImageView)menuView.findViewById(R.id.icon_new_msg);
        if (configDao.getNewMsgNum() > 0) {
        	msgCenterImg.setVisibility(View.VISIBLE);
        } else {
        	msgCenterImg.setVisibility(View.GONE);
        }
    }

    /*--josh fix bug NO 9558397----20121123-------Start-*/
    @Override
    public void dismiss() {
        MessageManager.getInstance().msgUnReadNotify = null;

        // 销毁的时候调主Handler
        Message msg = mainActivityHandler.obtainMessage();
        msg.what = MAINACTIVITY_CHANGE_MSG_NUM;
        mainActivityHandler.sendMessage(msg);

        // TODO Auto-generated method stub
        super.dismiss();
    }

    /*--josh fix bug NO 9558397----20121123-------End-*/

    /**
     * 设置About New标志的显示
     */
    public void setAboutUpdateShow() {
        if (null != aboutNewView) {
            aboutNewView.setVisibility(configDao.hasNewUpdate() ? View.VISIBLE : View.GONE);
        }
    }

    /**
     * 来消息了，处理
     */
    @Override
    public void onChange(int unReadNum) {
        Message msg = mHandler.obtainMessage();
        msg.what = CHANGE_MSG_NUM;
        mHandler.sendMessage(msg);
    }
}


package com.tencent.onesecurity.ui.activity.menu;

import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;

import com.tencent.onesecurity.R;
import com.tencent.onesecurity.manager.feedback.FeedbackManager;
import com.tencent.onesecurity.ui.activity.commonComponent.BaseActivity;
import com.tencent.onesecurity.ui.customview.dialog.CustomLoadingDialog;
import com.tencent.onesecurity.usage.google.GoogleAnalyticsTracker;
import com.tencent.onesecurity.util.AccountUtil;
import com.tencent.onesecurity.util.StringUtil;
import com.tencent.onesecurity.util.ToastUtil;

/**
 * Feedback Activity
 * 
 * @version 1.0
 * @author LionLiu
 */
public class FeedbackActivity extends BaseActivity implements OnClickListener {

    // Feedback输入框(必填)
    private EditText feedbackEt = null;

    private String feedback;

    // Email输入框(选填)
    private EditText emailEt = null;

    // 提交按钮
    private Button submitButton = null;

    // 提交时 等待提示框
    private CustomLoadingDialog mProgressDialog;

    private FeedbackManager feedbackManager = null;

    // 提交feedback 回调handler
    private Handler mHandler = new Handler() {

        @Override
        public void handleMessage(Message msg) {
            super.handleMessage(msg);

            dismissLoadDialog();
            if (msg.what == FeedbackManager.FEEDBACK_SUCCESS) {
                ToastUtil.ShowSimpleTextLongToast2(R.string.feedback_succ_prompt,R.layout.custom_toast);
                // 成功，关闭feedback页面
                finish();
            } else {
                ToastUtil.ShowSimpleTextLongToast2(R.string.connect_failure_tip,R.layout.custom_toast);
            }
        }
    };

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        View view = LayoutInflater.from(FeedbackActivity.this).inflate(
                R.layout.layout_menu_feedback, null);
        setContentView(view);

        updateSubTitleBar(this, view, getString(R.string.menu_title_feedback), -1, null, -1, null,
                true);

        submitButton = (Button)findViewById(R.id.btn_send);
        submitButton.setOnClickListener(this);

        feedbackEt = (EditText)findViewById(R.id.setting_feedback_edittext_advice);

        emailEt = (EditText)findViewById(R.id.setting_feedback_edittext_email);
        String googleAccount = AccountUtil.getGoogleAccount();
        emailEt.setSelectAllOnFocus(true);
        // 如果用户绑定了Google账户，则默认显示
        if (null != googleAccount) {
            emailEt.setText(googleAccount);
        }

        feedbackManager = new FeedbackManager(mHandler, getApplicationContext());
    }

    @Override
    protected void onResume() {
        super.onResume();
        // add by tony google analytics
        GoogleAnalyticsTracker.getInstance().trackView("用户反馈");
    }

    @Override
    protected void onDestroy() {
        if (null != mProgressDialog && mProgressDialog.isShowing()) {
            mProgressDialog.dismiss();
        }
        super.onDestroy();
    }

    @Override
    public void onClick(View v) {
        switch (v.getId()) {
            // 发送Feedback
            case R.id.btn_send:
                sendAction();
                break;
            default:
                break;
        }
    }


    /**
     * 发送Feedback
     * 
     * @Description
     * @version 1.0
     * @author LionLiu
     */
    private void sendAction() {
        GoogleAnalyticsTracker.getInstance().ClickButton("Menu", "提交用户反馈", "用户反馈", 1l);

        feedback = feedbackEt.getText().toString();

        // 输入Check
        if (StringUtil.isEmpty(feedback)) {
            ToastUtil.ShowSimpleTextLongToast2(R.string.feedback_warring_text,R.layout.custom_toast);
            return;
        }

        // 提交feedback
        new Thread(new Runnable() {
            @Override
            public void run() {
                feedbackManager.sendFeedback(feedback, emailEt.getText().toString());
            }
        }).start();

        // 弹出等待提示框
        mProgressDialog = new CustomLoadingDialog(this, true);
        showLoadDlg();
    }

    /**
     * 关闭菊花
     */
    private void dismissLoadDialog() {
        if (mProgressDialog != null && mProgressDialog.isShowing()) {
            mProgressDialog.dismiss();
        }
    }

    /**
     * 开菊花
     */
    private void showLoadDlg() {
        if (mProgressDialog != null && !mProgressDialog.isShowing()) {
            mProgressDialog.show();
        }
    }
}


package com.tencent.onesecurity.ui.activity.menu;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;

import com.tencent.onesecurity.R;
import com.tencent.onesecurity.ui.activity.MainActivity;
import com.tencent.onesecurity.ui.activity.commonComponent.BaseActivity;

/**
 * License and Agreement 页面
 * 
 * @author LionLiu
 */
public class LicenseActivity extends BaseActivity implements OnClickListener {

    // 是否显示按钮，通过Intent传值
    public final static String BUTTON_DISPLAY = "button_display";

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.layout_menu_license);

        Bundle bundle = getIntent().getExtras();
        // 如果需要显示Agree和Disagree按钮
        if (bundle.getBoolean(BUTTON_DISPLAY)) {
            // 显示Button 界面
            findViewById(R.id.bottom_layout).setVisibility(View.VISIBLE);

            findViewById(R.id.btn_agree).setOnClickListener(this);
            findViewById(R.id.btn_disagree).setOnClickListener(this);
        }
    }

    @Override
    public void onClick(View v) {
        switch (v.getId()) {
            // Agree，进入主界面，存入Preference
            case R.id.btn_agree:
                Intent intent = new Intent();
                intent.putExtra(MainActivity.EXTRA_FROM, MainActivity.FROM_LICENSE);
                intent.setClass(LicenseActivity.this, MainActivity.class);
                startActivity(intent);
                finish();
                break;
                // Disagree，退出程序
            case R.id.btn_disagree:
                System.exit(0);
                break;
            default:
                break;
        }
    }
}

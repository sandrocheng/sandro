
package com.tencent.onesecurity.ui.activity.menu;

import android.content.res.Resources;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListView;

import com.tencent.onesecurity.R;
import com.tencent.onesecurity.ui.activity.commonComponent.BaseActivity;
import com.tencent.onesecurity.ui.adapter.HelpAdapter;
import com.tencent.onesecurity.usage.google.GoogleAnalyticsTracker;

/**
 * Help页面
 * 
 * @version 1.0
 * @author LionLiu
 */
public class HelpActivity extends BaseActivity implements OnItemClickListener {

    private HelpAdapter mAdapter;

    private ListView tipsView;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        View view = LayoutInflater.from(HelpActivity.this).inflate(R.layout.layout_menu_help, null);
        setContentView(view);

        updateSubTitleBar(this, view, getString(R.string.menu_title_help), -1, null, -1, null, true);

        // 初始化help ListView
        initListView();
    }

    @Override
    protected void onResume() {
        super.onResume();
        // add by tony google analytics
        GoogleAnalyticsTracker.getInstance().trackView("帮助");
    }

    /**
     * 初始化ListView
     * 
     * @version
     * @author LionLiu
     */
    private void initListView() {
        // 填装simpleAdapter用的 ArrayList
        Resources res = getResources();
        String[] questions = res.getStringArray(R.array.help_questions);
        String[] answers = res.getStringArray(R.array.help_answers);
        mAdapter = new HelpAdapter(HelpActivity.this, questions, answers);
        tipsView = (ListView)findViewById(R.id.help_list);
        tipsView.setAdapter(mAdapter);
        tipsView.setOnItemClickListener(this);
    }

    @Override
    public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
        mAdapter.setFolderOpen(position);
        // 如果要打开ListView屏幕中显示的最后一项，则将列表向上移动一个位置。
        if (mAdapter.getFolderOpen(position) && tipsView.getLastVisiblePosition() == position) {
            parent.setSelection(parent.getFirstVisiblePosition() + 1);
        }
    }
}

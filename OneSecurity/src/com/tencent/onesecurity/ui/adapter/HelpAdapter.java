
package com.tencent.onesecurity.ui.adapter;

import android.content.Context;
import android.util.SparseBooleanArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.tencent.onesecurity.R;

public class HelpAdapter extends BaseAdapter {

    // 记录各个抽屉开关的情况
    private SparseBooleanArray mfolderOpen;

    // Help问题
    private String[] mQuestions;

    // Help答案
    private String[] mAnswers;

    private LayoutInflater _mInflater = null;

    public HelpAdapter(Context context, String[] questions, String[] answers) {
        mQuestions = questions;
        mAnswers = answers;
        mfolderOpen = new SparseBooleanArray();
        _mInflater = LayoutInflater.from(context);
    }

    @Override
    public View getView(int position, View convertView, ViewGroup parent) {
        ViewHolder holder = null;
        if (convertView == null) {
            convertView = _mInflater.inflate(R.layout.layout_menu_help_item, parent, false);
            holder = new ViewHolder(convertView);
            convertView.setTag(holder);
        } else {
            holder = (ViewHolder)convertView.getTag();
        }

        holder.mQuestion.setText(mQuestions[position]);
        holder.mAnswer.setText(mAnswers[position]);
        // 如果抽屉是打开状态
        if (mfolderOpen.get(position, false)) {
            holder.mAnswerLayout.setVisibility(View.VISIBLE);
        } else {
            holder.mAnswerLayout.setVisibility(View.GONE);
        }

        return convertView;
    }

    /**
     * 设置抽屉的开关
     * @Description 
     * @version 1.0
     * @author LionLiu
     */
    public void setFolderOpen(int position) {
        mfolderOpen.put(position, !mfolderOpen.get(position, false));
        notifyDataSetChanged();
    }
    
    public boolean getFolderOpen(int position) {
        return mfolderOpen.get(position, false);
    }
    
    private class ViewHolder {
        public ViewHolder(View view) {
            mQuestion = (TextView)view.findViewById(R.id.txt_question);
            mAnswer = (TextView)view.findViewById(R.id.txt_answer);
//            mArrow = (ImageView)view.findViewById(R.id.img_arrow);
            mAnswerLayout = (LinearLayout)view.findViewById(R.id.lay_answer);
        }

        // 问题 TextView
        private TextView mQuestion;

        // 答案TextView
        private TextView mAnswer;

        // 箭头 ImageView
//        private ImageView mArrow;

        // 答案layout
        private LinearLayout mAnswerLayout;
    }

    @Override
    public int getCount() {
        if (null != mQuestions) {
            return mQuestions.length;
        }
        return 0;
    }

    @Override
    public Object getItem(int position) {
        return null;
    }

    @Override
    public long getItemId(int position) {
        return 0;
    }
}

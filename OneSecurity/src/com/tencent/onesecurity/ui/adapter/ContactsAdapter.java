
package com.tencent.onesecurity.ui.adapter;

import android.content.Context;
import android.database.Cursor;
import android.provider.ContactsContract;
import android.util.SparseBooleanArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.View.OnClickListener;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.CursorAdapter;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.CompoundButton.OnCheckedChangeListener;

import com.tencent.onesecurity.R;
import com.tencent.onesecurity.manager.ContactsManager;
import com.tencent.onesecurity.model.ContactModel;

/**
 * 通讯录列表 Adapter
 */
public abstract class ContactsAdapter extends CursorAdapter {
    private LayoutInflater _mInflater = null;

    // 记录checkbox的选中状态
    private SparseBooleanArray _mCheckStates;

    public ContactsAdapter(Context context, Cursor cursor) {
        super(context, cursor, true);
        _mInflater = LayoutInflater.from(context);
        _mCheckStates = new SparseBooleanArray();
    }

    @Override
    public View newView(Context context, Cursor cursor, ViewGroup parent) {
        View v;
        ViewHolder holder = null;
        v = _mInflater.inflate(R.layout.layout_vip_contact_select_item, parent, false);
        holder = new ViewHolder(v);
        v.setTag(holder);
        return v;
    }

    @Override
    public void bindView(View view, Context context, Cursor cursor) {
        View v = view;
        ViewHolder holder = null;
        int ID = cursor.getColumnIndex(ContactsContract.Contacts._ID);
        int nameCoulmn = cursor.getColumnIndex(ContactsContract.Contacts.DISPLAY_NAME);
        Integer modelId = Integer.valueOf(cursor.getString(ID));

        holder = (ViewHolder)v.getTag();
        holder.mSelect.setOnCheckedChangeListener(null);

        // 初始化 首字母分组条, 如需要画分组条，则firstChar不为空
        String firstChar = getIndexChar(cursor.getPosition());
        if (null != firstChar) {
            holder.mFirstChar.setText(firstChar);
            holder.mFirstCharLayout.setVisibility(View.VISIBLE);
        } else {
            holder.mFirstCharLayout.setVisibility(View.GONE);
        }

        // 初始化checkbox以及其文字
        //holder.mSelect.setText(cursor.getString(nameCoulmn));
        holder.mName.setText(cursor.getString(nameCoulmn));
        holder.mSelect.setChecked(_mCheckStates.get(modelId, false));
        holder.mSelect.setTag(modelId);
        holder.mSelect.setOnCheckedChangeListener(new CheckBoxListener());
        final CheckBox checkBox = holder.mSelect;
        holder.mCheckBoxAndTextView.setOnClickListener(new OnClickListener() {
            @Override
            public void onClick(View v) {
                System.out.println("____asa_____");
                checkBox.setChecked(!checkBox.isChecked());
            }
        });
       
    }

    private class ViewHolder {
        public ViewHolder(View view) {
            mName = (TextView)view.findViewById(R.id.checkName);
            mSelect = (CheckBox)view.findViewById(R.id.chbselect);
            mFirstChar = (TextView)view.findViewById(R.id.txtFirstChar);
            mFirstCharLayout = (LinearLayout)view.findViewById(R.id.layout_firstChar);
            mCheckBoxAndTextView = (LinearLayout)view.findViewById(R.id.layout_checkBoxAndTextView);
            
        }
        // checkboxName 组件
        private TextView mName;

        // checkbox 组件
        private CheckBox mSelect;

        // 首字母分组信息TextView
        private TextView mFirstChar;

        // 首字母分组信息组件
        private LinearLayout mFirstCharLayout;
        
        // CheckBox和TextView使用的LinearLayout
        private LinearLayout mCheckBoxAndTextView;
    }

    /**
     * Checkbox选中监听器
     * 
     * @Description 1. 已选择数目超过最大数目，直接弹提示 2. 该用户没有电话，弹出提示 3. 该用户只有一个电话，直接选中 4.
     *              该用户有两个以上电话，弹出选中框
     * @version 1.0
     * @author LionLiu
     */
    private class CheckBoxListener implements OnCheckedChangeListener {

       
        @Override
        public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {
            Integer key = (Integer)buttonView.getTag();
            if (!getCheckedTrue()) {
                if (isChecked) {

                    // 如果已经超过最大分享人数，弹出提示
                    setCheckedTrue(false);
                    if (isBeyondMaxShare()) {
                        buttonView.setChecked(false);
                        return;
                    }

                    ContactModel model = ContactsManager.getInstance().getContactsById(key);
                    // 如果该用户没有电话号码
                    String[] phoneNums = model.getmPhoneNum();
                    if (1 == phoneNums.length) {
                        model.setIndex(0);
                        _mCheckStates.put(key, true);
                        addSelectedContacts(model, key);

                        // 如果有一个以上电话，则弹出选择框
                    } else {
                        buttonView.setChecked(false);

                        showDialog(model, key, buttonView);
                    }

                } else if (_mCheckStates.get(key)) {
                    _mCheckStates.delete(key);
                    delSelectedContacts(key);
                }
            } else {
                setCheckedTrue(false);
            }
        }
        
    }

   
    
    public void setChecked(Integer key, boolean checked) {
        _mCheckStates.put(key, checked);
    };
    
    public abstract void setCheckedTrue(boolean buttonView);

    public abstract boolean getCheckedTrue();
    /**
     * 选择电话号码回调方法
     * 
     * @Description 当选中的通讯录有两个以上电话时，弹出
     * @version 1.0
     * @author LionLiu
     */
    public abstract void showDialog(ContactModel model, int position, CompoundButton buttonView);

    /**
     * 减少一个联系人
     * 
     * @version 1.0
     * @author LionLiu
     */
    public abstract void delSelectedContacts(int pos);

    /**
     * 增加一个联系人
     * 
     * @version 1.0
     * @author LionLiu
     */
    public abstract void addSelectedContacts(ContactModel model, int pos);

    /**
     * 判断是否已超过最大分享人数(10人)
     * 
     * @version 1.0
     * @author LionLiu
     */
    public abstract boolean isBeyondMaxShare();

    /**
     * 用于判断是否需要显示分组条
     * 
     * @Description 如果该行View是 该首字母分组中的第一个，则返回其首字母; 否则，返回null
     * @version 1.0
     * @author LionLiu
     */
    public abstract String getIndexChar(int position);

    @Override
    public Object getItem(int position) {
        return null;
    }

    @Override
    public long getItemId(int position) {
        return 0;
    }
}


package com.tencent.onesecurity.manager;

import java.util.ArrayList;

import android.content.ContentResolver;
import android.database.Cursor;
import android.provider.ContactsContract;
import android.provider.ContactsContract.PhoneLookup;

import com.tencent.onesecurity.MainApplication;
import com.tencent.onesecurity.model.ContactModel;
import com.tencent.onesecurity.model.OrderContactModel;
import com.tencent.onesecurity.ui.helper.UIConstants;
import com.tencent.onesecurity.util.StringUtil;

/**
 * @ClassName: ContactsManager
 * @Description:获取通讯录信息的manager
 * @author: Sandro
 * @date: 2012-10-23 下午04:50:02
 */
public class ContactsManager {

    private static ContactsManager instance;

    private ContactsManager() {
    }

    public static ContactsManager getInstance() {
        if (instance == null) {
            instance = new ContactsManager();
        }
        return instance;
    }

    public Cursor getContactCursor() {
        ContentResolver cr = MainApplication.getContext().getContentResolver();
        String selection = PhoneLookup.HAS_PHONE_NUMBER + " > 0";
        String orderBy = PhoneLookup.DISPLAY_NAME + " COLLATE LOCALIZED ASC";
        Cursor cursor = cr.query(ContactsContract.Contacts.CONTENT_URI, null, selection, null, orderBy);
        return cursor;
    }

    /**
     * 获取按首字母排序可检索的 通讯录实体
     * 
     * @author LionLiu
     * @return
     */
    public OrderContactModel getContacts(Cursor cursor) {
        if (cursor.getCount() <= 0) {
            return new OrderContactModel();
        }

        // 每个首字母第一次出现在通讯录列表的下标(用于定位)
        ArrayList<Integer> contactCharList = new ArrayList<Integer>();
        // 首字母索引列表
        ArrayList<String> charIndexList = new ArrayList<String>();
        String tempString = "";
        for (int i = 0; i < cursor.getCount(); i++) {
            cursor.moveToPosition(i);
            String mContactName = cursor.getString(cursor
                    .getColumnIndex(ContactsContract.Contacts.DISPLAY_NAME));

            String firstChar = (null == mContactName ? "" : mContactName.substring(0, 1)
                    .toUpperCase());
//            if (!StringUtil.isEnglishLetter(firstChar)) {
//                // 如果存在不是英文的首字母，则加入#
//                firstChar = UIConstants.INDEX_NOT_LETTERS;
//            }
            if (!StringUtil.isASCMoreThan96(firstChar)) {
                //ASCII>96的放到#里面
                firstChar = UIConstants.INDEX_NOT_LETTERS;
            }
            else if (!StringUtil.isASCLessThan65(firstChar)) {
                //ASCII<65和>90的放到*里面
                firstChar = UIConstants.INDEX_NOT_LETTERS_STAR;
            }
            // 如果首字母发生变化，则添加新的首字母
            if (!tempString.equals(firstChar)) {
                contactCharList.add(Integer.valueOf(i));
                charIndexList.add(firstChar);
                tempString = firstChar;
            }

        }

        return new OrderContactModel(cursor, contactCharList, charIndexList);
    }

    public ContactModel getContactsById(int id) {
        // 姓名
        String nametmp = null;
        // 电话号码
        String phonenumtmp[] = null;
        // 联系人
        ContactModel contact = null;

        ContentResolver resolver = MainApplication.getContext().getContentResolver();

        // 取得电话号码(可能存在多个号码)
        // if (hasPhone.equals("1")) {
        // 根据联系人的ID获取该联系人的电话号码的crusor，然后遍历该联系人的所有号码
        Cursor phoneCursor = resolver.query(ContactsContract.CommonDataKinds.Phone.CONTENT_URI,
                null, ContactsContract.CommonDataKinds.Phone.CONTACT_ID + " = " + id, null, null);
        if (phoneCursor.moveToFirst()) {
            int nameCoulmn = phoneCursor.getColumnIndex(ContactsContract.Contacts.DISPLAY_NAME);
            if (phoneCursor.getString(nameCoulmn) != null)
                nametmp = phoneCursor.getString(nameCoulmn);
        }

        if (phoneCursor.getCount() > 0) {
            phonenumtmp = new String[phoneCursor.getCount()];
            for (int j = 0; j < phoneCursor.getCount(); j++) {
                phoneCursor.moveToPosition(j);
                phonenumtmp[j] = phoneCursor.getString(phoneCursor
                        .getColumnIndex(ContactsContract.CommonDataKinds.Phone.NUMBER));
            }
        } else {
            phonenumtmp = null;
        }

        phoneCursor.close();
        contact = new ContactModel(id, nametmp, phonenumtmp);
        return contact;
    }

}

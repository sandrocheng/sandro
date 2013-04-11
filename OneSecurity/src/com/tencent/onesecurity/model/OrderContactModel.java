
package com.tencent.onesecurity.model;

import java.util.ArrayList;

import android.database.Cursor;

/**
 * @Description: 按字母排序，可按首字母检索的通讯录
 * @version 1.0
 * @author LionLiu
 */
public class OrderContactModel {
    private Cursor _cursor;

    // 联系人首字母List，存入每个首字母在列表中第一次出现的下标，用于定位
    private ArrayList<Integer> _groupIndexList;

    // 首字母索引List, 存入类型String,用于初始化右侧列表
    private ArrayList<String> _charIndexList;

    public OrderContactModel() {
        _groupIndexList = new ArrayList<Integer>();
        _charIndexList = new ArrayList<String>();
    }

    public OrderContactModel(Cursor cursor, ArrayList<Integer> contactCharList,
            ArrayList<String> charIndexList) {
        _cursor = cursor;
        _groupIndexList = contactCharList;
        _charIndexList = charIndexList;
    }

    public Cursor getCursor() {
        return _cursor;
    }
    
    public void setCursor(Cursor cursor) {
        _cursor = cursor;
    }
    
    public ArrayList<Integer> getGroupIndexList() {
        return _groupIndexList;
    }

    public void setGroupIndexList(ArrayList<Integer> _groupIndexList) {
        this._groupIndexList = _groupIndexList;
    }

    public ArrayList<String> getCharIndexList() {
        return _charIndexList;
    }

    public void setCharIndexList(ArrayList<String> _charIndexList) {
        this._charIndexList = _charIndexList;
    }

}

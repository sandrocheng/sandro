package com.keniu.security.sync.ui;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.SimpleAdapter;
import java.util.List;

public final class w extends SimpleAdapter
{
  public w(SyncBackupActivity paramSyncBackupActivity, Context paramContext, List paramList, String[] paramArrayOfString, int[] paramArrayOfInt)
  {
    super(paramContext, paramList, 2130903175, paramArrayOfString, paramArrayOfInt);
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    View localView = super.getView(paramInt, paramView, paramViewGroup);
    CheckBox localCheckBox = (CheckBox)localView.findViewById(2131230898);
    localCheckBox.setChecked(SyncBackupActivity.b(this.a)[paramInt]);
    localCheckBox.setOnClickListener(new x(this, paramInt));
    return localView;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.ui.w
 * JD-Core Version:    0.6.2
 */
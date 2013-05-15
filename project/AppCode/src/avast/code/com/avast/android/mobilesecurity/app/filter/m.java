package com.avast.android.mobilesecurity.app.filter;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Intent;
import android.net.Uri;
import android.support.v4.app.FragmentActivity;
import android.view.View;
import android.view.View.OnClickListener;
import com.avast.android.generic.ui.BaseActivity;
import com.avast.android.mobilesecurity.j;

class m
  implements View.OnClickListener
{
  m(FilterGroupsFragment paramFilterGroupsFragment)
  {
  }

  public void onClick(View paramView)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("name", this.a.getText(2131493535).toString());
    localContentValues.put("minuteTo", Integer.valueOf(1439));
    Uri localUri = this.a.getActivity().getContentResolver().insert(j.a(), localContentValues);
    Intent localIntent = new Intent("android.intent.action.VIEW");
    localIntent.setData(localUri);
    ((BaseActivity)this.a.getActivity()).a(localIntent);
    this.a.a("ms-Filter", "Add New Group", "", 0L);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.filter.m
 * JD-Core Version:    0.6.2
 */
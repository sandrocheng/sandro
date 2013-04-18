package com.keniu.security.traffic;

import android.app.ListActivity;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.CheckBox;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.Toast;
import java.util.Arrays;

public class SaveTrafficWhiteListActivity extends ListActivity
  implements View.OnClickListener, AdapterView.OnItemClickListener
{
  private ListView a;
  private ListAdapter b;
  private f[] c;

  public void onClick(View paramView)
  {
    if (paramView.getId() == 2131231536)
    {
      e.a(getApplicationContext());
      finish();
    }
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    setContentView(2130903262);
    q.a(this);
    this.a = getListView();
    this.c = e.c(getApplicationContext(), false);
    Arrays.sort(this.c, z.h);
    LayoutInflater localLayoutInflater = getLayoutInflater();
    this.b = new s(this, this, this.c, localLayoutInflater);
    this.a.setAdapter(this.b);
    this.a.setOnItemClickListener(this);
    findViewById(2131231536).setOnClickListener(this);
  }

  protected void onDestroy()
  {
    if (this.c != null)
    {
      f[] arrayOff = this.c;
      int i = arrayOff.length;
      for (int j = 0; j < i; j++)
        arrayOff[j].h.setCallback(null);
      this.c = null;
    }
    super.onDestroy();
  }

  public void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    f localf = this.c[paramInt];
    if (localf.d)
    {
      if (y.a(getApplicationContext()).w == 3)
      {
        Toast.makeText(this, "该程序2G/3G联网权限已被禁止,请在防火墙中允许后设置", 1).show();
        return;
      }
      if (!((t)paramView.getTag()).a.isChecked())
      {
        localf.d = false;
        e.b(getApplicationContext());
        Toast.makeText(this, " 添加成功，已取消防火墙中该程序联网禁止", 1).show();
      }
    }
    CheckBox localCheckBox = ((t)paramView.getTag()).a;
    boolean bool1 = localCheckBox.isChecked();
    boolean bool2;
    if (!bool1)
    {
      bool2 = true;
      label107: localCheckBox.setChecked(bool2);
      if (bool1)
        break label138;
    }
    label138: for (boolean bool3 = true; ; bool3 = false)
    {
      localf.k = bool3;
      break;
      bool2 = false;
      break label107;
    }
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramInt == 4) && (paramKeyEvent.getRepeatCount() == 0))
    {
      e.a(getApplicationContext());
      finish();
    }
    for (boolean bool = true; ; bool = super.onKeyDown(paramInt, paramKeyEvent))
      return bool;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.traffic.SaveTrafficWhiteListActivity
 * JD-Core Version:    0.6.2
 */
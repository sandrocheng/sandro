package com.ijinshan.kinghelper.firewall;

import android.app.Activity;
import android.os.Bundle;
import android.view.KeyEvent;
import android.widget.ListView;
import android.widget.TextView;

public class IpProvinceCityActivity extends Activity
{
  private ListView a;
  private db b;
  private db c;
  private String d;
  private String[] e = { "北京", "上海", "天津", "重庆", "海南", "山西", "内蒙古", "辽宁", "吉林", "黑龙江", "江苏", "浙江", "安徽", "福建", "江西", "山东", "河南", "湖北", "湖南", "广东", "广西", "河北", "四川", "贵州", "云南", "西藏", "陕西", "甘肃", "宁夏", "青海", "新疆" };
  private String[] f = null;

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    setContentView(2130903118);
    ((TextView)findViewById(2131230727)).setText(getString(2131427486));
    this.a = ((ListView)findViewById(2131231076));
    this.b = new db(this, this.e);
    this.a.setAdapter(this.b);
    this.a.setOnItemClickListener(new da(this));
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramInt == 4) || (paramInt == 3))
    {
      dc.c(getString(2131427502));
      finish();
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.firewall.IpProvinceCityActivity
 * JD-Core Version:    0.6.2
 */
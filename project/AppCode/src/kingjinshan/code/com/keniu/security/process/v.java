package com.keniu.security.process;

import com.keniu.security.a;

final class v extends Thread
{
  v(ProcessWhiteSettingActivity paramProcessWhiteSettingActivity)
  {
  }

  public final void run()
  {
    StringBuilder localStringBuilder = new StringBuilder("");
    if (this.a.f.H())
    {
      this.a.f.I();
      localStringBuilder.append("#com.baidu.input");
      localStringBuilder.append("#com.google.android.inputmethod.pinyin");
      localStringBuilder.append("#com.tencent.qqpinyin");
      localStringBuilder.append("#com.sohu.inputmethod.sogou");
      localStringBuilder.append("#com.cootek.smartinputv5");
      localStringBuilder.append("#com.iflytek.inputmethod");
      localStringBuilder.append("#com.android.deskclock");
      localStringBuilder.append("#com.android.inputmethod.latin");
      localStringBuilder.append("#com.ijinshan.kbatterydoctor");
      localStringBuilder.append("#com.ijinshan.duba");
      if (!this.a.f.J())
        localStringBuilder.append(this.a.f.G().toString());
      this.a.f.a(localStringBuilder.toString());
    }
    ProcessWhiteSettingActivity.a(this.a);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.process.v
 * JD-Core Version:    0.6.2
 */
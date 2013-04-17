package com.tencent.qqpimsecure.ui.activity;

import afe;
import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.TextView;
import bw;
import com.tencent.qqpimsecure.uilib.ui.activity.BaseUIActivity;
import com.tencent.qqpimsecure.uilib.view.BaseView;
import com.tencent.qqpimsecure.uilib.view.template.FrameworkTemplateUI;
import cs;
import cw;
import ho;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

public class SyncSettingsActivity extends BaseUIActivity
{
  public BaseView getView()
  {
    return new a(this);
  }

  public final class a extends BaseView
  {
    private TextView a;
    private TextView b;
    private View c;
    private View d;
    private cw e;
    private ho f;
    private View.OnClickListener g = new afe(this);

    public a(Context arg2)
    {
      super(2130903263);
    }

    private void a()
    {
      List localList = bw.a(this.mContext).a("\"" + this.e.f() + "\"");
      int i = localList.size();
      if (i <= 0)
        this.b.setText(2131427645);
      while (true)
      {
        return;
        for (int j = i - 1; ; j--)
        {
          if (j < 0)
            break label156;
          cs localcs = (cs)localList.get(j);
          if ((localcs != null) && (localcs.h == 0))
          {
            this.b.setText(2131427644);
            SimpleDateFormat localSimpleDateFormat = new SimpleDateFormat(SyncSettingsActivity.this.getString(2131427646));
            Date localDate = new Date(localcs.c);
            this.b.append(localSimpleDateFormat.format(localDate));
            break;
          }
        }
        label156: this.b.setText(2131427645);
      }
    }

    public final void onCreate()
    {
      super.onCreate();
      this.f = ho.a();
      this.e = cw.d();
      this.a = ((TextView)findViewById(2131231430));
      this.b = ((TextView)findViewById(2131231435));
      this.c = findViewById(2131231432);
      this.d = findViewById(2131231428);
      this.c.setOnClickListener(this.g);
      findViewById(2131231431).setOnClickListener(this.g);
      findViewById(2131231433).setOnClickListener(this.g);
    }

    public final void onResume()
    {
      super.onResume();
      if (this.e.b())
      {
        this.c.setVisibility(8);
        this.d.setVisibility(0);
      }
      while (true)
        switch (this.e.h())
        {
        case -1:
        case 0:
        case 3:
        default:
          a();
          return;
          this.c.setVisibility(0);
          this.d.setVisibility(8);
        case 1:
        case 2:
        }
      StringBuffer localStringBuffer2 = new StringBuffer();
      localStringBuffer2.append(this.mContext.getString(2131427640));
      String str2 = this.e.f();
      if (str2 == null)
        str2 = "";
      while (true)
      {
        localStringBuffer2.append(str2);
        this.a.setText(localStringBuffer2.toString());
        break;
        if (str2.startsWith("+86"))
          str2 = str2.substring(3);
      }
      StringBuffer localStringBuffer1 = new StringBuffer();
      localStringBuffer1.append(this.mContext.getString(2131427639));
      String str1 = this.e.f();
      if (str1 == null)
        str1 = "";
      while (true)
      {
        localStringBuffer1.append(str1);
        this.a.setText(localStringBuffer1.toString());
        break;
        if (str1.startsWith("+86"))
          str1 = str1.substring(3);
      }
    }

    protected final void subviewTemplateUIConfig(FrameworkTemplateUI paramFrameworkTemplateUI)
    {
      paramFrameworkTemplateUI.setTitleTextData(2131427529);
      paramFrameworkTemplateUI.setInfoBarStyle((byte)49);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.ui.activity.SyncSettingsActivity
 * JD-Core Version:    0.6.2
 */
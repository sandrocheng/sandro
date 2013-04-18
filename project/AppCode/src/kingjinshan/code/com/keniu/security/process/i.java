package com.keniu.security.process;

import android.os.Handler;
import android.os.Message;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import com.keniu.security.f.ab;
import com.keniu.security.f.f;
import com.keniu.security.malware.bz;
import java.io.File;

final class i extends Handler
{
  i(ProcessManagerActivity paramProcessManagerActivity)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    case 3:
    default:
    case 4:
    case 2:
    case 5:
    case 6:
    }
    while (true)
    {
      return;
      ProcessManagerActivity.q(this.a);
      ProcessManagerActivity.b(this.a).setVisibility(4);
      ProcessManagerActivity.r(this.a).setVisibility(0);
      ProcessManagerActivity.a(this.a, new r(this.a, this.a.d));
      ProcessManagerActivity.s(this.a).start();
      continue;
      ProcessManagerActivity.r(this.a).setVisibility(8);
      ProcessManagerActivity.j(this.a).setVisibility(0);
      ProcessManagerActivity.b(this.a).setAdapter(ProcessManagerActivity.c(this.a));
      ProcessManagerActivity.b(this.a).setVisibility(0);
      ((RadioButton)this.a.findViewById(2131231207)).setChecked(true);
      ProcessManagerActivity.p(this.a);
      this.a.d.sendEmptyMessage(5);
      bz.a();
      if (bz.b())
      {
        String str = f.a(this.a.getFilesDir().getPath()) + "ap.jar";
        ab.a();
        ab.a(new File(str), this.a.getApplicationContext());
        if (!bz.a().e())
        {
          bz.a().c();
          continue;
          ProcessManagerActivity.b(this.a).invalidateViews();
          ProcessManagerActivity.p(this.a);
          continue;
          this.a.a = true;
          this.a.finish();
        }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.process.i
 * JD-Core Version:    0.6.2
 */
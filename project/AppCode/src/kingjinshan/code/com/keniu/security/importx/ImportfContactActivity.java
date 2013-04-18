package com.keniu.security.importx;

import android.os.Bundle;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.WindowManager;
import android.view.WindowManager.LayoutParams;
import android.widget.ListView;
import android.widget.TextView;
import com.jxphone.mosecurity.c.b;
import com.jxphone.mosecurity.logic.a.l;
import com.jxphone.mosecurity.logic.h;
import com.keniu.security.e;
import java.util.List;

public class ImportfContactActivity extends BaseImportActivity
{
  private WindowManager n;
  private TextView o;
  private volatile int p = 0;
  private final q q = new q(this);
  private final Handler r = new Handler();

  private void r()
  {
    this.o = ((TextView)getLayoutInflater().inflate(2130903221, null));
    WindowManager.LayoutParams localLayoutParams = new WindowManager.LayoutParams(-2, -2, 2, 24, -3);
    localLayoutParams.y = -64;
    this.n.addView(this.o, localLayoutParams);
    if (!e.b())
      this.m.setOnScrollListener(new o(this));
  }

  protected final int e()
  {
    return 2131428420;
  }

  protected final String m()
  {
    return getString(2131429028);
  }

  protected final k n()
  {
    List localList = h.d(this).a();
    b[] arrayOfb = new b[localList.size()];
    localList.toArray(arrayOfb);
    localList.clear();
    return new p(this, this, arrayOfb);
  }

  protected void onCreate(Bundle paramBundle)
  {
    requestWindowFeature(1);
    this.j = true;
    super.onCreate(paramBundle);
    ((TextView)findViewById(2131230727)).setText(2131428420);
    this.n = ((WindowManager)getSystemService("window"));
    this.o = ((TextView)getLayoutInflater().inflate(2130903221, null));
    WindowManager.LayoutParams localLayoutParams = new WindowManager.LayoutParams(-2, -2, 2, 24, -3);
    localLayoutParams.y = -64;
    this.n.addView(this.o, localLayoutParams);
    if (!e.b())
      this.m.setOnScrollListener(new o(this));
  }

  protected void onDestroy()
  {
    this.n.removeView(this.o);
    super.onDestroy();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.importx.ImportfContactActivity
 * JD-Core Version:    0.6.2
 */
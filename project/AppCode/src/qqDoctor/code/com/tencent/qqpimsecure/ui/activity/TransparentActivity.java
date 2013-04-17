package com.tencent.qqpimsecure.ui.activity;

import QQPIM.BaseInfo;
import QQPIM.CloudCmd;
import QQPIM.CloudInfo;
import QQPIM.CloudInfoRes;
import acg;
import afh;
import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;
import java.util.ArrayList;
import java.util.List;
import qr;
import ss;

public class TransparentActivity extends Activity
{
  public Handler a = new afh(this);
  private CloudInfo b;
  private List<CloudCmd> c;
  private CloudInfoRes d;
  private qr e;
  private int f = 0;
  private Dialog g = null;
  private boolean h;
  private boolean i;
  private boolean j = false;
  private boolean k = false;
  private ss l;
  private acg m;

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    this.b = ((CloudInfo)getIntent().getSerializableExtra("key_cloud_info"));
    this.h = getIntent().getBooleanExtra("key_tips_warning", false);
    this.i = getIntent().getBooleanExtra("key_is_confirm", true);
    this.k = getIntent().getBooleanExtra("key_is_dialog_soft_update", false);
    this.e = qr.a(getApplicationContext());
    if (this.b != null)
    {
      String str = this.b.getBase().getTipsid();
      this.d = this.e.c(str);
      if (this.d != null)
      {
        this.d.setPhase(2);
        this.d.setTime((int)(System.currentTimeMillis() / 1000L));
        this.d.setAction(1);
        this.d.setRes(1);
        ArrayList localArrayList = new ArrayList();
        localArrayList.add(this.d);
        this.e.a(localArrayList);
      }
      if (this.d != null)
      {
        this.d.setPhase(3);
        this.d.setRes(1);
      }
      this.c = this.b.getCloudcmds();
      this.a.sendEmptyMessage(1);
    }
    while (true)
    {
      return;
      finish();
    }
  }

  protected void onDestroy()
  {
    if (this.m != null)
      this.m.a();
    if (this.l != null)
      this.l.a();
    super.onDestroy();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.ui.activity.TransparentActivity
 * JD-Core Version:    0.6.2
 */
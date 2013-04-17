package com.tencent.qqpimsecure.ui.activity;

import QQPIM.CloudCmd;
import QQPIM.CloudInfo;
import QQPIM.CloudInfoRes;
import QQPIM.TipsInfo;
import aaq;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.TextView;
import com.tencent.qqpimsecure.uilib.view.ButtonView;
import com.tencent.qqpimsecure.uilib.view.CheckBoxView;
import com.tencent.tmsecure.module.update.CheckResult;
import ho;
import java.util.ArrayList;
import java.util.List;
import qr;
import qx;
import ss;

public class TipsDialog extends Activity
  implements View.OnClickListener
{
  private TextView a;
  private TextView b;
  private CheckBoxView c;
  private ButtonView d;
  private ButtonView e;
  private String f;
  private CloudInfo g;
  private qr h;
  private boolean i = false;

  public static void a(Context paramContext, String paramString)
  {
    Intent localIntent = new Intent(paramContext, TipsDialog.class);
    localIntent.setFlags(268435456);
    localIntent.putExtra("key_tips_id", paramString);
    paramContext.startActivity(localIntent);
  }

  public void onClick(View paramView)
  {
    int j = 1;
    CloudInfoRes localCloudInfoRes = this.h.c(this.f);
    if (paramView == this.d)
    {
      Intent localIntent = new Intent(this, TransparentActivity.class);
      localIntent.setFlags(268435456);
      localIntent.putExtra("key_cloud_info", this.g);
      localIntent.putExtra("key_is_confirm", false);
      localIntent.putExtra("key_is_dialog_soft_update", this.i);
      startActivity(localIntent);
      finish();
    }
    while (true)
    {
      return;
      if (paramView == this.e)
      {
        if (localCloudInfoRes != null)
        {
          localCloudInfoRes.setPhase(2);
          localCloudInfoRes.setTime((int)(System.currentTimeMillis() / 1000L));
          localCloudInfoRes.setAction(2);
          localCloudInfoRes.setRes(j);
          ArrayList localArrayList = new ArrayList();
          localArrayList.add(localCloudInfoRes);
          this.h.a(localArrayList);
          if ((this.i) && (this.c.getChecked()))
          {
            String str = ss.a(aaq.a(this, this.g));
            new StringBuilder("^^ tipsdialog, no longer warn ").append(str).toString();
            ho.a().F(str);
          }
        }
        finish();
      }
      else if (paramView == this.c)
      {
        if (!this.c.getChecked());
        while (true)
        {
          this.c.setChecked(j);
          if (j == 0)
            break label264;
          this.e.setText(getString(2131427379));
          break;
          int k = 0;
        }
        label264: this.e.setText(getString(2131429929));
      }
    }
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    setContentView(2130903078);
    this.a = ((TextView)findViewById(2131230771));
    this.c = ((CheckBoxView)findViewById(2131230752));
    this.c.setOnClickListener(this);
    this.b = ((TextView)findViewById(2131230750));
    this.d = ((ButtonView)findViewById(2131230768));
    this.e = ((ButtonView)findViewById(2131230769));
    this.d.setOnClickListener(this);
    this.e.setOnClickListener(this);
    this.f = getIntent().getStringExtra("key_tips_id");
    this.h = qr.a(getApplicationContext());
    this.g = this.h.b(this.f);
    CloudInfo localCloudInfo;
    TipsInfo localTipsInfo;
    int j;
    CheckResult localCheckResult;
    if (this.g != null)
    {
      localCloudInfo = this.g;
      localTipsInfo = this.g.getTips();
      if (localTipsInfo != null)
      {
        this.i = false;
        if (localTipsInfo.getAtype() == 1)
        {
          j = 1;
          ArrayList localArrayList = this.g.getCloudcmds();
          if ((localArrayList != null) && (localArrayList.size() > 0) && (((CloudCmd)localArrayList.get(0)).getCmdid() == 200))
            this.i = true;
          this.a.setText(localTipsInfo.getTitle());
          if (!this.i)
            break label401;
          localCheckResult = aaq.a(this, localCloudInfo);
          this.b.setText(localCheckResult.mMessage);
          this.d.setText(getString(2131429924));
          this.e.setText(getString(2131429929));
          if (j == 0)
            findViewById(2131230751).setVisibility(0);
          label318: if (j != 0)
            this.e.setVisibility(8);
          if (this.i)
          {
            ss.b(this, localCloudInfo);
            if ((j == 0) || (localCheckResult == null))
              break label419;
            String str = qx.a().f();
            ho localho = ho.a();
            localho.j(str);
            localho.k(localTipsInfo.getTitle());
            localho.l(localTipsInfo.getMsg());
          }
        }
      }
    }
    while (true)
    {
      return;
      j = 0;
      break;
      label401: this.b.setText(localTipsInfo.getMsg());
      localCheckResult = null;
      break label318;
      label419: if (!ss.a(this, localCloudInfo))
      {
        finish();
        continue;
        finish();
        continue;
        finish();
      }
    }
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4)
    {
      CloudInfoRes localCloudInfoRes = this.h.c(this.f);
      if (localCloudInfoRes != null)
      {
        localCloudInfoRes.setPhase(2);
        localCloudInfoRes.setTime((int)(System.currentTimeMillis() / 1000L));
        localCloudInfoRes.setAction(2);
        localCloudInfoRes.setRes(1);
        ArrayList localArrayList = new ArrayList();
        localArrayList.add(localCloudInfoRes);
        this.h.a(localArrayList);
      }
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.ui.activity.TipsDialog
 * JD-Core Version:    0.6.2
 */
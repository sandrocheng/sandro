package com.keniu.security.main.a;

import android.content.Context;
import android.content.Intent;
import com.keniu.security.sync.ui.SyncHistoryActivity;
import com.keniu.security.sync.ui.SyncMainActivity;

public final class z extends aa
{
  z()
  {
    this.a = "手机内容备份";
    this.b = "立即备份";
    this.c = "已备份";
    this.d = this.c;
    this.e = "未备份";
  }

  public final void a(Context paramContext)
  {
    paramContext.startActivity(new Intent(paramContext, SyncMainActivity.class));
  }

  protected final boolean c(Context paramContext)
  {
    return SyncHistoryActivity.a();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.main.a.z
 * JD-Core Version:    0.6.2
 */
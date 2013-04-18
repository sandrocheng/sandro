package com.tencent.feedback.eup;

import android.app.Activity;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.feedback.common.AppInfo;
import com.tencent.feedback.common.c;
import java.util.Iterator;
import java.util.List;

public class ConfirmDialog extends Activity
{
  private IEupUserConfirmer confirmer = null;
  private View.OnClickListener noBtnListener = new d(this);
  private View.OnClickListener okBtnListener = new b(this);

  private String pkgNameToLabel(String paramString)
  {
    String str;
    if ((paramString == null) || (paramString.length() <= 0))
      str = "";
    while (true)
    {
      return str;
      PackageManager localPackageManager = getPackageManager();
      Intent localIntent = new Intent("android.intent.action.MAIN", null);
      localIntent.addCategory("android.intent.category.LAUNCHER");
      Iterator localIterator = localPackageManager.queryIntentActivities(localIntent, 0).iterator();
      while (true)
        if (localIterator.hasNext())
        {
          ResolveInfo localResolveInfo = (ResolveInfo)localIterator.next();
          if (localResolveInfo.activityInfo.packageName.equalsIgnoreCase(paramString))
          {
            str = localResolveInfo.activityInfo.loadLabel(localPackageManager).toString().trim();
            break;
          }
        }
      str = "";
    }
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    c.a("ConfirmDialog:" + com.tencent.feedback.common.f.a());
    this.confirmer = ExceptionUpload.getEupUserConfirmer();
    if (this.confirmer == null)
    {
      this.confirmer = new f(this);
      String str1 = pkgNameToLabel(AppInfo.getPackageName(this));
      if (str1 == null)
        str1 = "";
      String str2 = String.format("很抱歉，%s出现异常了，是否需要上传您的错误信息？\n您可以输入您的联系方式(QQ号、电话号码或邮箱)方便我们联系您。", new Object[] { str1 });
      ((f)this.confirmer).a(str2);
    }
    View localView1 = this.confirmer.getContentView();
    View localView2 = this.confirmer.getDoUploadClicker();
    View localView3 = this.confirmer.getDoCancelClicker();
    if ((localView1 == null) || (localView2 == null) || (localView3 == null))
    {
      c.b("IEupUserConformer not available");
      finish();
    }
    while (true)
    {
      return;
      localView2.setOnClickListener(this.okBtnListener);
      localView3.setOnClickListener(this.noBtnListener);
      setContentView(localView1);
    }
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramInt == 4) && (paramKeyEvent.getRepeatCount() == 0))
      this.noBtnListener.onClick(null);
    return super.onKeyDown(paramInt, paramKeyEvent);
  }

  public void onStart()
  {
    super.onStart();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.tencent.feedback.eup.ConfirmDialog
 * JD-Core Version:    0.6.2
 */
package com.tencent.feedback.eup;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.os.Bundle;
import android.text.InputFilter;
import android.text.InputFilter.LengthFilter;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import com.tencent.feedback.common.AppInfo;
import com.tencent.feedback.common.ELog;
import com.tencent.feedback.common.g;
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
    ELog.info("ConfirmDialog:" + g.a());
    this.confirmer = ExceptionUpload.getEupUserConfirmer();
    if (this.confirmer == null)
    {
      this.confirmer = new a(this);
      String str1 = pkgNameToLabel(AppInfo.getPackageName(this));
      if (str1 == null)
        str1 = "";
      String str2 = String.format("很抱歉，%s出现异常了，是否需要上传您的错误信息？\n您可以输入您的联系方式(QQ号、电话号码或邮箱)方便我们联系您。", new Object[] { str1 });
      ((a)this.confirmer).a(str2);
    }
    View localView1 = this.confirmer.getContentView();
    View localView2 = this.confirmer.getDoUploadClicker();
    View localView3 = this.confirmer.getDoCancelClicker();
    if ((localView1 == null) || (localView2 == null) || (localView3 == null))
    {
      ELog.error("IEupUserConformer not available");
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

  static final class a extends LinearLayout
    implements IEupUserConfirmer
  {
    private TextView a = null;
    private EditText b = null;
    private Button c;
    private Button d;

    public a(Context paramContext)
    {
      super();
      setOrientation(1);
      this.a = new TextView(paramContext);
      addView(this.a);
      this.b = new EditText(paramContext);
      EditText localEditText = this.b;
      InputFilter[] arrayOfInputFilter = new InputFilter[1];
      arrayOfInputFilter[0] = new InputFilter.LengthFilter(50);
      localEditText.setFilters(arrayOfInputFilter);
      addView(this.b);
      LinearLayout localLinearLayout = new LinearLayout(paramContext);
      localLinearLayout.setOrientation(0);
      localLinearLayout.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
      LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-1, -2);
      localLayoutParams.weight = 1.0F;
      this.c = new Button(paramContext);
      this.c.setLayoutParams(localLayoutParams);
      this.c.setText("是");
      localLinearLayout.addView(this.c);
      this.d = new Button(paramContext);
      this.d.setLayoutParams(localLayoutParams);
      this.d.setText("否");
      localLinearLayout.addView(this.d);
      addView(localLinearLayout);
    }

    public final void a(String paramString)
    {
      if (paramString == null)
        paramString = "";
      this.a.setText(paramString);
    }

    public final View getContentView()
    {
      return this;
    }

    public final View getDoCancelClicker()
    {
      return this.d;
    }

    public final View getDoUploadClicker()
    {
      return this.c;
    }

    public final String getUploadContent()
    {
      return this.b.getText().toString();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.feedback.eup.ConfirmDialog
 * JD-Core Version:    0.6.2
 */
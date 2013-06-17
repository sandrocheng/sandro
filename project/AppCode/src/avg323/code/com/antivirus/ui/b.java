package com.antivirus.ui;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import java.util.ArrayList;

public abstract class b extends Activity
{
  private Button a = null;

  private void e()
  {
    this.a.setOnClickListener(new e(this));
  }

  public ArrayList a(Object paramObject)
  {
    return null;
  }

  protected void a()
  {
    finish();
  }

  protected void a(int paramInt)
  {
  }

  public void a(int paramInt1, int paramInt2)
  {
    View localView = findViewById(paramInt1);
    LinearLayout.LayoutParams localLayoutParams1 = (LinearLayout.LayoutParams)localView.getLayoutParams();
    LinearLayout.LayoutParams localLayoutParams2 = new LinearLayout.LayoutParams(localLayoutParams1.width, localLayoutParams1.height, paramInt2);
    localLayoutParams2.setMargins(localLayoutParams1.leftMargin, localLayoutParams1.topMargin, localLayoutParams1.rightMargin, localLayoutParams1.bottomMargin);
    localView.setLayoutParams(localLayoutParams2);
  }

  protected void a(View paramView)
  {
    openOptionsMenu();
  }

  protected void a(boolean paramBoolean1, int paramInt1, int paramInt2, String paramString, boolean paramBoolean2)
  {
    View localView = findViewById(2131230769);
    Button localButton = (Button)localView.findViewById(2131230737);
    localButton.setBackgroundResource(paramInt1);
    localButton.setOnTouchListener(new c(this, localButton, paramInt2, paramInt1));
    if (paramBoolean1)
      localButton.setOnClickListener(new d(this));
    ((TextView)localView.findViewById(2131230733)).setText(paramString);
    this.a = ((Button)localView.findViewById(2131230739));
    if (paramBoolean2)
    {
      this.a.setBackgroundDrawable(getResources().getDrawable(2130837662));
      if (Integer.parseInt(Build.VERSION.SDK) < 11)
        break label144;
      e();
    }
    while (true)
    {
      return;
      ((LinearLayout)localView.findViewById(2131230738)).setVisibility(8);
      break;
      label144: c();
    }
  }

  protected void b()
  {
    a();
  }

  protected void b(View paramView)
  {
    if (paramView.getBackground() != null)
      paramView.getBackground().setCallback(null);
    if ((paramView instanceof ViewGroup))
      for (int i = 0; i < ((ViewGroup)paramView).getChildCount(); i++)
        b(((ViewGroup)paramView).getChildAt(i));
    try
    {
      ((ViewGroup)paramView).removeAllViews();
      label60: return;
    }
    catch (Exception localException)
    {
      break label60;
    }
  }

  protected void c()
  {
    this.a.setOnClickListener(new f(this));
  }

  protected void d()
  {
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(this);
    ArrayList localArrayList = a(new ArrayList());
    if (localArrayList != null)
      localBuilder.setSingleChoiceItems(new com.avg.ui.general.b.e(this, 0, false, (String[])localArrayList.toArray(new String[localArrayList.size()]), false), 0, new g(this));
    AlertDialog localAlertDialog = localBuilder.create();
    localAlertDialog.setCanceledOnTouchOutside(false);
    localAlertDialog.show();
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4)
      a();
    for (boolean bool = true; ; bool = super.onKeyDown(paramInt, paramKeyEvent))
      return bool;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.ui.b
 * JD-Core Version:    0.6.2
 */
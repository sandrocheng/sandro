package org.antivirus.ui;

import android.content.Context;
import android.support.v4.app.Fragment;
import android.support.v4.app.f;
import android.support.v4.app.j;
import android.support.v4.app.p;
import android.view.KeyEvent;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import org.antivirus.core.EngineSettings;

public abstract class BaseToolFragmentActivity extends f
{
  private EngineSettings m;

  protected final void a()
  {
    finish();
  }

  protected final void a(int paramInt1, int paramInt2, String paramString)
  {
    View localView = findViewById(2131230772);
    Button localButton1 = (Button)localView.findViewById(2131230730);
    localButton1.setBackgroundResource(paramInt1);
    localButton1.setOnTouchListener(new BaseToolFragmentActivity.1(this, localButton1, paramInt2, paramInt1));
    localButton1.setOnClickListener(new BaseToolFragmentActivity.2(this));
    ((TextView)localView.findViewById(2131230731)).setText(paramString);
    Button localButton2 = (Button)localView.findViewById(2131230733);
    ((LinearLayout)localView.findViewById(2131230732)).setVisibility(8);
    localButton2.setOnClickListener(new BaseToolFragmentActivity.3(this));
  }

  protected final void a(Fragment paramFragment)
  {
    p localp = getSupportFragmentManager().a();
    localp.a(paramFragment);
    localp.a();
  }

  protected final void b()
  {
    openOptionsMenu();
  }

  public EngineSettings getEngineSettings(Context paramContext)
  {
    if (this.m == null)
      this.m = new EngineSettings(paramContext);
    return this.m;
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4)
      finish();
    for (boolean bool = true; ; bool = super.onKeyDown(paramInt, paramKeyEvent))
      return bool;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.ui.BaseToolFragmentActivity
 * JD-Core Version:    0.6.2
 */
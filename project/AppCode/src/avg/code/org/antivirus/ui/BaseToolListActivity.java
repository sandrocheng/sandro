package org.antivirus.ui;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.ListActivity;
import android.content.Context;
import android.content.res.Resources;
import android.os.Build.VERSION;
import android.view.KeyEvent;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import org.antivirus.core.EngineSettings;
import org.antivirus.tuneup.at;

public abstract class BaseToolListActivity extends ListActivity
{
  private Button a = null;
  EngineSettings d;
  protected String[] e = null;

  protected final EngineSettings a(Context paramContext)
  {
    if (this.d == null)
      this.d = new EngineSettings(paramContext);
    return this.d;
  }

  protected void a()
  {
    finish();
  }

  protected void a(int paramInt)
  {
  }

  protected final void a(int paramInt1, int paramInt2, String paramString, boolean paramBoolean)
  {
    View localView = findViewById(2131230772);
    Button localButton = (Button)localView.findViewById(2131230730);
    localButton.setBackgroundResource(paramInt1);
    localButton.setOnTouchListener(new BaseToolListActivity.3(this, localButton, paramInt2, paramInt1));
    localButton.setOnClickListener(new BaseToolListActivity.4(this));
    ((TextView)localView.findViewById(2131230731)).setText(paramString);
    this.a = ((Button)localView.findViewById(2131230733));
    if (paramBoolean)
    {
      this.a.setBackgroundDrawable(getResources().getDrawable(2130837637));
      if (Integer.parseInt(Build.VERSION.SDK) < 11)
        break label150;
      this.a.setOnClickListener(new BaseToolListActivity.5(this));
    }
    while (true)
    {
      return;
      ((LinearLayout)localView.findViewById(2131230732)).setVisibility(8);
      break;
      label150: this.a.setOnClickListener(new BaseToolListActivity.6(this));
    }
  }

  protected void a(View paramView)
  {
    openOptionsMenu();
  }

  public void addMenu(Object paramObject)
  {
  }

  protected int b()
  {
    return 0;
  }

  protected void c()
  {
    a();
  }

  protected final void c(int paramInt)
  {
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(this);
    this.e = new String[paramInt];
    addMenu(this.e);
    localBuilder.setSingleChoiceItems(new at(this, this.e, (byte)0), 0, new BaseToolListActivity.7(this));
    AlertDialog localAlertDialog = localBuilder.create();
    localAlertDialog.setCanceledOnTouchOutside(false);
    localAlertDialog.show();
  }

  public void initHeader(String paramString)
  {
    View localView = findViewById(2131230772);
    ((LinearLayout)localView.findViewById(2131230732)).setVisibility(8);
    ((Button)localView.findViewById(2131230730)).setOnClickListener(new BaseToolListActivity.1(this));
    ((Button)localView.findViewById(2131230733)).setOnClickListener(new BaseToolListActivity.2(this));
    ((TextView)localView.findViewById(2131230731)).setText(paramString);
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
 * Qualified Name:     org.antivirus.ui.BaseToolListActivity
 * JD-Core Version:    0.6.2
 */
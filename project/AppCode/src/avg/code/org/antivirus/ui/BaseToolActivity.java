package org.antivirus.ui;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.res.Resources;
import android.os.Build.VERSION;
import android.view.KeyEvent;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import java.util.ArrayList;
import org.antivirus.core.EngineSettings;
import org.antivirus.tuneup.at;

public abstract class BaseToolActivity extends Activity
{
  private EngineSettings a;
  private Button b = null;

  protected final EngineSettings a(Context paramContext)
  {
    if (this.a == null)
      this.a = new EngineSettings(paramContext);
    return this.a;
  }

  protected void a(int paramInt)
  {
  }

  protected void a(View paramView)
  {
    openOptionsMenu();
  }

  protected final void a(boolean paramBoolean1, int paramInt1, int paramInt2, String paramString, boolean paramBoolean2)
  {
    View localView = findViewById(2131230772);
    Button localButton = (Button)localView.findViewById(2131230730);
    localButton.setBackgroundResource(paramInt1);
    localButton.setOnTouchListener(new BaseToolActivity.1(this, localButton, paramInt2, paramInt1));
    if (paramBoolean1)
      localButton.setOnClickListener(new BaseToolActivity.2(this));
    ((TextView)localView.findViewById(2131230731)).setText(paramString);
    this.b = ((Button)localView.findViewById(2131230733));
    if (paramBoolean2)
    {
      this.b.setBackgroundDrawable(getResources().getDrawable(2130837637));
      if (Integer.parseInt(Build.VERSION.SDK) < 11)
        break label155;
      this.b.setOnClickListener(new BaseToolActivity.3(this));
    }
    while (true)
    {
      return;
      ((LinearLayout)localView.findViewById(2131230732)).setVisibility(8);
      break;
      label155: this.b.setOnClickListener(new BaseToolActivity.4(this));
    }
  }

  protected void a_()
  {
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(this);
    ArrayList localArrayList = addMenu(new ArrayList());
    if (localArrayList != null)
      localBuilder.setSingleChoiceItems(new at(this, (String[])localArrayList.toArray(new String[localArrayList.size()]), (byte)0), 0, new BaseToolActivity.5(this));
    AlertDialog localAlertDialog = localBuilder.create();
    localAlertDialog.setCanceledOnTouchOutside(false);
    localAlertDialog.show();
  }

  public ArrayList addMenu(Object paramObject)
  {
    return null;
  }

  protected void b()
  {
    onBack();
  }

  public void onBack()
  {
    finish();
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4)
      onBack();
    for (boolean bool = true; ; bool = super.onKeyDown(paramInt, paramKeyEvent))
      return bool;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.ui.BaseToolActivity
 * JD-Core Version:    0.6.2
 */
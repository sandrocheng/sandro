package org.antivirus.wipe;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.os.Bundle;
import android.os.Environment;
import android.view.Window;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import org.antivirus.Strings;
import org.antivirus.ui.BaseToolActivity;

public class WipeSd extends BaseToolActivity
{
  private EditText a;
  private AlertDialog b;
  private Button c = null;
  private boolean d;

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903101);
    a(true, 2130837878, 2130837877, Strings.getString(2131296410), false);
    if (!Environment.getExternalStorageState().equals("mounted"))
    {
      AlertDialog.Builder localBuilder = new AlertDialog.Builder(this);
      localBuilder.setTitle(Strings.getString(2131296423));
      localBuilder.setIcon(2130837585);
      localBuilder.setMessage(Strings.getString(2131296362));
      localBuilder.setPositiveButton(Strings.getString(2131296259), new aa(this));
      localBuilder.setOnCancelListener(new ab(this));
      this.b = localBuilder.create();
      this.b.setCanceledOnTouchOutside(false);
      this.b.show();
    }
    while (true)
    {
      getWindow().setSoftInputMode(2);
      return;
      ((TextView)findViewById(2131231031)).setText(Strings.getString(2131296416));
      ((TextView)findViewById(2131231032)).setText(Strings.getString(2131296417));
      this.c = ((Button)findViewById(2131231034));
      this.c.setText(Strings.getString(2131296259));
      Button localButton = (Button)findViewById(2131231035);
      localButton.setText(Strings.getString(2131296260));
      localButton.setOnClickListener(new ac(this));
      this.a = ((EditText)findViewById(2131231033));
      this.c.setOnClickListener(new ad(this));
      this.a.setSelected(false);
    }
  }

  protected void onPause()
  {
    if (this.b != null)
      this.b.dismiss();
    super.onPause();
    this.d = false;
  }

  protected void onResume()
  {
    super.onResume();
    this.d = true;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.wipe.WipeSd
 * JD-Core Version:    0.6.2
 */
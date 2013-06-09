package org.antivirus.ui.antitheft;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.f;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import com.android.vending.licensing.ObfuscatedSharedPreferences;
import org.antivirus.AVSettings;
import org.antivirus.Strings;
import org.antivirus.tools.MailUtils;

public final class w extends Fragment
{
  private AlertDialog N;
  private String O;

  private void a(String paramString1, String paramString2)
  {
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(this.t);
    localBuilder.setTitle(paramString2);
    localBuilder.setMessage(paramString1);
    localBuilder.setIcon(2130837676);
    localBuilder.setPositiveButton(Strings.getString(2131296259), new y(this));
    this.N = localBuilder.create();
    this.N.setCanceledOnTouchOutside(false);
    if (!this.t.isFinishing())
      this.N.show();
  }

  public final View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup)
  {
    if (paramViewGroup == null);
    for (View localView = null; ; localView = paramLayoutInflater.inflate(2130903043, paramViewGroup, false))
      return localView;
  }

  public final void a(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.a(paramInt1, paramInt2, paramIntent);
    if (paramInt1 == 5)
      switch (paramInt2)
      {
      default:
      case 2:
      case 1:
      case 3:
      }
    while (true)
    {
      return;
      this.t.finish();
      continue;
      a(Strings.getString(2131296639), Strings.getString(2131296467));
      continue;
      a(Strings.getString(2131296311), Strings.getString(2131296270));
    }
  }

  public final void a(Bundle paramBundle)
  {
    super.a(paramBundle);
    EditText localEditText = (EditText)this.t.findViewById(2131230770);
    ObfuscatedSharedPreferences localObfuscatedSharedPreferences = new ObfuscatedSharedPreferences(this.t, "XX8R", 0, true);
    String str = AVSettings.getFindRUser(this.t);
    if (TextUtils.isEmpty(str))
    {
      str = MailUtils.getMainMailAccount(this.t);
      if (TextUtils.isEmpty(str))
        break label105;
    }
    while (true)
    {
      localEditText.setText(localObfuscatedSharedPreferences.getString("XX8R", str));
      ((Button)this.t.findViewById(2131230760)).setOnClickListener(new x(this, localEditText));
      return;
      label105: str = "";
    }
  }

  public final void n()
  {
    if (this.N != null)
    {
      this.N.dismiss();
      this.N = null;
    }
    super.n();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.ui.antitheft.w
 * JD-Core Version:    0.6.2
 */
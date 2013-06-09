package org.antivirus.ui.license;

import android.app.AlertDialog;
import android.app.ProgressDialog;
import android.content.BroadcastReceiver;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.os.Handler;
import android.text.method.SingleLineTransformationMethod;
import android.view.KeyEvent;
import android.view.Window;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import com.android.vending.licensing.ObfuscatedSharedPreferences;
import org.antivirus.Strings;
import org.antivirus.core.b.g;
import org.antivirus.ui.BaseToolActivity;

public class LicenseEnteringActivity extends BaseToolActivity
{
  private EditText a;
  private ProgressDialog b;
  private AlertDialog c;
  private Button d;
  private Handler e = new a(this);
  private BroadcastReceiver f;

  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if ((paramInt1 == 49374) && (paramInt2 == -1))
    {
      String str = paramIntent.getStringExtra("SCAN_RESULT");
      paramIntent.getStringExtra("SCAN_RESULT_FORMAT");
      paramIntent.getByteArrayExtra("SCAN_RESULT_BYTES");
      int i = paramIntent.getIntExtra("SCAN_RESULT_ORIENTATION", -2147483648);
      if (i != -2147483648)
        Integer.valueOf(i);
      paramIntent.getStringExtra("SCAN_RESULT_ERROR_CORRECTION_LEVEL");
      if (str != null)
      {
        this.a.setText(str);
        if (!"".equals(str))
          this.d.setEnabled(true);
      }
    }
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903055);
    String str1 = "";
    Bundle localBundle = getIntent().getExtras();
    String str3;
    String str2;
    if (localBundle != null)
    {
      str1 = localBundle.getString("title");
      String str6 = localBundle.getString("firest_edit_text");
      str3 = localBundle.getString("lcc");
      str2 = str6;
    }
    while (true)
    {
      a(true, 2130837526, 2130837527, str1, false);
      Button localButton = (Button)findViewById(2131230834);
      TextView localTextView1 = (TextView)findViewById(2131230775);
      TextView localTextView2 = (TextView)findViewById(2131230835);
      localTextView1.setText(str2);
      localTextView2.setText("");
      this.a = ((EditText)findViewById(2131230776));
      this.a.setImeOptions(6);
      this.a.setInputType(1073742079);
      TextView localTextView3 = (TextView)findViewById(2131230836);
      String str4 = new g(this).a.getString("rishuy", "");
      String str5;
      if (str4 == null)
      {
        str5 = "";
        TextView localTextView4 = (TextView)findViewById(2131230833);
        localTextView4.setVisibility(0);
        localTextView4.setText(Strings.getString(2131296578) + "\n" + str5);
        localTextView3.setVisibility(8);
        if (!getPackageManager().hasSystemFeature("android.hardware.camera"))
          break label454;
        localButton.setVisibility(0);
        localButton.setOnClickListener(new c(this));
      }
      while (true)
      {
        getWindow().setSoftInputMode(2);
        this.d = ((Button)findViewById(2131230777));
        this.d.setText(Strings.getString(2131296259));
        if (str3 == null)
          this.d.setEnabled(false);
        this.d.setOnClickListener(new d(this));
        this.a.addTextChangedListener(new e(this));
        if (str3 != null)
        {
          this.a.setText(str3);
          this.a.setEnabled(false);
        }
        return;
        String[] arrayOfString = str4.split("-");
        StringBuilder localStringBuilder = new StringBuilder();
        int i = arrayOfString.length;
        for (int j = 0; j < i - 1; j++)
        {
          if (j > 0)
            localStringBuilder.append("-");
          localStringBuilder.append(arrayOfString[j]);
        }
        str5 = localStringBuilder.toString();
        break;
        label454: localButton.setVisibility(8);
      }
      str2 = "";
      str3 = null;
    }
  }

  protected void onDestroy()
  {
    if (this.b != null)
    {
      this.b.dismiss();
      this.b = null;
    }
    if (this.c != null)
      this.c = null;
    if (this.f != null)
    {
      unregisterReceiver(this.f);
      this.f = null;
    }
    super.onDestroy();
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    boolean bool = true;
    if (4 == paramInt)
    {
      onBack();
      bool = false;
    }
    while (true)
    {
      return bool;
      if (5 != paramInt)
        if (84 != paramInt)
          break;
    }
  }

  public void onResume()
  {
    super.onResume();
    this.a.setTransformationMethod(new SingleLineTransformationMethod());
    this.a.setInputType(1);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.ui.license.LicenseEnteringActivity
 * JD-Core Version:    0.6.2
 */
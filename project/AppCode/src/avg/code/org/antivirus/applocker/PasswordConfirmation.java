package org.antivirus.applocker;

import android.content.Intent;
import android.os.Bundle;
import android.view.KeyEvent;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import org.antivirus.AVSettings;
import org.antivirus.Strings;
import org.antivirus.ui.BaseToolActivity;

public class PasswordConfirmation extends BaseToolActivity
{
  private EditText a;
  private EditText b;
  private EditText c;

  protected final void onBack()
  {
    setResult(1);
    super.onBack();
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903072);
    a(true, 2130837580, 2130837579, Strings.getString(2131296326), false);
    TextView localTextView1 = (TextView)findViewById(2131230775);
    TextView localTextView2 = (TextView)findViewById(2131230901);
    TextView localTextView3 = (TextView)findViewById(2131230835);
    TextView localTextView4 = (TextView)findViewById(2131230903);
    localTextView1.setText(Strings.getString(2131296324));
    Intent localIntent = getIntent();
    if ((localIntent != null) && (localIntent.getExtras() != null) && (localIntent.getExtras().getBoolean("password_change")))
      localTextView1.setText(Strings.getString(2131296352));
    localTextView2.setText(Strings.getString(2131296327));
    localTextView3.setText(Strings.getString(2131296325));
    localTextView4.setText(Strings.getString(2131296337));
    this.a = ((EditText)findViewById(2131230776));
    this.a.setImeOptions(5);
    this.a.setNextFocusDownId(2131230902);
    this.a.setInputType(1073741953);
    this.b = ((EditText)findViewById(2131230902));
    this.b.setImeOptions(5);
    this.b.setNextFocusDownId(2131230904);
    this.b.setInputType(1073741953);
    String str = AVSettings.getAppLockerPassRecoveryMailAddr(this);
    this.c = ((EditText)findViewById(2131230904));
    this.c.setText(str);
    this.c.setInputType(32);
    Button localButton = (Button)findViewById(2131230905);
    localButton.setText(Strings.getString(2131296345));
    localButton.setOnClickListener(new l(this));
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (4 == paramInt)
      onBack();
    return false;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.applocker.PasswordConfirmation
 * JD-Core Version:    0.6.2
 */
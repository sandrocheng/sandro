package org.antivirus.applocker;

import android.content.Intent;
import android.os.Bundle;
import android.text.SpannableString;
import android.text.method.LinkMovementMethod;
import android.text.method.PasswordTransformationMethod;
import android.view.Window;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.TextView.BufferType;
import org.antivirus.AVSettings;
import org.antivirus.Strings;
import org.antivirus.core.Logger;
import org.antivirus.ui.BaseToolActivity;
import org.antivirus.ui.main.AntivirusMainScreen;

public abstract class i extends BaseToolActivity
{
  protected EditText a;

  protected abstract void a();

  protected final void b()
  {
    try
    {
      Intent localIntent = new Intent(this, AntivirusMainScreen.class);
      localIntent.setFlags(335544320);
      startActivity(localIntent);
      return;
    }
    catch (Exception localException)
    {
      while (true)
        Logger.log(localException);
    }
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903055);
    a(true, 2130837580, 2130837579, Strings.getString(2131296320), false);
    Bundle localBundle = getIntent().getExtras();
    if (localBundle != null);
    for (String str1 = localBundle.getString("firest_edit_text"); ; str1 = "")
    {
      TextView localTextView1 = (TextView)findViewById(2131230775);
      TextView localTextView2 = (TextView)findViewById(2131230835);
      localTextView1.setText(str1);
      localTextView2.setText("");
      this.a = ((EditText)findViewById(2131230776));
      this.a.setImeOptions(6);
      this.a.setInputType(1073742079);
      TextView localTextView3 = (TextView)findViewById(2131230836);
      String str2 = Strings.getString(2131296338);
      localTextView3.setText(str2);
      if (!AVSettings.isApplockerEmailEntered(getApplicationContext()))
        localTextView3.setVisibility(8);
      while (true)
      {
        SpannableString localSpannableString = new SpannableString(str2);
        localSpannableString.setSpan(new j(this, this), 0, str2.length(), 0);
        localTextView3.setMovementMethod(LinkMovementMethod.getInstance());
        localTextView3.setText(localSpannableString, TextView.BufferType.SPANNABLE);
        getWindow().setSoftInputMode(2);
        Button localButton = (Button)findViewById(2131230777);
        localButton.setText(Strings.getString(2131296259));
        localButton.setOnClickListener(new k(this));
        return;
        localTextView3.setVisibility(0);
      }
    }
  }

  public void onResume()
  {
    super.onResume();
    this.a.setInputType(129);
    this.a.setTransformationMethod(new PasswordTransformationMethod());
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.applocker.i
 * JD-Core Version:    0.6.2
 */
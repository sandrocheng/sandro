package org.antivirus.ui;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import org.antivirus.Strings;
import org.antivirus.ui.privacy.g;

public class TransparentDummyActivity extends Activity
{
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903062);
    Intent localIntent = getIntent();
    int i = localIntent.getIntExtra("FEATURE_EXPIRED_TITLE", 0);
    int j = localIntent.getIntExtra("FEATURE_EXPIRED_SUBTITLE", 0);
    int k = localIntent.getIntExtra("FEATURE_EXPIRED_BODY", 0);
    int m = localIntent.getIntExtra("FEATURE_EXPIRED_ICON", 0);
    if ((i == 0) || (j == 0) || (k == 0) || (m == 0))
      finish();
    while (true)
    {
      return;
      g.a(this, Strings.getString(i), Strings.getString(j), Strings.getString(k), m, true);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.ui.TransparentDummyActivity
 * JD-Core Version:    0.6.2
 */
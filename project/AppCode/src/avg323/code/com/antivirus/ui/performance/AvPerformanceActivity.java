package com.antivirus.ui.performance;

import android.content.Intent;
import android.os.Bundle;
import com.antivirus.AVService;
import com.antivirus.ui.main.HandheldMainActivity;
import com.avg.tuneup.a.b;

public class AvPerformanceActivity extends b
{
  protected void a(Bundle paramBundle)
  {
    if (paramBundle == null)
      a(new a(), 2131230929, "Performance");
  }

  public void i()
  {
    super.i();
    Intent localIntent = new Intent(this, HandheldMainActivity.class);
    localIntent.setFlags(608305152);
    startActivity(localIntent);
  }

  protected Class j()
  {
    return AVService.class;
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    a(true, 2130837548, 2130837549, getString(2131296454), false);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.ui.performance.AvPerformanceActivity
 * JD-Core Version:    0.6.2
 */
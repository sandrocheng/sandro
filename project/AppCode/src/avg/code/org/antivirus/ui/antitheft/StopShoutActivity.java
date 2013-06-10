package org.antivirus.ui.antitheft;

import android.app.Activity;
import android.os.Bundle;
import android.os.Handler;
import android.widget.Button;
import android.widget.TextView;
import org.antivirus.AvApplication;
import org.antivirus.Strings;
import org.antivirus.core.b.a;

public class StopShoutActivity extends Activity
{
  private Handler a;
  private Runnable b = new z(this);

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903089);
    TextView localTextView = (TextView)findViewById(2131230956);
    String str = Strings.getString(2131296562);
    if ((AvApplication.mAvgFeatures != null) && (AvApplication.mAvgFeatures.b()))
      str = Strings.getString(2131296561);
    if (AvApplication.mAvgFeatures == null)
      str = "";
    localTextView.setText(str);
    ((Button)findViewById(2131230957)).setOnClickListener(new aa(this));
    if (this.a == null)
      this.a = new Handler();
    this.a.postDelayed(this.b, 600000L);
  }

  protected void onDestroy()
  {
    if (this.a != null)
      this.a.removeCallbacks(this.b);
    super.onDestroy();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.ui.antitheft.StopShoutActivity
 * JD-Core Version:    0.6.2
 */
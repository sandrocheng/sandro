package com.tencent.qqpimsecure.ui.activity.virus;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.TextView;
import com.tencent.qqpimsecure.uilib.view.ButtonView;
import java.util.List;
import ms;
import mu;

public class VirusNotivicationResultDialog extends Activity
  implements View.OnClickListener
{
  private List<ms> a;
  private ButtonView b;
  private ButtonView c;
  private TextView d;

  public void onClick(View paramView)
  {
    if (paramView == this.b)
    {
      Intent localIntent = new Intent(this, VirusScanActivity.class);
      localIntent.setFlags(268435456);
      localIntent.putExtra("data", new mu(0L, 1, "", 1, 0, 1, 0, this.a));
      startActivity(localIntent);
      finish();
    }
    while (true)
    {
      return;
      if (paramView == this.c)
        finish();
    }
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    setContentView(2130903081);
    try
    {
      mu localmu = (mu)getIntent().getSerializableExtra("data");
      if (localmu != null)
        this.a = localmu.i;
      if ((this.a != null) && (this.a.size() > 0))
      {
        this.b = ((ButtonView)findViewById(2131230826));
        this.b.setOnClickListener(this);
        this.c = ((ButtonView)findViewById(2131230824));
        this.c.setOnClickListener(this);
        this.d = ((TextView)findViewById(2131230825));
        TextView localTextView = this.d;
        String str = getString(2131428066);
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = Integer.valueOf(this.a.size());
        localTextView.setText(String.format(str, arrayOfObject));
        return;
      }
    }
    catch (ClassCastException localClassCastException)
    {
      while (true)
      {
        localClassCastException.printStackTrace();
        finish();
        continue;
        finish();
      }
    }
  }

  protected void onResume()
  {
    super.onResume();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.ui.activity.virus.VirusNotivicationResultDialog
 * JD-Core Version:    0.6.2
 */
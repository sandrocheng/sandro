package com.antivirus.ui.privacy;

import android.os.Bundle;
import android.text.SpannableString;
import android.text.style.UnderlineSpan;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.TextView;
import android.widget.Toast;
import com.antivirus.AVService;
import com.antivirus.m;
import com.avg.toolkit.b.f;
import com.avg.toolkit.e.e;

public class a extends com.antivirus.ui.a.a.a
  implements View.OnClickListener
{
  private int a = 30;
  private View b = null;

  private void F()
  {
    String str2;
    if ((e.a().b()) || (e.a().d()))
    {
      TextView localTextView1 = (TextView)this.b.findViewById(2131230928);
      String str1 = m.a(this.ag, 2131296302);
      if (e.a().b())
        str1 = m.a(this.ag, 2131296303);
      SpannableString localSpannableString = new SpannableString(str1);
      localSpannableString.setSpan(new UnderlineSpan(), 0, localSpannableString.length(), 0);
      localTextView1.setText(localSpannableString);
      if ((e.a().d()) && (e.a().n > this.a))
        localTextView1.setVisibility(8);
      localTextView1.setOnClickListener(this);
      TextView localTextView2 = (TextView)this.b.findViewById(2131230927);
      str2 = e.a().n + "";
      if ((!e.a().c()) && (e.a().n > -1) && (e.a().n < 2147483647))
        if (e.a().n == 1)
        {
          str2 = str2 + " " + m.a(this.ag, 2131296793);
          localTextView2.setText(str2);
        }
    }
    while (true)
    {
      return;
      str2 = str2 + " " + m.a(this.ag, 2131296792);
      break;
      if ((!e.a().c()) && (!e.a().m))
        break;
      str2 = m.a(this.ag, 2131296794);
      break;
      this.b.findViewById(2131230926).setVisibility(8);
    }
  }

  public View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    this.b = paramLayoutInflater.inflate(2130903079, paramViewGroup, false);
    if (e.a() != null)
      F();
    return this.b;
  }

  public void a()
  {
    F();
  }

  public void onClick(View paramView)
  {
    if (!f.a(this.ag.getApplicationContext()))
      Toast.makeText(this.ag, m.a(this.ag, 2131296262), 1).show();
    while (true)
    {
      return;
      AVService.a(this.ag, 7000, 7004, null);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.ui.privacy.a
 * JD-Core Version:    0.6.2
 */
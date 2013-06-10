package org.antivirus.ui.privacy;

import android.content.Context;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import java.util.ArrayList;
import org.antivirus.AVSettings;
import org.antivirus.Strings;
import org.antivirus.ui.performance.b;

final class f extends org.antivirus.ui.performance.a
{
  private final int c = 1;
  private final int d = 2;
  private LayoutInflater e;
  private Context f;

  public f(PrivacyActivity paramPrivacyActivity, Context paramContext)
  {
    super(paramPrivacyActivity.a);
    this.e = LayoutInflater.from(paramContext);
    this.f = paramContext;
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    org.antivirus.ui.performance.c localc1;
    b localb;
    if (paramView == null)
    {
      paramView = this.e.inflate(2130903084, null);
      org.antivirus.ui.performance.c localc2 = new org.antivirus.ui.performance.c(this);
      localc2.a = ((ImageView)paramView.findViewById(2131230874));
      localc2.b = ((TextView)paramView.findViewById(2131230731));
      localc2.d = ((TextView)paramView.findViewById(2131230932));
      localc2.f = ((ImageView)paramView.findViewById(2131230875));
      localc2.e = new LinearLayout(this.f);
      ((LinearLayout)localc2.e).setGravity(16);
      localc2.c = new TextView(this.f.getApplicationContext());
      localc2.c.setPadding(10, 0, 10, 0);
      ((LinearLayout)paramView.findViewById(2131230931)).addView(localc2.c);
      ((LinearLayout)paramView.findViewById(2131230930)).addView(localc2.e);
      ImageView localImageView = new ImageView(this.f);
      localImageView.setId(1);
      localImageView.setImageResource(2130837725);
      ((LinearLayout)localc2.e).addView(localImageView);
      TextView localTextView4 = new TextView(this.f);
      localTextView4.setTextAppearance(this.f, 2131099664);
      localTextView4.setId(2);
      ((LinearLayout)localc2.e).addView(localTextView4);
      paramView.setTag(localc2);
      localc1 = localc2;
      localc1.e.setVisibility(8);
      localc1.c.setVisibility(8);
      localb = (b)this.b.a.get(paramInt);
      switch (((b)this.b.a.get(paramInt)).a)
      {
      default:
      case 0:
      case 1:
      case 2:
      case 4:
      case 3:
      }
    }
    while (true)
    {
      return paramView;
      localc1 = (org.antivirus.ui.performance.c)paramView.getTag();
      break;
      a(localc1, 0, 2130837577, 2131296320, 2131296321);
      localc1.e.setVisibility(0);
      localc1.e.findViewById(1).setVisibility(8);
      if (AVSettings.getApplockerUserPassword(this.b.getApplicationContext()).length() == 0)
      {
        TextView localTextView3 = (TextView)localc1.e.findViewById(2);
        localTextView3.setText(Strings.getString(2131296691));
        localTextView3.setTextColor(this.b.getResources().getColor(2131165245));
        label462: if (localb.c)
        {
          if (!localb.b)
            break label718;
          localc1.c.setVisibility(0);
          localc1.c.setText(Strings.getString(2131296695));
          localc1.c.setTextAppearance(this.f, 2131099666);
          localc1.c.setBackgroundColor(this.b.getResources().getColor(2131165245));
        }
      }
      while (PrivacyActivity.b(this.b).d == org.antivirus.core.b.c.a)
      {
        paramView.setVisibility(8);
        break;
        if (PrivacyActivity.g(this.b) > 0)
        {
          localc1.e.findViewById(1).setVisibility(0);
          TextView localTextView2 = (TextView)localc1.e.findViewById(2);
          localTextView2.setText(" " + PrivacyActivity.g(this.b) + " " + Strings.getString(2131296693));
          localTextView2.setTextColor(-1);
          break label462;
        }
        if (PrivacyActivity.g(this.b) == 0)
        {
          TextView localTextView1 = (TextView)localc1.e.findViewById(2);
          localTextView1.setText(Strings.getString(2131296692));
          localTextView1.setTextColor(this.b.getResources().getColor(2131165245));
          localTextView1.setTextColor(-1);
          break label462;
        }
        localc1.e.setVisibility(8);
        break label462;
        label718: localc1.c.setVisibility(0);
        localc1.c.setText(Strings.getString(2131296694));
        localc1.c.setTextAppearance(this.f, 2131099665);
        localc1.c.setBackgroundColor(this.b.getResources().getColor(2131165219));
      }
      a(localc1, 1, 2130837553, 2131296358, 2131296357);
      if (localb.c)
      {
        if (!localb.b)
          break label886;
        localc1.c.setVisibility(0);
        localc1.c.setText(Strings.getString(2131296695));
        localc1.c.setTextAppearance(this.f, 2131099666);
        localc1.c.setBackgroundColor(this.b.getResources().getColor(2131165245));
      }
      while (PrivacyActivity.b(this.b).h == org.antivirus.core.b.c.a)
      {
        paramView.setVisibility(8);
        break;
        label886: localc1.c.setVisibility(0);
        localc1.c.setText(Strings.getString(2131296694));
        localc1.c.setTextAppearance(this.f, 2131099665);
        localc1.c.setBackgroundColor(this.b.getResources().getColor(2131165219));
      }
      a(localc1, 2, 2130837875, 2131296412, 2131296413);
      continue;
      a(localc1, 4, 2130837876, 2131296410, 2131296411);
      continue;
      a(localc1, 3, 2130837867, 2131296414, 2131296415);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.ui.privacy.f
 * JD-Core Version:    0.6.2
 */
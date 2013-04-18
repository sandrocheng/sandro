package com.keniu.security.protection.ui;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;
import android.widget.TextView;

public class PreventTheftWhiteAddActivity extends Activity
  implements View.OnClickListener
{
  private String a;
  private EditText b;
  private EditText c;

  private void a()
  {
    ((TextView)findViewById(2131230749)).setText(2131427335);
    ((TextView)findViewById(2131230751)).setText(2131429266);
    findViewById(2131230754).setVisibility(8);
    findViewById(2131230755).setVisibility(8);
    this.b = ((EditText)findViewById(2131230752));
    this.b.setEnabled(false);
    this.b.setFocusable(false);
    this.c = ((EditText)findViewById(2131230753));
    findViewById(2131230756).setOnClickListener(this);
    findViewById(2131230757).setOnClickListener(this);
    this.a = getIntent().getType();
    String str1 = getIntent().getStringExtra("number");
    String str2 = getIntent().getStringExtra("location");
    if (this.a != null)
    {
      if (!this.a.equals("modify"))
        break label179;
      this.b.setText(str1);
      this.c.setText(str2);
    }
    while (true)
    {
      return;
      label179: if (this.a.equals("save"))
      {
        this.b.setText(str1);
        this.c.setText(str2);
      }
    }
  }

  private boolean b()
  {
    String str1 = ag.n(getApplicationContext());
    Object localObject1 = ag.o(getApplicationContext());
    boolean bool;
    if (this.a == null)
    {
      bool = false;
      return bool;
    }
    String[] arrayOfString1;
    Object localObject6;
    int i;
    if (this.a.equals("modify"))
    {
      String str5 = this.b.getText().toString();
      if ((str5 != null) && (!str5.equals("")))
      {
        arrayOfString1 = str1.split(",");
        if (localObject1 == null)
          localObject6 = new String[arrayOfString1.length];
        while (arrayOfString1.length > localObject6.length)
        {
          String[] arrayOfString2 = new String[arrayOfString1.length];
          int m = 0;
          while (true)
            if (m < localObject6.length)
            {
              arrayOfString2[m] = localObject6[m];
              m++;
              continue;
              localObject6 = ((String)localObject1).split(",");
              break;
            }
          localObject6 = arrayOfString2;
        }
        i = 0;
        if (i >= arrayOfString1.length)
          break label504;
        if (str5.equals(arrayOfString1[i]))
          localObject6[i] = this.c.getText().toString();
      }
    }
    label201: label357: label493: label504: for (int j = 1; ; j = 0)
    {
      if (j != 0)
      {
        String str6 = "";
        int k = 0;
        if (k < arrayOfString1.length)
        {
          StringBuilder localStringBuilder = new StringBuilder().append(str6);
          if (localObject6[k] == null);
          for (String str7 = ""; ; str7 = localObject6[k])
          {
            str6 = str7 + ",";
            k++;
            break label201;
            i++;
            break;
          }
        }
        localObject1 = str6;
      }
      Object localObject5 = localObject1;
      Object localObject3 = str1;
      Object localObject2;
      for (Object localObject4 = localObject5; ; localObject4 = localObject2)
      {
        try
        {
          ag.f(getApplicationContext(), (String)localObject3);
          ag.g(getApplicationContext(), localObject4);
          bool = true;
          break;
          if (!this.a.equals("save"))
            break label493;
          String str2;
          if (str1 == null)
          {
            str2 = this.b.getText().toString() + ",";
            if (localObject1 != null)
              break label443;
          }
          for (String str3 = this.c.getText().toString() + ","; ; str3 = (String)localObject1 + this.c.getText().toString() + ",")
          {
            String str4 = str3;
            localObject3 = str2;
            localObject4 = str4;
            break;
            str2 = str1 + this.b.getText().toString() + ",";
            break label357;
          }
        }
        catch (Exception localException)
        {
          localException.printStackTrace();
          bool = false;
        }
        break;
        localObject2 = localObject1;
        localObject3 = str1;
      }
    }
  }

  public void onClick(View paramView)
  {
    if (paramView.getId() == 2131230756)
      if (b())
      {
        setResult(-1, getIntent());
        finish();
      }
    while (true)
    {
      return;
      if (paramView.getId() == 2131230757)
        finish();
    }
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    setContentView(2130903043);
    ((TextView)findViewById(2131230749)).setText(2131427335);
    ((TextView)findViewById(2131230751)).setText(2131429266);
    findViewById(2131230754).setVisibility(8);
    findViewById(2131230755).setVisibility(8);
    this.b = ((EditText)findViewById(2131230752));
    this.b.setEnabled(false);
    this.b.setFocusable(false);
    this.c = ((EditText)findViewById(2131230753));
    findViewById(2131230756).setOnClickListener(this);
    findViewById(2131230757).setOnClickListener(this);
    this.a = getIntent().getType();
    String str1 = getIntent().getStringExtra("number");
    String str2 = getIntent().getStringExtra("location");
    if (this.a != null)
    {
      if (!this.a.equals("modify"))
        break label198;
      this.b.setText(str1);
      this.c.setText(str2);
    }
    while (true)
    {
      return;
      label198: if (this.a.equals("save"))
      {
        this.b.setText(str1);
        this.c.setText(str2);
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.protection.ui.PreventTheftWhiteAddActivity
 * JD-Core Version:    0.6.2
 */
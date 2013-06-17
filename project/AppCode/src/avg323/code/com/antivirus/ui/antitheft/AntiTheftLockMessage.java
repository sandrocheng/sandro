package com.antivirus.ui.antitheft;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.os.Bundle;
import android.text.InputFilter;
import android.text.InputFilter.LengthFilter;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import com.antivirus.antitheft.v;
import com.antivirus.c;
import com.antivirus.ui.b;

public class AntiTheftLockMessage extends b
{
  private AlertDialog a;
  private TextView b;
  private TextView c;
  private TextView d;
  private String[] e = new String[3];

  private void e()
  {
    View localView1 = LayoutInflater.from(this).inflate(2130903074, null);
    EditText localEditText = (EditText)localView1.findViewById(2131230865);
    InputFilter[] arrayOfInputFilter = new InputFilter[2];
    arrayOfInputFilter[0] = new v("[^\\d\\w\\+\\-\\@\\ \\.\\,]");
    arrayOfInputFilter[1] = new InputFilter.LengthFilter(30);
    localEditText.setFilters(arrayOfInputFilter);
    localEditText.setText(this.e[0]);
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(this);
    localBuilder.setTitle(com.antivirus.m.a(this, 2131296511));
    localBuilder.setView(localView1);
    localBuilder.setPositiveButton(com.antivirus.m.a(this, 2131296269), new i(this, localEditText));
    localBuilder.setNegativeButton(com.antivirus.m.a(this, 2131296270), new j(this));
    AlertDialog localAlertDialog = localBuilder.create();
    localAlertDialog.setCanceledOnTouchOutside(false);
    View localView2 = findViewById(2131230941);
    ((TextView)localView2.findViewById(2131230733)).setText(com.antivirus.m.a(this, 2131296507));
    ((TextView)localView2.findViewById(2131230943)).setText(com.antivirus.m.a(this, 2131296508));
    localView2.setOnClickListener(new k(this, localEditText, localAlertDialog));
  }

  private void f()
  {
    View localView1 = LayoutInflater.from(this).inflate(2130903074, null);
    EditText localEditText = (EditText)localView1.findViewById(2131230865);
    InputFilter[] arrayOfInputFilter = new InputFilter[2];
    arrayOfInputFilter[0] = new v("[^\\d\\w\\+\\-\\@\\ \\.\\,]");
    arrayOfInputFilter[1] = new InputFilter.LengthFilter(30);
    localEditText.setFilters(arrayOfInputFilter);
    localEditText.setText(this.e[2]);
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(this);
    localBuilder.setTitle(com.antivirus.m.a(this, 2131296511));
    localBuilder.setView(localView1);
    localBuilder.setPositiveButton(com.antivirus.m.a(this, 2131296269), new l(this, localEditText));
    localBuilder.setNegativeButton(com.antivirus.m.a(this, 2131296270), new m(this));
    AlertDialog localAlertDialog = localBuilder.create();
    localAlertDialog.setCanceledOnTouchOutside(false);
    View localView2 = findViewById(2131230942);
    ((TextView)localView2.findViewById(2131230733)).setText(com.antivirus.m.a(this, 2131296509));
    ((TextView)localView2.findViewById(2131230943)).setText(com.antivirus.m.a(this, 2131296510));
    localView2.setOnClickListener(new n(this, localEditText, localAlertDialog));
  }

  private void g()
  {
    View localView = findViewById(2131230946);
    ((TextView)localView.findViewById(2131230733)).setText(com.antivirus.m.a(this, 2131296512));
    ((TextView)localView.findViewById(2131230943)).setText(com.antivirus.m.a(this, 2131296513));
    localView.setOnClickListener(new o(this));
  }

  private void h()
  {
    if (this.b != null)
      this.b.setText(this.e[0]);
    if (this.c != null)
      this.c.setText(this.e[1]);
    if (this.d != null)
      this.d.setText(this.e[2]);
  }

  private void i()
  {
    View localView = findViewById(2131230872);
    this.b = ((TextView)localView.findViewById(2131230945));
    this.c = ((TextView)localView.findViewById(2131230946));
    this.d = ((TextView)localView.findViewById(2131230947));
    h();
  }

  private void j()
  {
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(this);
    localBuilder.setTitle(com.antivirus.m.a(this, 2131296582));
    localBuilder.setIcon(2130837609);
    View localView = LayoutInflater.from(this).inflate(2130903074, null);
    localBuilder.setView(localView);
    EditText localEditText = (EditText)localView.findViewById(2131230865);
    InputFilter[] arrayOfInputFilter = new InputFilter[2];
    arrayOfInputFilter[0] = new v("[^\\d\\w\\+\\-\\.\\@\\ ]");
    arrayOfInputFilter[1] = new InputFilter.LengthFilter(30);
    localEditText.setFilters(arrayOfInputFilter);
    localEditText.setText(this.e[1]);
    localBuilder.setPositiveButton(com.antivirus.m.a(this, 2131296269), new p(this, localEditText));
    localBuilder.setNegativeButton(com.antivirus.m.a(this, 2131296270), new q(this));
    this.a = localBuilder.create();
    this.a.setCanceledOnTouchOutside(false);
    this.a.show();
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903084);
    String str = c.o();
    if (!TextUtils.isEmpty(str))
    {
      String[] arrayOfString = new String[3];
      int i = 0;
      int m;
      for (int j = 0; i < 3; j = m)
      {
        arrayOfString[i] = "";
        while ((j < str.length()) && (str.charAt(j) != '|'))
        {
          arrayOfString[i] = (arrayOfString[i] + str.charAt(j));
          j++;
        }
        m = j + 1;
        i++;
      }
      int k = 0;
      if (k < 3)
      {
        if (arrayOfString[k] != null)
          this.e[k] = arrayOfString[k];
        while (true)
        {
          k++;
          break;
          this.e[k] = "";
        }
      }
    }
    else
    {
      this.e[0] = "";
      this.e[1] = "";
      this.e[2] = "";
    }
    ((TextView)findViewById(2131230940)).setText(com.antivirus.m.a(this, 2131296505));
    ((TextView)findViewById(2131230944)).setText(com.antivirus.m.a(this, 2131296506));
    i();
    e();
    g();
    f();
  }

  protected void onPause()
  {
    if (this.a != null)
      this.a.dismiss();
    super.onPause();
  }

  public void onResume()
  {
    super.onResume();
    h();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.ui.antitheft.AntiTheftLockMessage
 * JD-Core Version:    0.6.2
 */
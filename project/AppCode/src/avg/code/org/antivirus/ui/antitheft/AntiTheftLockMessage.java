package org.antivirus.ui.antitheft;

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
import org.antivirus.AVSettings;
import org.antivirus.Strings;
import org.antivirus.antitheft.t;
import org.antivirus.ui.BaseToolActivity;

public class AntiTheftLockMessage extends BaseToolActivity
{
  private AlertDialog a;
  private TextView b;
  private TextView c;
  private TextView d;
  private String[] e = new String[3];

  private void c()
  {
    if (this.b != null)
      this.b.setText(this.e[0]);
    if (this.c != null)
      this.c.setText(this.e[1]);
    if (this.d != null)
      this.d.setText(this.e[2]);
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903069);
    String str = AVSettings.getLostMsg();
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
    ((TextView)findViewById(2131230877)).setText(Strings.getString(2131296297));
    ((TextView)findViewById(2131230882)).setText(Strings.getString(2131296298));
    View localView1 = findViewById(2131230837);
    this.b = ((TextView)localView1.findViewById(2131230883));
    this.c = ((TextView)localView1.findViewById(2131230884));
    this.d = ((TextView)localView1.findViewById(2131230885));
    c();
    View localView2 = LayoutInflater.from(this).inflate(2130903061, null);
    EditText localEditText1 = (EditText)localView2.findViewById(2131230868);
    InputFilter[] arrayOfInputFilter1 = new InputFilter[2];
    arrayOfInputFilter1[0] = new t("[^\\d\\w\\+\\-\\@\\ \\.\\,]");
    arrayOfInputFilter1[1] = new InputFilter.LengthFilter(30);
    localEditText1.setFilters(arrayOfInputFilter1);
    localEditText1.setText(this.e[0]);
    AlertDialog.Builder localBuilder1 = new AlertDialog.Builder(this);
    localBuilder1.setTitle(Strings.getString(2131296303));
    localBuilder1.setView(localView2);
    localBuilder1.setPositiveButton(Strings.getString(2131296259), new m(this, localEditText1));
    localBuilder1.setNegativeButton(Strings.getString(2131296260), new n(this));
    AlertDialog localAlertDialog1 = localBuilder1.create();
    localAlertDialog1.setCanceledOnTouchOutside(false);
    View localView3 = findViewById(2131230878);
    ((TextView)localView3.findViewById(2131230731)).setText(Strings.getString(2131296299));
    ((TextView)localView3.findViewById(2131230881)).setText(Strings.getString(2131296300));
    localView3.setOnClickListener(new o(this, localEditText1, localAlertDialog1));
    View localView4 = findViewById(2131230884);
    ((TextView)localView4.findViewById(2131230731)).setText(Strings.getString(2131296304));
    ((TextView)localView4.findViewById(2131230881)).setText(Strings.getString(2131296305));
    localView4.setOnClickListener(new s(this));
    View localView5 = LayoutInflater.from(this).inflate(2130903061, null);
    EditText localEditText2 = (EditText)localView5.findViewById(2131230868);
    InputFilter[] arrayOfInputFilter2 = new InputFilter[2];
    arrayOfInputFilter2[0] = new t("[^\\d\\w\\+\\-\\@\\ \\.\\,]");
    arrayOfInputFilter2[1] = new InputFilter.LengthFilter(30);
    localEditText2.setFilters(arrayOfInputFilter2);
    localEditText2.setText(this.e[2]);
    AlertDialog.Builder localBuilder2 = new AlertDialog.Builder(this);
    localBuilder2.setTitle(Strings.getString(2131296303));
    localBuilder2.setView(localView5);
    localBuilder2.setPositiveButton(Strings.getString(2131296259), new p(this, localEditText2));
    localBuilder2.setNegativeButton(Strings.getString(2131296260), new q(this));
    AlertDialog localAlertDialog2 = localBuilder2.create();
    localAlertDialog2.setCanceledOnTouchOutside(false);
    View localView6 = findViewById(2131230880);
    ((TextView)localView6.findViewById(2131230731)).setText(Strings.getString(2131296301));
    ((TextView)localView6.findViewById(2131230881)).setText(Strings.getString(2131296302));
    localView6.setOnClickListener(new r(this, localEditText2, localAlertDialog2));
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
    c();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.ui.antitheft.AntiTheftLockMessage
 * JD-Core Version:    0.6.2
 */
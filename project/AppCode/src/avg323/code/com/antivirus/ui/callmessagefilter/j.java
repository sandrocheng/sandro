package com.antivirus.ui.callmessagefilter;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.provider.ContactsContract.Data;
import android.view.LayoutInflater;
import android.view.View;
import android.view.Window;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import com.antivirus.AVService;
import com.antivirus.c;
import com.antivirus.core.b;

public abstract class j
{
  protected CheckBox a;
  protected CheckBox b;
  protected CheckBox c;
  protected CheckBox d;
  protected CheckBox e;
  protected CheckBox f;
  protected EditText g;
  protected CheckBox h;
  protected View i;
  private Context j;
  private b k;

  private Bitmap a(Context paramContext, String paramString)
  {
    Bitmap localBitmap = null;
    if (paramString == null);
    while (true)
    {
      return localBitmap;
      Cursor localCursor = paramContext.getContentResolver().query(ContactsContract.Data.CONTENT_URI, new String[] { "data15" }, "_id=?", new String[] { paramString }, null);
      boolean bool = localCursor.moveToFirst();
      localBitmap = null;
      if (bool)
      {
        byte[] arrayOfByte = localCursor.getBlob(localCursor.getColumnIndex("data15"));
        localBitmap = BitmapFactory.decodeByteArray(arrayOfByte, 0, arrayOfByte.length);
      }
      localCursor.close();
    }
  }

  private com.antivirus.ui.callmessagefilter.b.d a()
  {
    com.antivirus.ui.callmessagefilter.b.d locald;
    if (this.a.isChecked())
      locald = com.antivirus.ui.callmessagefilter.b.d.e;
    while (true)
    {
      return locald;
      if (this.b.isChecked())
        locald = com.antivirus.ui.callmessagefilter.b.d.c;
      else
        locald = com.antivirus.ui.callmessagefilter.b.d.a;
    }
  }

  private void a(Context paramContext, com.antivirus.ui.callmessagefilter.b.d paramd)
  {
    if ((!com.antivirus.ui.callmessagefilter.b.d.a.equals(paramd)) && (!this.k.n()))
    {
      this.k.c(true);
      c.i(true);
      com.avg.toolkit.c.a.a(paramContext, "protection", "scan_sms", "on", 0);
      AVService.a(paramContext, 2000, 6, null);
    }
  }

  private void a(View paramView, String paramString, int paramInt)
  {
    ((TextView)paramView.findViewById(2131230857)).setText(paramString);
    ((ImageView)paramView.findViewById(2131230856)).setImageResource(paramInt);
  }

  private void a(d paramd, Context paramContext, v paramv)
  {
    com.antivirus.ui.callmessagefilter.b.d locald = a();
    com.antivirus.ui.callmessagefilter.a.d locald1 = b();
    boolean bool = locald1.equals(com.antivirus.ui.callmessagefilter.a.d.e);
    String str = null;
    if (bool)
    {
      str = this.g.getText().toString();
      if (this.h.isChecked())
      {
        com.avg.toolkit.c.a.a(paramContext, "call_message_blocker", "call_message_blocker_default_sms_set", null, 0);
        c.i(this.g.getText().toString());
      }
    }
    a(paramd, paramv, locald, locald1, str);
    new Thread(new n(this, paramContext, paramd, locald, locald1, str)).start();
    a(paramContext, locald);
  }

  private com.antivirus.ui.callmessagefilter.a.d b()
  {
    com.antivirus.ui.callmessagefilter.a.d locald;
    if (this.d.isChecked())
      locald = com.antivirus.ui.callmessagefilter.a.d.c;
    while (true)
    {
      return locald;
      if (this.e.isChecked())
        locald = com.antivirus.ui.callmessagefilter.a.d.d;
      else if (this.f.isChecked())
        locald = com.antivirus.ui.callmessagefilter.a.d.e;
      else
        locald = com.antivirus.ui.callmessagefilter.a.d.a;
    }
  }

  public void a(Context paramContext, d paramd, com.antivirus.ui.callmessagefilter.contacts.a parama, v paramv)
  {
    this.j = paramContext;
    this.k = new b(paramContext);
    this.i = LayoutInflater.from(paramContext).inflate(2130903060, null);
    View localView1 = this.i.findViewById(2131230845);
    a(localView1, paramContext.getString(2131296743), 2130837713);
    this.a = ((CheckBox)localView1.findViewById(2131230858));
    this.a.setChecked(com.antivirus.ui.callmessagefilter.b.d.e.equals(parama.a()));
    View localView2 = this.i.findViewById(2131230846);
    a(localView2, paramContext.getString(2131296744), 2130837703);
    this.b = ((CheckBox)localView2.findViewById(2131230858));
    this.b.setChecked(com.antivirus.ui.callmessagefilter.b.d.c.equals(parama.a()));
    View localView3 = this.i.findViewById(2131230847);
    a(localView3, paramContext.getString(2131296745), 2130837706);
    this.c = ((CheckBox)localView3.findViewById(2131230858));
    CheckBox localCheckBox1 = this.a;
    CheckBox[] arrayOfCheckBox1 = new CheckBox[2];
    arrayOfCheckBox1[0] = this.b;
    arrayOfCheckBox1[1] = this.c;
    localCheckBox1.setOnCheckedChangeListener(new u(this, arrayOfCheckBox1));
    CheckBox localCheckBox2 = this.b;
    CheckBox[] arrayOfCheckBox2 = new CheckBox[1];
    arrayOfCheckBox2[0] = this.a;
    localCheckBox2.setOnCheckedChangeListener(new p(this, arrayOfCheckBox2));
    View localView4 = this.i.findViewById(2131230850);
    a(localView4, paramContext.getString(2131296746), 2130837711);
    this.d = ((CheckBox)localView4.findViewById(2131230858));
    this.d.setChecked(com.antivirus.ui.callmessagefilter.a.d.c.equals(parama.b()));
    View localView5 = this.i.findViewById(2131230851);
    a(localView5, paramContext.getString(2131296747), 2130837709);
    this.e = ((CheckBox)localView5.findViewById(2131230858));
    this.e.setChecked(com.antivirus.ui.callmessagefilter.a.d.d.equals(parama.b()));
    View localView6 = this.i.findViewById(2131230852);
    a(localView6, paramContext.getString(2131296748), 2130837710);
    this.f = ((CheckBox)localView6.findViewById(2131230858));
    this.f.setChecked(com.antivirus.ui.callmessagefilter.a.d.e.equals(parama.b()));
    CheckBox localCheckBox3 = this.d;
    CheckBox[] arrayOfCheckBox3 = new CheckBox[3];
    arrayOfCheckBox3[0] = this.d;
    arrayOfCheckBox3[1] = this.f;
    arrayOfCheckBox3[2] = this.e;
    localCheckBox3.setOnCheckedChangeListener(new q(this, "call_message_blocker_silent_mode", arrayOfCheckBox3));
    CheckBox localCheckBox4 = this.e;
    CheckBox[] arrayOfCheckBox4 = new CheckBox[3];
    arrayOfCheckBox4[0] = this.d;
    arrayOfCheckBox4[1] = this.f;
    arrayOfCheckBox4[2] = this.e;
    localCheckBox4.setOnCheckedChangeListener(new q(this, "call_message_blocker_rejected", arrayOfCheckBox4));
    this.g = ((EditText)this.i.findViewById(2131230854));
    String str = parama.c();
    if (str == null)
      str = c.u();
    if (str == null)
      str = paramContext.getString(2131296763);
    View localView7 = this.i.findViewById(2131230853);
    int m;
    if (this.f.isChecked())
      m = 0;
    while (true)
    {
      localView7.setVisibility(m);
      this.g.setText(str);
      CheckBox localCheckBox5 = this.f;
      CheckBox[] arrayOfCheckBox5 = new CheckBox[2];
      arrayOfCheckBox5[0] = this.e;
      arrayOfCheckBox5[1] = this.d;
      localCheckBox5.setOnCheckedChangeListener(new o(this, localView7, arrayOfCheckBox5));
      this.h = ((CheckBox)this.i.findViewById(2131230855));
      this.i.findViewById(2131230847).setVisibility(8);
      AlertDialog.Builder localBuilder = new AlertDialog.Builder(paramContext);
      localBuilder.setTitle(paramd.a());
      Bitmap localBitmap = a(paramContext, paramd.g());
      if (localBitmap != null);
      try
      {
        localBuilder.setIcon(new BitmapDrawable(localBitmap));
        while (true)
        {
          localBuilder.setView(this.i);
          localBuilder.setPositiveButton(2131296269, new k(this, paramd, paramContext, paramv));
          localBuilder.setNegativeButton(2131296270, new l(this));
          AlertDialog localAlertDialog = localBuilder.create();
          localAlertDialog.setCanceledOnTouchOutside(false);
          localAlertDialog.getWindow().setSoftInputMode(18);
          localAlertDialog.show();
          Button localButton = localAlertDialog.getButton(-1);
          this.g.addTextChangedListener(new m(this, localButton));
          return;
          m = 8;
          break;
          localBuilder.setIcon(2130837717);
        }
      }
      catch (Exception localException)
      {
        while (true)
          localBuilder.setIcon(2130837717);
      }
    }
  }

  protected void a(d paramd, v paramv, com.antivirus.ui.callmessagefilter.b.d paramd1, com.antivirus.ui.callmessagefilter.a.d paramd2, String paramString)
  {
    if (paramv != null)
    {
      paramv.a(paramd2, paramd);
      paramv.a(paramd1, paramd);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.ui.callmessagefilter.j
 * JD-Core Version:    0.6.2
 */
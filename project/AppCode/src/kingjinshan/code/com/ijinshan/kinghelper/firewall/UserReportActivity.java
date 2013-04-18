package com.ijinshan.kinghelper.firewall;

import android.content.Intent;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.Spinner;
import android.widget.Toast;
import com.ijinshan.kinghelper.a.j;
import com.ijinshan.kinghelper.firewall.a.e;
import com.ijinshan.kinghelper.firewall.core.i;
import com.keniu.security.main.BaseTitleActivity;

public class UserReportActivity extends BaseTitleActivity
  implements View.OnClickListener
{
  private static final int a = 2;
  private static final int b = 3;
  private static final boolean c = false;
  private static final String d = "UserReportActivity";
  private static final String e = "UserReportActivity_PhoneNumber";
  private static final String f = "UserReportActivity_reason";
  private static final String g = "UserReportActivity_des";
  private EditText h;
  private EditText i;
  private Spinner j;
  private CheckBox k;

  private boolean a()
  {
    Editable localEditable1 = this.h.getText();
    if (TextUtils.isEmpty(localEditable1))
    {
      this.h.requestFocus();
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = getString(2131427578);
      Toast.makeText(this, getString(2131427546, arrayOfObject2), 0).show();
    }
    String str1;
    for (boolean bool = false; ; bool = false)
    {
      return bool;
      str1 = localEditable1.toString();
      if (str1.matches("\\d+"))
        break;
      this.h.requestFocus();
      Object[] arrayOfObject1 = new Object[1];
      arrayOfObject1[0] = getString(2131427578);
      Toast.makeText(this, getString(2131427547, arrayOfObject1), 0).show();
    }
    Editable localEditable2 = this.i.getText();
    String str2;
    if (localEditable2 != null)
    {
      str2 = localEditable2.toString();
      label139: i.b(this, str1, null, 6, str2);
      if (this.k.isChecked())
      {
        e.a(this);
        if ((!e.a(str1, 2)) && (!e.a(str1, 1)))
          e.a(2, str1, "", 1);
      }
      if (!j.c(this))
        break label218;
      Toast.makeText(this, 2131427632, 0).show();
    }
    while (true)
    {
      bool = true;
      break;
      str2 = "";
      break label139;
      label218: Toast.makeText(this, 2131427633, 0).show();
    }
  }

  // ERROR //
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    // Byte code:
    //   0: iload_1
    //   1: iconst_2
    //   2: if_icmpne +113 -> 115
    //   5: iload_2
    //   6: iconst_m1
    //   7: if_icmpne +108 -> 115
    //   10: aload_3
    //   11: ifnull +104 -> 115
    //   14: aload_3
    //   15: invokevirtual 134	android/content/Intent:getData	()Landroid/net/Uri;
    //   18: astore 10
    //   20: aload 10
    //   22: ifnull +72 -> 94
    //   25: aload_0
    //   26: invokevirtual 138	com/ijinshan/kinghelper/firewall/UserReportActivity:getContentResolver	()Landroid/content/ContentResolver;
    //   29: aload 10
    //   31: aconst_null
    //   32: aconst_null
    //   33: aconst_null
    //   34: aconst_null
    //   35: invokevirtual 144	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   38: astore 13
    //   40: aload 13
    //   42: ifnull +40 -> 82
    //   45: aload 13
    //   47: invokeinterface 149 1 0
    //   52: ifeq +30 -> 82
    //   55: aload 13
    //   57: aload 13
    //   59: ldc 151
    //   61: invokeinterface 155 2 0
    //   66: invokeinterface 156 2 0
    //   71: astore 15
    //   73: aload_0
    //   74: getfield 41	com/ijinshan/kinghelper/firewall/UserReportActivity:h	Landroid/widget/EditText;
    //   77: aload 15
    //   79: invokevirtual 160	android/widget/EditText:setText	(Ljava/lang/CharSequence;)V
    //   82: aload 13
    //   84: ifnull +10 -> 94
    //   87: aload 13
    //   89: invokeinterface 163 1 0
    //   94: return
    //   95: astore 11
    //   97: aconst_null
    //   98: astore 12
    //   100: aload 12
    //   102: ifnull +10 -> 112
    //   105: aload 12
    //   107: invokeinterface 163 1 0
    //   112: aload 11
    //   114: athrow
    //   115: iload_1
    //   116: iconst_3
    //   117: if_icmpne -23 -> 94
    //   120: iload_2
    //   121: iconst_m1
    //   122: if_icmpne -28 -> 94
    //   125: aload_3
    //   126: ifnull -32 -> 94
    //   129: aload_3
    //   130: invokevirtual 134	android/content/Intent:getData	()Landroid/net/Uri;
    //   133: astore 4
    //   135: aload 4
    //   137: ifnull -43 -> 94
    //   140: aload_0
    //   141: invokevirtual 138	com/ijinshan/kinghelper/firewall/UserReportActivity:getContentResolver	()Landroid/content/ContentResolver;
    //   144: aload 4
    //   146: aconst_null
    //   147: aconst_null
    //   148: aconst_null
    //   149: aconst_null
    //   150: invokevirtual 144	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   153: astore 7
    //   155: aload 7
    //   157: ifnull +40 -> 197
    //   160: aload 7
    //   162: invokeinterface 149 1 0
    //   167: ifeq +30 -> 197
    //   170: aload 7
    //   172: aload 7
    //   174: ldc 165
    //   176: invokeinterface 155 2 0
    //   181: invokeinterface 156 2 0
    //   186: astore 9
    //   188: aload_0
    //   189: getfield 41	com/ijinshan/kinghelper/firewall/UserReportActivity:h	Landroid/widget/EditText;
    //   192: aload 9
    //   194: invokevirtual 160	android/widget/EditText:setText	(Ljava/lang/CharSequence;)V
    //   197: aload 7
    //   199: ifnull -105 -> 94
    //   202: aload 7
    //   204: invokeinterface 163 1 0
    //   209: goto -115 -> 94
    //   212: astore 5
    //   214: aconst_null
    //   215: astore 6
    //   217: aload 6
    //   219: ifnull +10 -> 229
    //   222: aload 6
    //   224: invokeinterface 163 1 0
    //   229: aload 5
    //   231: athrow
    //   232: astore 8
    //   234: aload 7
    //   236: astore 6
    //   238: aload 8
    //   240: astore 5
    //   242: goto -25 -> 217
    //   245: astore 14
    //   247: aload 13
    //   249: astore 12
    //   251: aload 14
    //   253: astore 11
    //   255: goto -155 -> 100
    //
    // Exception table:
    //   from	to	target	type
    //   25	40	95	finally
    //   140	155	212	finally
    //   160	197	232	finally
    //   45	82	245	finally
  }

  public void onClick(View paramView)
  {
    int m = paramView.getId();
    Editable localEditable1;
    int n;
    if (2131230756 == m)
    {
      localEditable1 = this.h.getText();
      if (TextUtils.isEmpty(localEditable1))
      {
        this.h.requestFocus();
        Object[] arrayOfObject2 = new Object[1];
        arrayOfObject2[0] = getString(2131427578);
        Toast.makeText(this, getString(2131427546, arrayOfObject2), 0).show();
        n = 0;
        if (n != 0)
        {
          Toast.makeText(this, 2131427632, 0).show();
          finish();
        }
      }
    }
    while (true)
    {
      return;
      String str1 = localEditable1.toString();
      if (!str1.matches("\\d+"))
      {
        this.h.requestFocus();
        Object[] arrayOfObject1 = new Object[1];
        arrayOfObject1[0] = getString(2131427578);
        Toast.makeText(this, getString(2131427547, arrayOfObject1), 0).show();
        n = 0;
        break;
      }
      Editable localEditable2 = this.i.getText();
      String str2;
      if (localEditable2 != null)
      {
        str2 = localEditable2.toString();
        label172: i.b(this, str1, null, 6, str2);
        if (this.k.isChecked())
        {
          e.a(this);
          if ((!e.a(str1, 2)) && (!e.a(str1, 1)))
            e.a(2, str1, "", 1);
        }
        if (!j.c(this))
          break label255;
        Toast.makeText(this, 2131427632, 0).show();
      }
      while (true)
      {
        n = 1;
        break;
        str2 = "";
        break label172;
        label255: Toast.makeText(this, 2131427633, 0).show();
      }
      if (2131230757 == m)
        finish();
    }
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.a(paramBundle, 2130903055, 2131427333);
    setResult(0);
    this.h = ((EditText)findViewById(2131230849));
    this.i = ((EditText)findViewById(2131230851));
    this.j = ((Spinner)findViewById(2131230850));
    this.k = ((CheckBox)findViewById(2131230852));
    String str1 = getIntent().getStringExtra("UserReportActivity_PhoneNumber");
    getIntent().getStringExtra("UserReportActivity_reason");
    String str2 = getIntent().getStringExtra("UserReportActivity_des");
    if (!TextUtils.isEmpty(str1))
      this.h.setText(str1);
    if (!TextUtils.isEmpty(str2))
      this.i.setText(str2);
    this.j.setSelection(0);
    findViewById(2131230756).setOnClickListener(this);
    findViewById(2131230757).setOnClickListener(this);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.firewall.UserReportActivity
 * JD-Core Version:    0.6.2
 */
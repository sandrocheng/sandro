package com.ijinshan.kinghelper.firewall;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnFocusChangeListener;
import android.widget.EditText;
import android.widget.Spinner;
import android.widget.TextView;
import android.widget.Toast;
import com.ijinshan.kinghelper.a.i;
import com.ijinshan.kinghelper.a.j;
import com.ijinshan.kinghelper.firewall.a.e;
import com.ijinshan.kinghelper.firewall.a.g;

public class UserWhiteBlackAddActivity extends Activity
  implements View.OnClickListener, View.OnFocusChangeListener
{
  public static final String a = "UserWhiteBlackAddActivity_rule";
  private static final int b = 1;
  private static final int c = 2;
  private static final int d = 3;
  private static final boolean e = false;
  private static final String f = "UserWhiteBlackAddActivity";
  private static final String g = "UserWhiteBlackAddActivity_PhoneNumber";
  private static final String h = "UserWhiteBlackAddActivity_Name";
  private static final String i = "UserWhiteBlackAddActivity_ApplyMode";
  private int j;
  private EditText k;
  private EditText l;
  private TextView m;
  private Spinner n;
  private TextView o;
  private g p;

  private boolean a()
  {
    boolean bool;
    if (TextUtils.isEmpty(this.k.getText()))
    {
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = getString(2131427578);
      Toast.makeText(this, getString(2131427546, arrayOfObject), 0).show();
      this.k.requestFocus();
      bool = false;
      return bool;
    }
    e.a(this);
    String str1 = i.a(this.k.getText().toString());
    if (this.p != null);
    for (long l1 = this.p.i; ; l1 = -1L)
    {
      if (!e.a(str1, 2, l1))
        break label145;
      Toast.makeText(this, getString(2131427548, new Object[] { str1 }), 0).show();
      this.k.requestFocus();
      bool = false;
      break;
    }
    label145: if (this.p != null);
    for (long l2 = this.p.i; ; l2 = -1L)
    {
      if (!e.a(str1, 1, l2))
        break label216;
      Toast.makeText(this, getString(2131427549, new Object[] { str1 }), 0).show();
      this.k.requestFocus();
      bool = false;
      break;
    }
    label216: Editable localEditable = this.l.getText();
    String str2;
    label237: String str3;
    int i1;
    if (localEditable != null)
    {
      str2 = localEditable.toString();
      str3 = this.n.getSelectedItem().toString();
      if (!TextUtils.equals(str3, getString(2131427525)))
        break label364;
      i1 = 1;
    }
    while (true)
    {
      label266: long l3;
      if (this.p == null)
      {
        l3 = e.a(this.j, str1, str2, i1);
        label287: Intent localIntent = getIntent();
        localIntent.putExtra("UserWhiteBlackAddActivity_PhoneNumber", str1);
        localIntent.putExtra("UserWhiteBlackAddActivity_Name", localEditable);
        localIntent.putExtra("UserWhiteBlackAddActivity_ApplyMode", i1);
        if (l3 <= 0L)
          break label429;
        setResult(-1, getIntent());
      }
      while (true)
      {
        if (l3 <= 0L)
          break label446;
        bool = true;
        break;
        str2 = j.a(this, i.a(str1));
        break label237;
        label364: if (TextUtils.equals(str3, getString(2131427526)))
        {
          i1 = 2;
          break label266;
        }
        if (!TextUtils.equals(str3, getString(2131427527)))
          break label452;
        i1 = 3;
        break label266;
        l3 = e.a(this.p.i, this.j, str1, str2, i1);
        break label287;
        label429: Toast.makeText(this, getString(2131428810), 0).show();
      }
      label446: bool = false;
      break;
      label452: i1 = 1;
    }
  }

  // ERROR //
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    // Byte code:
    //   0: iload_1
    //   1: iconst_1
    //   2: if_icmpne +209 -> 211
    //   5: iload_2
    //   6: iconst_m1
    //   7: if_icmpne +204 -> 211
    //   10: aload_3
    //   11: ifnull +200 -> 211
    //   14: aload_3
    //   15: invokevirtual 171	android/content/Intent:getData	()Landroid/net/Uri;
    //   18: astore 16
    //   20: aload 16
    //   22: ifnull +168 -> 190
    //   25: getstatic 176	android/os/Build$VERSION:SDK	Ljava/lang/String;
    //   28: invokestatic 182	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   31: pop
    //   32: aload_0
    //   33: invokevirtual 186	com/ijinshan/kinghelper/firewall/UserWhiteBlackAddActivity:getContentResolver	()Landroid/content/ContentResolver;
    //   36: aload 16
    //   38: aconst_null
    //   39: aconst_null
    //   40: aconst_null
    //   41: aconst_null
    //   42: invokevirtual 192	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   45: astore 20
    //   47: aload 20
    //   49: ifnull +129 -> 178
    //   52: aload 20
    //   54: invokeinterface 197 1 0
    //   59: ifeq +119 -> 178
    //   62: ldc 25
    //   64: aload 20
    //   66: invokestatic 203	android/database/DatabaseUtils:dumpCurrentRowToString	(Landroid/database/Cursor;)Ljava/lang/String;
    //   69: invokestatic 208	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   72: pop
    //   73: aload 20
    //   75: ldc 210
    //   77: invokeinterface 213 2 0
    //   82: istore 23
    //   84: aload 20
    //   86: ldc 215
    //   88: invokeinterface 213 2 0
    //   93: istore 24
    //   95: ldc 25
    //   97: new 217	java/lang/StringBuilder
    //   100: dup
    //   101: invokespecial 218	java/lang/StringBuilder:<init>	()V
    //   104: ldc 210
    //   106: invokevirtual 222	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   109: ldc 224
    //   111: invokevirtual 222	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   114: iload 23
    //   116: invokevirtual 227	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   119: ldc 229
    //   121: invokevirtual 222	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   124: ldc 215
    //   126: invokevirtual 222	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   129: ldc 224
    //   131: invokevirtual 222	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   134: iload 24
    //   136: invokevirtual 227	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   139: invokevirtual 230	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   142: invokestatic 208	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   145: pop
    //   146: aload_0
    //   147: getfield 52	com/ijinshan/kinghelper/firewall/UserWhiteBlackAddActivity:k	Landroid/widget/EditText;
    //   150: aload 20
    //   152: iload 23
    //   154: invokeinterface 231 2 0
    //   159: invokevirtual 235	android/widget/EditText:setText	(Ljava/lang/CharSequence;)V
    //   162: aload_0
    //   163: getfield 116	com/ijinshan/kinghelper/firewall/UserWhiteBlackAddActivity:l	Landroid/widget/EditText;
    //   166: aload 20
    //   168: iload 24
    //   170: invokeinterface 231 2 0
    //   175: invokevirtual 235	android/widget/EditText:setText	(Ljava/lang/CharSequence;)V
    //   178: aload 20
    //   180: ifnull +10 -> 190
    //   183: aload 20
    //   185: invokeinterface 238 1 0
    //   190: return
    //   191: astore 17
    //   193: aconst_null
    //   194: astore 18
    //   196: aload 18
    //   198: ifnull +10 -> 208
    //   201: aload 18
    //   203: invokeinterface 238 1 0
    //   208: aload 17
    //   210: athrow
    //   211: iload_1
    //   212: iconst_2
    //   213: if_icmpne +134 -> 347
    //   216: iload_2
    //   217: iconst_m1
    //   218: if_icmpne +129 -> 347
    //   221: aload_3
    //   222: ifnull +125 -> 347
    //   225: aload_3
    //   226: invokevirtual 171	android/content/Intent:getData	()Landroid/net/Uri;
    //   229: astore 10
    //   231: aload 10
    //   233: ifnull -43 -> 190
    //   236: aload_0
    //   237: invokevirtual 186	com/ijinshan/kinghelper/firewall/UserWhiteBlackAddActivity:getContentResolver	()Landroid/content/ContentResolver;
    //   240: aload 10
    //   242: aconst_null
    //   243: aconst_null
    //   244: aconst_null
    //   245: aconst_null
    //   246: invokevirtual 192	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   249: astore 13
    //   251: aload 13
    //   253: ifnull +59 -> 312
    //   256: aload 13
    //   258: invokeinterface 197 1 0
    //   263: ifeq +49 -> 312
    //   266: aload 13
    //   268: aload 13
    //   270: ldc 240
    //   272: invokeinterface 213 2 0
    //   277: invokeinterface 231 2 0
    //   282: astore 15
    //   284: aload_0
    //   285: getfield 52	com/ijinshan/kinghelper/firewall/UserWhiteBlackAddActivity:k	Landroid/widget/EditText;
    //   288: aload 15
    //   290: invokevirtual 235	android/widget/EditText:setText	(Ljava/lang/CharSequence;)V
    //   293: aload_0
    //   294: getfield 116	com/ijinshan/kinghelper/firewall/UserWhiteBlackAddActivity:l	Landroid/widget/EditText;
    //   297: aload_0
    //   298: invokevirtual 244	com/ijinshan/kinghelper/firewall/UserWhiteBlackAddActivity:getApplicationContext	()Landroid/content/Context;
    //   301: aload 15
    //   303: invokestatic 101	com/ijinshan/kinghelper/a/i:a	(Ljava/lang/String;)Ljava/lang/String;
    //   306: invokestatic 159	com/ijinshan/kinghelper/a/j:a	(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    //   309: invokevirtual 235	android/widget/EditText:setText	(Ljava/lang/CharSequence;)V
    //   312: aload 13
    //   314: ifnull -124 -> 190
    //   317: aload 13
    //   319: invokeinterface 238 1 0
    //   324: goto -134 -> 190
    //   327: astore 11
    //   329: aconst_null
    //   330: astore 12
    //   332: aload 12
    //   334: ifnull +10 -> 344
    //   337: aload 12
    //   339: invokeinterface 238 1 0
    //   344: aload 11
    //   346: athrow
    //   347: iload_1
    //   348: iconst_3
    //   349: if_icmpne -159 -> 190
    //   352: iload_2
    //   353: iconst_m1
    //   354: if_icmpne -164 -> 190
    //   357: aload_3
    //   358: ifnull -168 -> 190
    //   361: aload_3
    //   362: invokevirtual 171	android/content/Intent:getData	()Landroid/net/Uri;
    //   365: astore 4
    //   367: aload 4
    //   369: ifnull -179 -> 190
    //   372: aload_0
    //   373: invokevirtual 186	com/ijinshan/kinghelper/firewall/UserWhiteBlackAddActivity:getContentResolver	()Landroid/content/ContentResolver;
    //   376: aload 4
    //   378: aconst_null
    //   379: aconst_null
    //   380: aconst_null
    //   381: aconst_null
    //   382: invokevirtual 192	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   385: astore 7
    //   387: aload 7
    //   389: ifnull +59 -> 448
    //   392: aload 7
    //   394: invokeinterface 197 1 0
    //   399: ifeq +49 -> 448
    //   402: aload 7
    //   404: aload 7
    //   406: ldc 210
    //   408: invokeinterface 213 2 0
    //   413: invokeinterface 231 2 0
    //   418: astore 9
    //   420: aload_0
    //   421: getfield 52	com/ijinshan/kinghelper/firewall/UserWhiteBlackAddActivity:k	Landroid/widget/EditText;
    //   424: aload 9
    //   426: invokevirtual 235	android/widget/EditText:setText	(Ljava/lang/CharSequence;)V
    //   429: aload_0
    //   430: getfield 116	com/ijinshan/kinghelper/firewall/UserWhiteBlackAddActivity:l	Landroid/widget/EditText;
    //   433: aload_0
    //   434: invokevirtual 244	com/ijinshan/kinghelper/firewall/UserWhiteBlackAddActivity:getApplicationContext	()Landroid/content/Context;
    //   437: aload 9
    //   439: invokestatic 101	com/ijinshan/kinghelper/a/i:a	(Ljava/lang/String;)Ljava/lang/String;
    //   442: invokestatic 159	com/ijinshan/kinghelper/a/j:a	(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    //   445: invokevirtual 235	android/widget/EditText:setText	(Ljava/lang/CharSequence;)V
    //   448: aload 7
    //   450: ifnull -260 -> 190
    //   453: aload 7
    //   455: invokeinterface 238 1 0
    //   460: goto -270 -> 190
    //   463: astore 5
    //   465: aconst_null
    //   466: astore 6
    //   468: aload 6
    //   470: ifnull +10 -> 480
    //   473: aload 6
    //   475: invokeinterface 238 1 0
    //   480: aload 5
    //   482: athrow
    //   483: astore 8
    //   485: aload 7
    //   487: astore 6
    //   489: aload 8
    //   491: astore 5
    //   493: goto -25 -> 468
    //   496: astore 14
    //   498: aload 13
    //   500: astore 12
    //   502: aload 14
    //   504: astore 11
    //   506: goto -174 -> 332
    //   509: astore 21
    //   511: aload 20
    //   513: astore 18
    //   515: aload 21
    //   517: astore 17
    //   519: goto -323 -> 196
    //
    // Exception table:
    //   from	to	target	type
    //   25	47	191	finally
    //   236	251	327	finally
    //   372	387	463	finally
    //   392	448	483	finally
    //   256	312	496	finally
    //   52	178	509	finally
  }

  public void onClick(View paramView)
  {
    int i2;
    label83: String str1;
    label167: label235: Editable localEditable;
    String str2;
    label256: String str3;
    int i1;
    if (paramView.getId() == 2131230756)
    {
      if (TextUtils.isEmpty(this.k.getText()))
      {
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = getString(2131427578);
        Toast.makeText(this, getString(2131427546, arrayOfObject), 0).show();
        this.k.requestFocus();
        i2 = 0;
        if (i2 != 0)
        {
          setResult(-1, getIntent());
          finish();
        }
        return;
      }
      e.a(this);
      str1 = i.a(this.k.getText().toString());
      if (this.p != null);
      for (long l1 = this.p.i; ; l1 = -1L)
      {
        if (!e.a(str1, 2, l1))
          break label167;
        Toast.makeText(this, getString(2131427548, new Object[] { str1 }), 0).show();
        this.k.requestFocus();
        break;
      }
      if (this.p != null);
      for (long l2 = this.p.i; ; l2 = -1L)
      {
        if (!e.a(str1, 1, l2))
          break label235;
        Toast.makeText(this, getString(2131427549, new Object[] { str1 }), 0).show();
        this.k.requestFocus();
        break;
      }
      localEditable = this.l.getText();
      if (localEditable != null)
      {
        str2 = localEditable.toString();
        str3 = this.n.getSelectedItem().toString();
        if (!TextUtils.equals(str3, getString(2131427525)))
          break label383;
        i1 = 1;
      }
    }
    while (true)
    {
      label285: long l3;
      if (this.p == null)
      {
        l3 = e.a(this.j, str1, str2, i1);
        label306: Intent localIntent = getIntent();
        localIntent.putExtra("UserWhiteBlackAddActivity_PhoneNumber", str1);
        localIntent.putExtra("UserWhiteBlackAddActivity_Name", localEditable);
        localIntent.putExtra("UserWhiteBlackAddActivity_ApplyMode", i1);
        if (l3 <= 0L)
          break label448;
        setResult(-1, getIntent());
      }
      while (true)
      {
        if (l3 <= 0L)
          break label463;
        i2 = 1;
        break;
        str2 = j.a(this, i.a(str1));
        break label256;
        label383: if (TextUtils.equals(str3, getString(2131427526)))
        {
          i1 = 2;
          break label285;
        }
        if (!TextUtils.equals(str3, getString(2131427527)))
          break label482;
        i1 = 3;
        break label285;
        l3 = e.a(this.p.i, this.j, str1, str2, i1);
        break label306;
        label448: Toast.makeText(this, getString(2131428810), 0).show();
      }
      label463: break;
      if (paramView.getId() != 2131230757)
        break label83;
      finish();
      break label83;
      label482: i1 = 1;
    }
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    this.j = getIntent().getIntExtra("rule_type", 2);
    setResult(0);
    setContentView(2130903043);
    this.o = ((TextView)findViewById(2131230749));
    TextView localTextView = this.o;
    int i1;
    int i2;
    if (this.j == 2)
    {
      i1 = 2131427330;
      localTextView.setText(i1);
      this.k = ((EditText)findViewById(2131230752));
      this.k.setOnFocusChangeListener(this);
      this.l = ((EditText)findViewById(2131230753));
      this.l.setOnFocusChangeListener(this);
      this.m = ((TextView)findViewById(2131230754));
      this.n = ((Spinner)findViewById(2131230755));
      if (this.j != 2)
        break label329;
      i2 = 0;
      label159: this.m.setVisibility(i2);
      this.n.setVisibility(i2);
      findViewById(2131230756).setOnClickListener(this);
      findViewById(2131230757).setOnClickListener(this);
      this.p = ((g)getIntent().getSerializableExtra("UserWhiteBlackAddActivity_rule"));
      if (this.p == null)
        break label465;
      if (this.p.c != 1)
        break label336;
      this.o.setText(2131427332);
      label242: this.k.setText(this.p.f);
      if (!TextUtils.isEmpty(this.p.g))
        break label349;
      this.p.g = j.a(this, this.p.f);
      label287: this.l.setText(this.p.g);
      if (this.p.d != 1)
        break label410;
      this.n.setSelection(0);
    }
    while (true)
    {
      return;
      i1 = 2131427335;
      break;
      label329: i2 = 8;
      break label159;
      label336: this.o.setText(2131427331);
      break label242;
      label349: if ((!this.p.g.equals(this.p.h)) || (!this.p.g.equals(getString(2131427550))))
        break label287;
      this.p.g = j.a(this, this.p.f);
      break label287;
      label410: if (this.p.d == 2)
      {
        this.n.setSelection(1);
      }
      else if (this.p.d == 3)
      {
        this.n.setSelection(2);
      }
      else
      {
        this.n.setSelection(0);
        continue;
        label465: this.k.setText(null);
        this.l.setText(null);
      }
    }
  }

  public void onFocusChange(View paramView, boolean paramBoolean)
  {
    if (paramView.getId() == 2131230752)
      if (!paramBoolean)
      {
        Editable localEditable = this.k.getText();
        if (!TextUtils.isEmpty(localEditable))
        {
          String str = j.a(this, i.a(localEditable.toString()));
          if (!TextUtils.isEmpty(str))
            this.l.setText(str);
        }
      }
    while (true)
    {
      return;
      this.k.selectAll();
      continue;
      if ((paramView.getId() == 2131230753) && (paramBoolean))
        this.l.selectAll();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.firewall.UserWhiteBlackAddActivity
 * JD-Core Version:    0.6.2
 */
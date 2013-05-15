package com.avast.android.generic.app.account;

import android.content.Intent;
import android.os.AsyncTask;
import android.support.v4.app.FragmentActivity;
import android.widget.Toast;
import com.avast.android.generic.ad;
import com.avast.android.generic.t;
import com.avast.android.generic.util.m;
import com.avast.android.generic.util.s;
import com.avast.android.generic.z;

class at extends AsyncTask
{
  private com.avast.android.generic.ae b;
  private String c;
  private byte[] d;

  public at(DisconnectFragment paramDisconnectFragment, com.avast.android.generic.ae paramae)
  {
    this.b = paramae;
    this.c = paramae.x();
    this.d = paramae.y();
    DisconnectFragment.a(paramDisconnectFragment, this);
  }

  private void a()
  {
    m.b("breadcrumbs", "Sending avast! account disconnected broadcast.");
    Intent localIntent = new Intent("com.avast.android.mobilesecurity.app.account.ACCOUNT_DISCONNECTED");
    com.avast.android.generic.util.ae.a(localIntent);
    this.a.getActivity().sendBroadcast(localIntent, "com.avast.android.generic.COMM_PERMISSION");
  }

  // ERROR //
  protected Boolean a(String[] paramArrayOfString)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 16	com/avast/android/generic/app/account/at:a	Lcom/avast/android/generic/app/account/DisconnectFragment;
    //   4: invokevirtual 84	com/avast/android/generic/app/account/DisconnectFragment:isAdded	()Z
    //   7: ifne +12 -> 19
    //   10: iconst_0
    //   11: invokestatic 90	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   14: astore 9
    //   16: aload 9
    //   18: areturn
    //   19: aload_0
    //   20: getfield 16	com/avast/android/generic/app/account/at:a	Lcom/avast/android/generic/app/account/DisconnectFragment;
    //   23: invokevirtual 65	com/avast/android/generic/app/account/DisconnectFragment:getActivity	()Landroid/support/v4/app/FragmentActivity;
    //   26: invokestatic 93	com/avast/android/generic/app/account/DisconnectFragment:a	(Landroid/content/Context;)Ljava/lang/String;
    //   29: astore_2
    //   30: new 95	android/os/Bundle
    //   33: dup
    //   34: invokespecial 96	android/os/Bundle:<init>	()V
    //   37: astore_3
    //   38: aload_2
    //   39: invokestatic 102	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   42: ifne +10 -> 52
    //   45: aload_3
    //   46: ldc 104
    //   48: aload_2
    //   49: invokevirtual 108	android/os/Bundle:putString	(Ljava/lang/String;Ljava/lang/String;)V
    //   52: new 110	com/avast/android/generic/internet/c/c
    //   55: dup
    //   56: aload_0
    //   57: getfield 16	com/avast/android/generic/app/account/at:a	Lcom/avast/android/generic/app/account/DisconnectFragment;
    //   60: invokevirtual 65	com/avast/android/generic/app/account/DisconnectFragment:getActivity	()Landroid/support/v4/app/FragmentActivity;
    //   63: aload_3
    //   64: invokespecial 113	com/avast/android/generic/internet/c/c:<init>	(Landroid/content/Context;Landroid/os/Bundle;)V
    //   67: astore 4
    //   69: aload 4
    //   71: aload_0
    //   72: getfield 29	com/avast/android/generic/app/account/at:c	Ljava/lang/String;
    //   75: aload_0
    //   76: getfield 35	com/avast/android/generic/app/account/at:d	[B
    //   79: invokevirtual 116	com/avast/android/generic/internet/c/c:a	(Ljava/lang/String;[B)Z
    //   82: invokestatic 90	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   85: astore 16
    //   87: aload 16
    //   89: astore 9
    //   91: aload 4
    //   93: ifnull -77 -> 16
    //   96: aload 4
    //   98: invokevirtual 118	com/avast/android/generic/internet/c/c:a	()V
    //   101: goto -85 -> 16
    //   104: astore 5
    //   106: aconst_null
    //   107: astore 4
    //   109: ldc 42
    //   111: ldc 120
    //   113: aload 5
    //   115: invokestatic 123	com/avast/android/generic/util/m:c	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   118: pop
    //   119: iconst_1
    //   120: invokestatic 90	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   123: astore 8
    //   125: aload 8
    //   127: astore 9
    //   129: aload 4
    //   131: ifnull -115 -> 16
    //   134: aload 4
    //   136: invokevirtual 118	com/avast/android/generic/internet/c/c:a	()V
    //   139: goto -123 -> 16
    //   142: astore 10
    //   144: aconst_null
    //   145: astore 4
    //   147: ldc 42
    //   149: ldc 125
    //   151: aload 10
    //   153: invokestatic 123	com/avast/android/generic/util/m:c	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   156: pop
    //   157: iconst_1
    //   158: invokestatic 90	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   161: astore 12
    //   163: aload 12
    //   165: astore 9
    //   167: aload 4
    //   169: ifnull -153 -> 16
    //   172: aload 4
    //   174: invokevirtual 118	com/avast/android/generic/internet/c/c:a	()V
    //   177: goto -161 -> 16
    //   180: astore 13
    //   182: aconst_null
    //   183: astore 4
    //   185: ldc 42
    //   187: ldc 125
    //   189: aload 13
    //   191: invokestatic 123	com/avast/android/generic/util/m:c	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   194: pop
    //   195: iconst_1
    //   196: invokestatic 90	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   199: astore 15
    //   201: aload 15
    //   203: astore 9
    //   205: aload 4
    //   207: ifnull -191 -> 16
    //   210: aload 4
    //   212: invokevirtual 118	com/avast/android/generic/internet/c/c:a	()V
    //   215: goto -199 -> 16
    //   218: astore 6
    //   220: aconst_null
    //   221: astore 4
    //   223: aload 4
    //   225: ifnull +8 -> 233
    //   228: aload 4
    //   230: invokevirtual 118	com/avast/android/generic/internet/c/c:a	()V
    //   233: aload 6
    //   235: athrow
    //   236: astore 6
    //   238: goto -15 -> 223
    //   241: astore 13
    //   243: goto -58 -> 185
    //   246: astore 10
    //   248: goto -101 -> 147
    //   251: astore 5
    //   253: goto -144 -> 109
    //
    // Exception table:
    //   from	to	target	type
    //   52	69	104	java/lang/InstantiationException
    //   52	69	142	com/avast/android/generic/internet/c/g
    //   52	69	180	java/io/IOException
    //   52	69	218	finally
    //   69	87	236	finally
    //   109	125	236	finally
    //   147	163	236	finally
    //   185	201	236	finally
    //   69	87	241	java/io/IOException
    //   69	87	246	com/avast/android/generic/internet/c/g
    //   69	87	251	java/lang/InstantiationException
  }

  protected void a(Boolean paramBoolean)
  {
    if (paramBoolean.booleanValue())
    {
      m.b("breadcrumbs", "Successfully disconnected from the account.");
      this.b.v();
      ((s)ad.a(this.a.getActivity(), s.class)).a(t.q);
      a();
      Toast.makeText(this.a.getActivity(), z.P, 0).show();
      if (this.a.isAdded())
        DisconnectFragment.c(this.a);
    }
    while (true)
    {
      DisconnectFragment.d(this.a);
      return;
      m.b("breadcrumbs", "Disconnection from the account failed.");
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.app.account.at
 * JD-Core Version:    0.6.2
 */
package com.avast.android.generic.app.settings;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.os.Handler.Callback;
import android.support.v4.a.p;
import android.support.v4.app.DialogFragment;
import android.support.v4.app.FragmentActivity;
import android.widget.ListView;
import android.widget.SimpleAdapter;
import com.avast.android.generic.ad;
import com.avast.android.generic.t;
import com.avast.android.generic.ui.BaseActivity;
import com.avast.android.generic.ui.CustomNumberDialog;
import com.avast.android.generic.util.al;
import com.avast.android.generic.v;
import com.avast.android.generic.z;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class SetRecoveryNumberDialog extends DialogFragment
{
  private Handler.Callback a = new f(this);
  private ListView b;
  private Intent c;

  private void a()
  {
    CustomNumberDialog localCustomNumberDialog = new CustomNumberDialog();
    Bundle localBundle = new Bundle();
    localBundle.putBoolean("disable_wildcards", true);
    localCustomNumberDialog.setArguments(localBundle);
    localCustomNumberDialog.show(getFragmentManager(), "dialog_custom_number");
  }

  private void a(int paramInt)
  {
    switch (paramInt)
    {
    default:
    case 0:
    case 1:
    }
    while (true)
    {
      return;
      startActivityForResult(this.c, 0);
      continue;
      a();
    }
  }

  // ERROR //
  private void a(Intent paramIntent)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 63	com/avast/android/generic/app/settings/SetRecoveryNumberDialog:getActivity	()Landroid/support/v4/app/FragmentActivity;
    //   4: invokevirtual 69	android/support/v4/app/FragmentActivity:getContentResolver	()Landroid/content/ContentResolver;
    //   7: astore_2
    //   8: aload_2
    //   9: aload_1
    //   10: invokevirtual 75	android/content/Intent:getData	()Landroid/net/Uri;
    //   13: iconst_1
    //   14: anewarray 77	java/lang/String
    //   17: dup
    //   18: iconst_0
    //   19: ldc 79
    //   21: aastore
    //   22: aconst_null
    //   23: aconst_null
    //   24: aconst_null
    //   25: invokevirtual 85	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   28: astore 7
    //   30: aload 7
    //   32: astore 4
    //   34: aload 4
    //   36: ifnull +121 -> 157
    //   39: aload 4
    //   41: invokeinterface 91 1 0
    //   46: ifeq +111 -> 157
    //   49: aload_0
    //   50: aload 4
    //   52: aload 4
    //   54: ldc 79
    //   56: invokeinterface 95 2 0
    //   61: invokeinterface 99 2 0
    //   66: invokespecial 102	com/avast/android/generic/app/settings/SetRecoveryNumberDialog:a	(Ljava/lang/String;)V
    //   69: aload 4
    //   71: ifnull +10 -> 81
    //   74: aload 4
    //   76: invokeinterface 105 1 0
    //   81: return
    //   82: astore 5
    //   84: aconst_null
    //   85: astore 4
    //   87: new 107	java/lang/StringBuilder
    //   90: dup
    //   91: invokespecial 108	java/lang/StringBuilder:<init>	()V
    //   94: aload_0
    //   95: invokevirtual 114	java/lang/Object:getClass	()Ljava/lang/Class;
    //   98: invokevirtual 120	java/lang/Class:getSimpleName	()Ljava/lang/String;
    //   101: invokevirtual 124	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   104: ldc 126
    //   106: invokevirtual 124	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   109: invokevirtual 129	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   112: aload 5
    //   114: invokestatic 134	com/avast/android/generic/util/m:b	(Ljava/lang/String;Ljava/lang/Throwable;)I
    //   117: pop
    //   118: aload 4
    //   120: ifnull +10 -> 130
    //   123: aload 4
    //   125: invokeinterface 105 1 0
    //   130: aload_0
    //   131: ldc 136
    //   133: invokespecial 102	com/avast/android/generic/app/settings/SetRecoveryNumberDialog:a	(Ljava/lang/String;)V
    //   136: goto -55 -> 81
    //   139: astore_3
    //   140: aconst_null
    //   141: astore 4
    //   143: aload 4
    //   145: ifnull +10 -> 155
    //   148: aload 4
    //   150: invokeinterface 105 1 0
    //   155: aload_3
    //   156: athrow
    //   157: aload 4
    //   159: ifnull -29 -> 130
    //   162: goto -39 -> 123
    //   165: astore_3
    //   166: goto -23 -> 143
    //   169: astore 5
    //   171: goto -84 -> 87
    //
    // Exception table:
    //   from	to	target	type
    //   8	30	82	java/lang/Exception
    //   8	30	139	finally
    //   39	69	165	finally
    //   87	118	165	finally
    //   39	69	169	java/lang/Exception
  }

  private void a(String paramString)
  {
    Intent localIntent = new Intent("com.avast.android.generic.app.settings.ACTION_NUMBER_ENTERED");
    localIntent.putExtra("phone_number", paramString);
    p.a(getActivity()).a(localIntent);
  }

  private void b()
  {
    Intent localIntent = new Intent("com.avast.android.generic.app.settings.CLOSE_RECOVERY_DESCRIPTION");
    p.a(getActivity()).a(localIntent);
  }

  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    ((com.avast.android.generic.util.s)ad.a(getActivity(), com.avast.android.generic.util.s.class)).a(t.V, this.a);
  }

  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    ((BaseActivity)getActivity()).a(true);
    if ((paramInt2 == -1) && (paramIntent != null) && (paramInt1 == 0))
    {
      a(paramIntent);
      this.b.post(new k(this));
    }
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.c = new Intent("android.intent.action.GET_CONTENT");
    this.c.setType("vnd.android.cursor.item/phone_v2");
  }

  public Dialog onCreateDialog(Bundle paramBundle)
  {
    Context localContext = al.d(getActivity());
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(localContext);
    localBuilder.setTitle(getString(z.bK));
    ArrayList localArrayList = new ArrayList();
    if (getActivity().getPackageManager().queryIntentActivities(this.c, 65536).size() > 0);
    for (boolean bool = true; ; bool = false)
    {
      if (bool)
      {
        HashMap localHashMap1 = new HashMap();
        localHashMap1.put("name", getString(z.cl));
        localHashMap1.put("image", Integer.valueOf(com.avast.android.generic.s.f));
        localArrayList.add(localHashMap1);
      }
      HashMap localHashMap2 = new HashMap();
      localHashMap2.put("name", getString(z.br));
      localHashMap2.put("image", Integer.valueOf(com.avast.android.generic.s.h));
      localArrayList.add(localHashMap2);
      this.b = new ListView(localContext);
      int i = v.e;
      String[] arrayOfString = { "name", "image" };
      int[] arrayOfInt = new int[2];
      arrayOfInt[0] = t.N;
      arrayOfInt[1] = t.g;
      SimpleAdapter localSimpleAdapter = new SimpleAdapter(localContext, localArrayList, i, arrayOfString, arrayOfInt);
      this.b.setAdapter(localSimpleAdapter);
      this.b.setOnItemClickListener(new h(this, bool));
      localBuilder.setView(this.b);
      if (!getArguments().getBoolean("after_pin_setup", false))
      {
        localBuilder.setNeutralButton(z.e, new i(this));
        localBuilder.setNegativeButton(z.aD, new j(this));
      }
      AlertDialog localAlertDialog = localBuilder.create();
      localAlertDialog.setInverseBackgroundForced(true);
      return localAlertDialog;
    }
  }

  public void onDestroy()
  {
    super.onDestroy();
    ((com.avast.android.generic.util.s)ad.a(getActivity(), com.avast.android.generic.util.s.class)).b(t.V, this.a);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.app.settings.SetRecoveryNumberDialog
 * JD-Core Version:    0.6.2
 */
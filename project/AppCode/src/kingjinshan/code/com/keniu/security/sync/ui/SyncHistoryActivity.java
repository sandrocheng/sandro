package com.keniu.security.sync.ui;

import android.os.Bundle;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.ListView;
import android.widget.SimpleAdapter;
import android.widget.TextView;
import android.widget.Toast;
import com.ijinshan.kinghelper.a.j;
import com.keniu.security.main.BaseTitleActivity;
import com.keniu.security.sync.r;
import com.keniu.security.util.ap;
import com.keniu.security.util.aq;
import java.io.File;
import java.util.ArrayList;
import java.util.List;

public class SyncHistoryActivity extends BaseTitleActivity
{
  private static final String a = "VMAP_ITEM_TIME";
  private static final String b = "VMAP_ITEM_OPER";
  private Button c;
  private TextView d;
  private List e;
  private ListView f;
  private SimpleAdapter g;
  private View.OnClickListener h = new y(this);

  public static boolean a()
  {
    if (!new File(r.aB).exists());
    for (boolean bool = false; ; bool = true)
      return bool;
  }

  // ERROR //
  private void d()
  {
    // Byte code:
    //   0: invokestatic 54	com/ijinshan/kinghelper/a/j:b	()Z
    //   3: ifne +14 -> 17
    //   6: aload_0
    //   7: ldc 56
    //   9: iconst_0
    //   10: invokestatic 62	android/widget/Toast:makeText	(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    //   13: invokevirtual 65	android/widget/Toast:show	()V
    //   16: return
    //   17: new 37	java/io/File
    //   20: dup
    //   21: getstatic 42	com/keniu/security/sync/r:aB	Ljava/lang/String;
    //   24: invokespecial 45	java/io/File:<init>	(Ljava/lang/String;)V
    //   27: astore_1
    //   28: aload_1
    //   29: invokevirtual 48	java/io/File:exists	()Z
    //   32: ifeq -16 -> 16
    //   35: aconst_null
    //   36: astore_2
    //   37: new 67	java/io/BufferedReader
    //   40: dup
    //   41: new 69	java/io/FileReader
    //   44: dup
    //   45: aload_1
    //   46: invokespecial 72	java/io/FileReader:<init>	(Ljava/io/File;)V
    //   49: invokespecial 75	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   52: astore_3
    //   53: aload_3
    //   54: invokevirtual 79	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   57: astore 10
    //   59: aload 10
    //   61: ifnull +102 -> 163
    //   64: aload 10
    //   66: ldc 81
    //   68: invokevirtual 87	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   71: astore 12
    //   73: aload 12
    //   75: arraylength
    //   76: iconst_2
    //   77: if_icmplt -24 -> 53
    //   80: new 89	java/util/HashMap
    //   83: dup
    //   84: invokespecial 90	java/util/HashMap:<init>	()V
    //   87: astore 13
    //   89: aload 13
    //   91: ldc 8
    //   93: aload 12
    //   95: iconst_0
    //   96: aaload
    //   97: invokevirtual 94	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   100: pop
    //   101: aload 13
    //   103: ldc 11
    //   105: aload 12
    //   107: iconst_1
    //   108: aaload
    //   109: invokevirtual 94	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   112: pop
    //   113: aload_0
    //   114: getfield 96	com/keniu/security/sync/ui/SyncHistoryActivity:e	Ljava/util/List;
    //   117: aload 13
    //   119: invokeinterface 102 2 0
    //   124: pop
    //   125: goto -72 -> 53
    //   128: astore 6
    //   130: aload_3
    //   131: astore 7
    //   133: aload_0
    //   134: new 104	com/keniu/security/sync/ui/z
    //   137: dup
    //   138: aload_0
    //   139: invokespecial 105	com/keniu/security/sync/ui/z:<init>	(Lcom/keniu/security/sync/ui/SyncHistoryActivity;)V
    //   142: invokevirtual 109	com/keniu/security/sync/ui/SyncHistoryActivity:runOnUiThread	(Ljava/lang/Runnable;)V
    //   145: aload 7
    //   147: ifnull -131 -> 16
    //   150: aload 7
    //   152: invokevirtual 112	java/io/BufferedReader:close	()V
    //   155: goto -139 -> 16
    //   158: astore 9
    //   160: goto -144 -> 16
    //   163: aload_3
    //   164: invokevirtual 112	java/io/BufferedReader:close	()V
    //   167: goto -151 -> 16
    //   170: astore 11
    //   172: goto -156 -> 16
    //   175: astore 4
    //   177: aload_2
    //   178: ifnull +7 -> 185
    //   181: aload_2
    //   182: invokevirtual 112	java/io/BufferedReader:close	()V
    //   185: aload 4
    //   187: athrow
    //   188: astore 5
    //   190: goto -5 -> 185
    //   193: astore 4
    //   195: aload_3
    //   196: astore_2
    //   197: goto -20 -> 177
    //   200: astore 8
    //   202: aload 7
    //   204: astore_2
    //   205: aload 8
    //   207: astore 4
    //   209: goto -32 -> 177
    //   212: astore 17
    //   214: aconst_null
    //   215: astore 7
    //   217: goto -84 -> 133
    //
    // Exception table:
    //   from	to	target	type
    //   53	125	128	java/lang/Exception
    //   150	155	158	java/lang/Exception
    //   163	167	170	java/lang/Exception
    //   37	53	175	finally
    //   181	185	188	java/lang/Exception
    //   53	125	193	finally
    //   133	145	200	finally
    //   37	53	212	java/lang/Exception
  }

  public final void b()
  {
    aq localaq = new aq(this, (byte)0);
    localaq.a(getString(2131428417));
    localaq.b(getString(2131429540));
    localaq.a(getString(2131427864), new aa(this));
    localaq.b(getString(2131428398), null);
    localaq.c().show();
  }

  public final void c()
  {
    if (!j.b())
      Toast.makeText(this, "SD卡没有准备好!", 0).show();
    while (true)
    {
      return;
      File localFile = new File(r.aB);
      if (localFile.exists())
      {
        localFile.delete();
        onStart();
      }
    }
  }

  public void onCreate(Bundle paramBundle)
  {
    super.a(paramBundle, 2130903177, 2131429506);
    this.c = ((Button)findViewById(2131231314));
    this.c.setOnClickListener(this.h);
    this.d = ((TextView)findViewById(2131231305));
    this.d.setVisibility(8);
    this.f = ((ListView)findViewById(2131231313));
  }

  public void onStart()
  {
    super.onStart();
    this.e = new ArrayList();
    d();
    if (this.e.isEmpty())
    {
      this.d.setVisibility(0);
      this.f.setVisibility(8);
      this.c.setEnabled(false);
    }
    while (true)
    {
      return;
      this.c.setEnabled(true);
      this.g = new SimpleAdapter(this, this.e, 2130903178, new String[] { "VMAP_ITEM_TIME", "VMAP_ITEM_OPER" }, new int[] { 2131231315, 2131231316 });
      this.f.setAdapter(this.g);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.ui.SyncHistoryActivity
 * JD-Core Version:    0.6.2
 */
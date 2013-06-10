package org.antivirus.ui.protection;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import java.io.File;
import java.util.LinkedList;
import org.antivirus.core.Logger;

final class l extends BaseAdapter
{
  private LayoutInflater b;
  private File[] c;
  private String d;
  private String e;

  public l(FileScannerActivity paramFileScannerActivity, Context paramContext)
  {
    this.b = LayoutInflater.from(paramContext);
  }

  private void a(File paramFile)
  {
    try
    {
      if (FileScannerActivity.h(this.a).contains(paramFile))
      {
        FileScannerActivity.h(this.a).remove(paramFile);
        FileScannerActivity.i(this.a);
      }
      else
      {
        FileScannerActivity.h(this.a).add(paramFile);
        FileScannerActivity.i(this.a);
      }
    }
    catch (Exception localException)
    {
    }
  }

  // ERROR //
  private File[] c(String paramString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: new 59	java/util/ArrayList
    //   5: dup
    //   6: invokespecial 60	java/util/ArrayList:<init>	()V
    //   9: astore_3
    //   10: aload_1
    //   11: ldc 62
    //   13: invokevirtual 67	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   16: ifeq +164 -> 180
    //   19: getstatic 73	android/provider/MediaStore$Audio$Media:EXTERNAL_CONTENT_URI	Landroid/net/Uri;
    //   22: astore 13
    //   24: aload_0
    //   25: getfield 17	org/antivirus/ui/protection/l:a	Lorg/antivirus/ui/protection/FileScannerActivity;
    //   28: invokevirtual 77	org/antivirus/ui/protection/FileScannerActivity:getContentResolver	()Landroid/content/ContentResolver;
    //   31: aload 13
    //   33: iconst_1
    //   34: anewarray 64	java/lang/String
    //   37: dup
    //   38: iconst_0
    //   39: ldc 79
    //   41: aastore
    //   42: aconst_null
    //   43: aconst_null
    //   44: aconst_null
    //   45: invokevirtual 85	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   48: astore 19
    //   50: aload 19
    //   52: astore 15
    //   54: aload 15
    //   56: invokeinterface 91 1 0
    //   61: ifeq +59 -> 120
    //   64: aload_3
    //   65: new 93	java/io/File
    //   68: dup
    //   69: aload 15
    //   71: iconst_0
    //   72: invokeinterface 97 2 0
    //   77: invokespecial 100	java/io/File:<init>	(Ljava/lang/String;)V
    //   80: invokevirtual 101	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   83: pop
    //   84: goto -30 -> 54
    //   87: astore 21
    //   89: aload 15
    //   91: ifnull +10 -> 101
    //   94: aload 15
    //   96: invokeinterface 104 1 0
    //   101: aload_3
    //   102: invokevirtual 108	java/util/ArrayList:size	()I
    //   105: anewarray 93	java/io/File
    //   108: astore 9
    //   110: aload_3
    //   111: aload 9
    //   113: invokevirtual 112	java/util/ArrayList:toArray	([Ljava/lang/Object;)[Ljava/lang/Object;
    //   116: pop
    //   117: aload 9
    //   119: areturn
    //   120: aload 15
    //   122: ifnull -21 -> 101
    //   125: aload 15
    //   127: invokeinterface 104 1 0
    //   132: goto -31 -> 101
    //   135: astore 22
    //   137: aload 22
    //   139: invokestatic 118	org/antivirus/core/Logger:log	(Ljava/lang/Exception;)V
    //   142: goto -41 -> 101
    //   145: astore 16
    //   147: aload 16
    //   149: invokestatic 118	org/antivirus/core/Logger:log	(Ljava/lang/Exception;)V
    //   152: goto -51 -> 101
    //   155: astore 17
    //   157: aload_2
    //   158: ifnull +9 -> 167
    //   161: aload_2
    //   162: invokeinterface 104 1 0
    //   167: aload 17
    //   169: athrow
    //   170: astore 18
    //   172: aload 18
    //   174: invokestatic 118	org/antivirus/core/Logger:log	(Ljava/lang/Exception;)V
    //   177: goto -10 -> 167
    //   180: aload_1
    //   181: ldc 120
    //   183: invokevirtual 67	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   186: ifeq -85 -> 101
    //   189: getstatic 123	android/provider/MediaStore$Video$Media:EXTERNAL_CONTENT_URI	Landroid/net/Uri;
    //   192: astore 4
    //   194: aload_0
    //   195: getfield 17	org/antivirus/ui/protection/l:a	Lorg/antivirus/ui/protection/FileScannerActivity;
    //   198: invokevirtual 77	org/antivirus/ui/protection/FileScannerActivity:getContentResolver	()Landroid/content/ContentResolver;
    //   201: aload 4
    //   203: iconst_1
    //   204: anewarray 64	java/lang/String
    //   207: dup
    //   208: iconst_0
    //   209: ldc 79
    //   211: aastore
    //   212: aconst_null
    //   213: aconst_null
    //   214: aconst_null
    //   215: invokevirtual 85	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   218: astore_2
    //   219: aload_2
    //   220: invokeinterface 91 1 0
    //   225: ifeq +50 -> 275
    //   228: aload_3
    //   229: new 93	java/io/File
    //   232: dup
    //   233: aload_2
    //   234: iconst_0
    //   235: invokeinterface 97 2 0
    //   240: invokespecial 100	java/io/File:<init>	(Ljava/lang/String;)V
    //   243: invokevirtual 101	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   246: pop
    //   247: goto -28 -> 219
    //   250: astore 7
    //   252: aload_2
    //   253: ifnull -152 -> 101
    //   256: aload_2
    //   257: invokeinterface 104 1 0
    //   262: goto -161 -> 101
    //   265: astore 8
    //   267: aload 8
    //   269: invokestatic 118	org/antivirus/core/Logger:log	(Ljava/lang/Exception;)V
    //   272: goto -171 -> 101
    //   275: aload_2
    //   276: ifnull -175 -> 101
    //   279: aload_2
    //   280: invokeinterface 104 1 0
    //   285: goto -184 -> 101
    //   288: astore 11
    //   290: aload 11
    //   292: invokestatic 118	org/antivirus/core/Logger:log	(Ljava/lang/Exception;)V
    //   295: goto -194 -> 101
    //   298: astore 5
    //   300: aload_2
    //   301: ifnull +9 -> 310
    //   304: aload_2
    //   305: invokeinterface 104 1 0
    //   310: aload 5
    //   312: athrow
    //   313: astore 6
    //   315: aload 6
    //   317: invokestatic 118	org/antivirus/core/Logger:log	(Ljava/lang/Exception;)V
    //   320: goto -10 -> 310
    //   323: astore 20
    //   325: aload 15
    //   327: astore_2
    //   328: aload 20
    //   330: astore 17
    //   332: goto -175 -> 157
    //   335: astore 14
    //   337: aconst_null
    //   338: astore 15
    //   340: goto -251 -> 89
    //
    // Exception table:
    //   from	to	target	type
    //   54	84	87	java/lang/Exception
    //   125	132	135	java/lang/Exception
    //   94	101	145	java/lang/Exception
    //   24	50	155	finally
    //   161	167	170	java/lang/Exception
    //   194	247	250	java/lang/Exception
    //   256	262	265	java/lang/Exception
    //   279	285	288	java/lang/Exception
    //   194	247	298	finally
    //   304	310	313	java/lang/Exception
    //   54	84	323	finally
    //   24	50	335	java/lang/Exception
  }

  public final void a(int paramInt)
  {
    boolean bool = this.e.equals(this.d);
    if ((paramInt == 0) && (!bool))
    {
      File localFile2 = new File(this.e).getParentFile();
      if (localFile2 != null)
        FileScannerActivity.a(this.a, localFile2.getAbsolutePath());
    }
    while (true)
    {
      notifyDataSetChanged();
      return;
      if (!bool)
        paramInt--;
      File localFile1 = this.c[paramInt];
      if (localFile1.isDirectory())
        FileScannerActivity.a(this.a, localFile1.getAbsolutePath());
      else
        a(localFile1);
    }
  }

  public final void a(String paramString)
  {
    this.d = paramString;
  }

  public final void b(String paramString)
  {
    this.e = paramString;
    if ((paramString.equals("/Music")) || (paramString.equals("/Video")))
      this.c = c(paramString);
    while (true)
    {
      notifyDataSetChanged();
      return;
      this.c = new File(paramString).listFiles(new m(this));
      if (this.c == null)
        this.c = new File[0];
    }
  }

  public final int getCount()
  {
    int i = 0;
    try
    {
      File[] arrayOfFile = this.c;
      i = 0;
      if (arrayOfFile == null)
      {
        i = 0;
      }
      else
      {
        boolean bool = this.e.equals(this.d);
        i = 0;
        if (bool)
        {
          i = this.c.length;
        }
        else
        {
          int j = this.c.length;
          i = j + 1;
        }
      }
    }
    catch (Exception localException)
    {
      Logger.log(localException);
    }
    return i;
  }

  public final Object getItem(int paramInt)
  {
    return this.c[paramInt];
  }

  public final long getItemId(int paramInt)
  {
    return paramInt;
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    o localo1;
    boolean bool;
    if (paramView == null)
    {
      paramView = this.b.inflate(2130903065, null);
      o localo2 = new o(this);
      localo2.a = ((TextView)paramView.findViewById(2131230803));
      localo2.c = ((ImageView)paramView.findViewById(2131230874));
      localo2.b = ((ImageView)paramView.findViewById(2131230875));
      localo2.b.setOnClickListener(new n(this));
      paramView.setTag(localo2);
      localo1 = localo2;
      bool = this.e.equals(this.d);
      if ((paramInt != 0) || (bool))
        break label158;
      localo1.b.setVisibility(4);
      localo1.a.setText("..");
      localo1.c.setImageResource(2130837719);
    }
    while (true)
    {
      return paramView;
      localo1 = (o)paramView.getTag();
      break;
      label158: if (!bool)
        paramInt--;
      localo1.b.setVisibility(0);
      File localFile = this.c[paramInt];
      localo1.b.setTag(localFile);
      localo1.a.setText(localFile.getName());
      if (localFile.isDirectory())
        localo1.c.setImageResource(2130837719);
      while (true)
      {
        if (!FileScannerActivity.h(this.a).contains(localFile))
          break label265;
        localo1.b.setImageResource(2130837624);
        break;
        localo1.c.setImageResource(2130837701);
      }
      label265: localo1.b.setImageResource(2130837618);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.ui.protection.l
 * JD-Core Version:    0.6.2
 */
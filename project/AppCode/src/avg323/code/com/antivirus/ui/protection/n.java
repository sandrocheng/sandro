package com.antivirus.ui.protection;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import java.io.File;
import java.util.LinkedList;

class n extends BaseAdapter
{
  private LayoutInflater b;
  private File[] c;
  private String d;
  private String e;

  public n(a parama, Context paramContext)
  {
    this.b = LayoutInflater.from(paramContext);
  }

  private void a(File paramFile)
  {
    try
    {
      if (a.f(this.a).contains(paramFile))
      {
        a.f(this.a).remove(paramFile);
        a.g(this.a);
      }
      else
      {
        a.f(this.a).add(paramFile);
        a.g(this.a);
      }
    }
    catch (Exception localException)
    {
    }
  }

  private void b(File paramFile)
  {
    try
    {
      if (a.f(this.a).contains(paramFile))
      {
        a.f(this.a).remove(paramFile);
        a.g(this.a);
      }
      else
      {
        a.f(this.a).add(paramFile);
        a.g(this.a);
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
    //   2: new 61	java/util/ArrayList
    //   5: dup
    //   6: invokespecial 62	java/util/ArrayList:<init>	()V
    //   9: astore_3
    //   10: aload_1
    //   11: ldc 64
    //   13: invokevirtual 69	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   16: ifeq +167 -> 183
    //   19: getstatic 75	android/provider/MediaStore$Audio$Media:EXTERNAL_CONTENT_URI	Landroid/net/Uri;
    //   22: astore 13
    //   24: aload_0
    //   25: getfield 17	com/antivirus/ui/protection/n:a	Lcom/antivirus/ui/protection/a;
    //   28: invokestatic 79	com/antivirus/ui/protection/a:l	(Lcom/antivirus/ui/protection/a;)Lcom/avg/ui/general/a/a;
    //   31: invokevirtual 85	com/avg/ui/general/a/a:getContentResolver	()Landroid/content/ContentResolver;
    //   34: aload 13
    //   36: iconst_1
    //   37: anewarray 66	java/lang/String
    //   40: dup
    //   41: iconst_0
    //   42: ldc 87
    //   44: aastore
    //   45: aconst_null
    //   46: aconst_null
    //   47: aconst_null
    //   48: invokevirtual 93	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   51: astore 19
    //   53: aload 19
    //   55: astore 15
    //   57: aload 15
    //   59: invokeinterface 99 1 0
    //   64: ifeq +59 -> 123
    //   67: aload_3
    //   68: new 101	java/io/File
    //   71: dup
    //   72: aload 15
    //   74: iconst_0
    //   75: invokeinterface 105 2 0
    //   80: invokespecial 108	java/io/File:<init>	(Ljava/lang/String;)V
    //   83: invokevirtual 109	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   86: pop
    //   87: goto -30 -> 57
    //   90: astore 21
    //   92: aload 15
    //   94: ifnull +10 -> 104
    //   97: aload 15
    //   99: invokeinterface 112 1 0
    //   104: aload_3
    //   105: invokevirtual 116	java/util/ArrayList:size	()I
    //   108: anewarray 101	java/io/File
    //   111: astore 9
    //   113: aload_3
    //   114: aload 9
    //   116: invokevirtual 120	java/util/ArrayList:toArray	([Ljava/lang/Object;)[Ljava/lang/Object;
    //   119: pop
    //   120: aload 9
    //   122: areturn
    //   123: aload 15
    //   125: ifnull -21 -> 104
    //   128: aload 15
    //   130: invokeinterface 112 1 0
    //   135: goto -31 -> 104
    //   138: astore 22
    //   140: aload 22
    //   142: invokestatic 125	com/avg/toolkit/f/a:a	(Ljava/lang/Exception;)V
    //   145: goto -41 -> 104
    //   148: astore 16
    //   150: aload 16
    //   152: invokestatic 125	com/avg/toolkit/f/a:a	(Ljava/lang/Exception;)V
    //   155: goto -51 -> 104
    //   158: astore 17
    //   160: aload_2
    //   161: ifnull +9 -> 170
    //   164: aload_2
    //   165: invokeinterface 112 1 0
    //   170: aload 17
    //   172: athrow
    //   173: astore 18
    //   175: aload 18
    //   177: invokestatic 125	com/avg/toolkit/f/a:a	(Ljava/lang/Exception;)V
    //   180: goto -10 -> 170
    //   183: aload_1
    //   184: ldc 127
    //   186: invokevirtual 69	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   189: ifeq -85 -> 104
    //   192: getstatic 130	android/provider/MediaStore$Video$Media:EXTERNAL_CONTENT_URI	Landroid/net/Uri;
    //   195: astore 4
    //   197: aload_0
    //   198: getfield 17	com/antivirus/ui/protection/n:a	Lcom/antivirus/ui/protection/a;
    //   201: invokestatic 133	com/antivirus/ui/protection/a:m	(Lcom/antivirus/ui/protection/a;)Lcom/avg/ui/general/a/a;
    //   204: invokevirtual 85	com/avg/ui/general/a/a:getContentResolver	()Landroid/content/ContentResolver;
    //   207: aload 4
    //   209: iconst_1
    //   210: anewarray 66	java/lang/String
    //   213: dup
    //   214: iconst_0
    //   215: ldc 87
    //   217: aastore
    //   218: aconst_null
    //   219: aconst_null
    //   220: aconst_null
    //   221: invokevirtual 93	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   224: astore_2
    //   225: aload_2
    //   226: invokeinterface 99 1 0
    //   231: ifeq +50 -> 281
    //   234: aload_3
    //   235: new 101	java/io/File
    //   238: dup
    //   239: aload_2
    //   240: iconst_0
    //   241: invokeinterface 105 2 0
    //   246: invokespecial 108	java/io/File:<init>	(Ljava/lang/String;)V
    //   249: invokevirtual 109	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   252: pop
    //   253: goto -28 -> 225
    //   256: astore 7
    //   258: aload_2
    //   259: ifnull -155 -> 104
    //   262: aload_2
    //   263: invokeinterface 112 1 0
    //   268: goto -164 -> 104
    //   271: astore 8
    //   273: aload 8
    //   275: invokestatic 125	com/avg/toolkit/f/a:a	(Ljava/lang/Exception;)V
    //   278: goto -174 -> 104
    //   281: aload_2
    //   282: ifnull -178 -> 104
    //   285: aload_2
    //   286: invokeinterface 112 1 0
    //   291: goto -187 -> 104
    //   294: astore 11
    //   296: aload 11
    //   298: invokestatic 125	com/avg/toolkit/f/a:a	(Ljava/lang/Exception;)V
    //   301: goto -197 -> 104
    //   304: astore 5
    //   306: aload_2
    //   307: ifnull +9 -> 316
    //   310: aload_2
    //   311: invokeinterface 112 1 0
    //   316: aload 5
    //   318: athrow
    //   319: astore 6
    //   321: aload 6
    //   323: invokestatic 125	com/avg/toolkit/f/a:a	(Ljava/lang/Exception;)V
    //   326: goto -10 -> 316
    //   329: astore 20
    //   331: aload 15
    //   333: astore_2
    //   334: aload 20
    //   336: astore 17
    //   338: goto -178 -> 160
    //   341: astore 14
    //   343: aconst_null
    //   344: astore 15
    //   346: goto -254 -> 92
    //
    // Exception table:
    //   from	to	target	type
    //   57	87	90	java/lang/Exception
    //   128	135	138	java/lang/Exception
    //   97	104	148	java/lang/Exception
    //   24	53	158	finally
    //   164	170	173	java/lang/Exception
    //   197	253	256	java/lang/Exception
    //   262	268	271	java/lang/Exception
    //   285	291	294	java/lang/Exception
    //   197	253	304	finally
    //   310	316	319	java/lang/Exception
    //   57	87	329	finally
    //   24	53	341	java/lang/Exception
  }

  public void a(int paramInt)
  {
    boolean bool = this.e.equals(this.d);
    if ((paramInt == 0) && (!bool))
    {
      File localFile2 = new File(this.e).getParentFile();
      if (localFile2 != null)
        a.a(this.a, localFile2.getAbsolutePath());
    }
    while (true)
    {
      notifyDataSetChanged();
      return;
      if (!bool)
        paramInt--;
      File localFile1 = this.c[paramInt];
      if (localFile1.isDirectory())
        a.a(this.a, localFile1.getAbsolutePath());
      else
        b(localFile1);
    }
  }

  public void a(String paramString)
  {
    this.d = paramString;
  }

  public void b(String paramString)
  {
    this.e = paramString;
    if ((paramString.equals("/Music")) || (paramString.equals("/Video")))
      this.c = c(paramString);
    while (true)
    {
      notifyDataSetChanged();
      return;
      this.c = new File(paramString).listFiles(new o(this));
      if (this.c == null)
        this.c = new File[0];
    }
  }

  public int getCount()
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
      com.avg.toolkit.f.a.a(localException);
    }
    return i;
  }

  public Object getItem(int paramInt)
  {
    return this.c[paramInt];
  }

  public long getItemId(int paramInt)
  {
    return paramInt;
  }

  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    q localq1;
    boolean bool;
    if (paramView == null)
    {
      paramView = this.b.inflate(2130903078, null);
      q localq2 = new q(this);
      localq2.a = ((TextView)paramView.findViewById(2131230811));
      localq2.c = ((ImageView)paramView.findViewById(2131230924));
      localq2.b = ((ImageView)paramView.findViewById(2131230925));
      localq2.b.setOnClickListener(new p(this));
      paramView.setTag(localq2);
      localq1 = localq2;
      bool = this.e.equals(this.d);
      if ((paramInt != 0) || (bool))
        break label158;
      localq1.b.setVisibility(4);
      localq1.a.setText("..");
      localq1.c.setImageResource(2130837765);
    }
    while (true)
    {
      return paramView;
      localq1 = (q)paramView.getTag();
      break;
      label158: if (!bool)
        paramInt--;
      localq1.b.setVisibility(0);
      File localFile = this.c[paramInt];
      localq1.b.setTag(localFile);
      localq1.a.setText(localFile.getName());
      if (localFile.isDirectory())
        localq1.c.setImageResource(2130837765);
      while (true)
      {
        if (!a.f(this.a).contains(localFile))
          break label265;
        localq1.b.setImageResource(2130837648);
        break;
        localq1.c.setImageResource(2130837746);
      }
      label265: localq1.b.setImageResource(2130837642);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.ui.protection.n
 * JD-Core Version:    0.6.2
 */
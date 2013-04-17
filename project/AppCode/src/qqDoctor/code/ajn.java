import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory.Options;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import com.tencent.qqpimsecure.uilib.view.BaseView;
import java.util.List;

public final class ajn extends BaseAdapter
{
  private int a;
  private DisplayMetrics b;
  private LayoutInflater c;
  private Context d;
  private List<lj> e;
  private BaseView f;

  public ajn(Context paramContext, BaseView paramBaseView, List<lj> paramList, DisplayMetrics paramDisplayMetrics)
  {
    this.d = paramContext;
    this.f = paramBaseView;
    this.b = paramDisplayMetrics;
    this.e = paramList;
    this.c = LayoutInflater.from(paramContext);
  }

  private static int a(BitmapFactory.Options paramOptions, int paramInt1, int paramInt2)
  {
    double d1 = paramOptions.outWidth;
    double d2 = paramOptions.outHeight;
    int i = (int)Math.ceil(Math.sqrt(d1 * d2 / paramInt2));
    int j = (int)Math.min(Math.floor(d1 / paramInt1), Math.floor(d2 / paramInt1));
    if (j < i)
      j = i;
    if (j <= 8)
    {
      k = 1;
      while (k < j)
        k <<= 1;
    }
    int k = (j + 7) / 8 << 3;
    return k;
  }

  // ERROR //
  private Bitmap b(int paramInt)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 30	ajn:e	Ljava/util/List;
    //   4: iload_1
    //   5: invokeinterface 76 2 0
    //   10: checkcast 78	lj
    //   13: astore_2
    //   14: aconst_null
    //   15: astore_3
    //   16: aload_2
    //   17: ifnonnull +5 -> 22
    //   20: aload_3
    //   21: areturn
    //   22: aload_2
    //   23: invokevirtual 81	lj:b	()Ljava/lang/String;
    //   26: invokestatic 87	com/tencent/tmsecure/utils/StringUtil:assertNotNullString	(Ljava/lang/String;)Ljava/lang/String;
    //   29: astore 4
    //   31: aconst_null
    //   32: astore_3
    //   33: aload 4
    //   35: ifnull -15 -> 20
    //   38: new 89	java/io/File
    //   41: dup
    //   42: aload 4
    //   44: invokespecial 92	java/io/File:<init>	(Ljava/lang/String;)V
    //   47: invokevirtual 96	java/io/File:exists	()Z
    //   50: istore 5
    //   52: aconst_null
    //   53: astore_3
    //   54: iload 5
    //   56: ifeq -36 -> 20
    //   59: aload_2
    //   60: getfield 98	lj:c	I
    //   63: ifeq +55 -> 118
    //   66: new 100	java/lang/StringBuilder
    //   69: dup
    //   70: invokespecial 101	java/lang/StringBuilder:<init>	()V
    //   73: aload_2
    //   74: invokevirtual 81	lj:b	()Ljava/lang/String;
    //   77: invokevirtual 105	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   80: ldc 107
    //   82: invokevirtual 105	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   85: invokevirtual 110	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   88: astore 21
    //   90: new 89	java/io/File
    //   93: dup
    //   94: aload 21
    //   96: invokespecial 92	java/io/File:<init>	(Ljava/lang/String;)V
    //   99: invokevirtual 96	java/io/File:exists	()Z
    //   102: ifeq +335 -> 437
    //   105: aload 21
    //   107: invokestatic 115	gz:a	(Ljava/lang/String;)Landroid/graphics/Bitmap;
    //   110: astore 22
    //   112: aload 22
    //   114: astore_3
    //   115: goto -95 -> 20
    //   118: new 117	kr
    //   121: dup
    //   122: aload 4
    //   124: invokespecial 118	kr:<init>	(Ljava/lang/String;)V
    //   127: astore 6
    //   129: new 41	android/graphics/BitmapFactory$Options
    //   132: dup
    //   133: invokespecial 119	android/graphics/BitmapFactory$Options:<init>	()V
    //   136: astore 7
    //   138: aload 7
    //   140: iconst_1
    //   141: putfield 122	android/graphics/BitmapFactory$Options:inSampleSize	I
    //   144: aload 7
    //   146: iconst_1
    //   147: putfield 126	android/graphics/BitmapFactory$Options:inJustDecodeBounds	Z
    //   150: aload 6
    //   152: aconst_null
    //   153: aload 7
    //   155: invokestatic 132	android/graphics/BitmapFactory:decodeStream	(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    //   158: pop
    //   159: aload 7
    //   161: getfield 135	android/graphics/BitmapFactory$Options:mCancel	Z
    //   164: ifne +25 -> 189
    //   167: aload 7
    //   169: getfield 44	android/graphics/BitmapFactory$Options:outWidth	I
    //   172: iconst_m1
    //   173: if_icmpeq +16 -> 189
    //   176: aload 7
    //   178: getfield 47	android/graphics/BitmapFactory$Options:outHeight	I
    //   181: istore 14
    //   183: iload 14
    //   185: iconst_m1
    //   186: if_icmpne +25 -> 211
    //   189: aload 6
    //   191: invokevirtual 138	kr:close	()V
    //   194: aconst_null
    //   195: astore_3
    //   196: goto -176 -> 20
    //   199: astore 13
    //   201: aload 13
    //   203: invokevirtual 141	java/io/IOException:printStackTrace	()V
    //   206: aconst_null
    //   207: astore_3
    //   208: goto -188 -> 20
    //   211: aload_0
    //   212: getfield 28	ajn:b	Landroid/util/DisplayMetrics;
    //   215: getfield 146	android/util/DisplayMetrics:widthPixels	I
    //   218: aload_0
    //   219: getfield 28	ajn:b	Landroid/util/DisplayMetrics;
    //   222: getfield 149	android/util/DisplayMetrics:heightPixels	I
    //   225: imul
    //   226: istore 15
    //   228: aload 7
    //   230: aload 7
    //   232: aload_0
    //   233: getfield 28	ajn:b	Landroid/util/DisplayMetrics;
    //   236: getfield 146	android/util/DisplayMetrics:widthPixels	I
    //   239: aload_0
    //   240: getfield 28	ajn:b	Landroid/util/DisplayMetrics;
    //   243: getfield 149	android/util/DisplayMetrics:heightPixels	I
    //   246: invokestatic 152	java/lang/Math:min	(II)I
    //   249: iload 15
    //   251: invokestatic 154	ajn:a	(Landroid/graphics/BitmapFactory$Options;II)I
    //   254: putfield 122	android/graphics/BitmapFactory$Options:inSampleSize	I
    //   257: aload 7
    //   259: iconst_0
    //   260: putfield 126	android/graphics/BitmapFactory$Options:inJustDecodeBounds	Z
    //   263: aload 7
    //   265: iconst_1
    //   266: putfield 157	android/graphics/BitmapFactory$Options:inDither	Z
    //   269: aload 7
    //   271: iconst_1
    //   272: putfield 160	android/graphics/BitmapFactory$Options:inPurgeable	Z
    //   275: aload 7
    //   277: getstatic 166	android/graphics/Bitmap$Config:ARGB_8888	Landroid/graphics/Bitmap$Config;
    //   280: putfield 169	android/graphics/BitmapFactory$Options:inPreferredConfig	Landroid/graphics/Bitmap$Config;
    //   283: aload 6
    //   285: invokevirtual 172	kr:reset	()V
    //   288: aload 6
    //   290: aconst_null
    //   291: aload 7
    //   293: invokestatic 132	android/graphics/BitmapFactory:decodeStream	(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    //   296: astore 20
    //   298: aload 20
    //   300: astore_3
    //   301: aload 6
    //   303: invokevirtual 138	kr:close	()V
    //   306: goto -286 -> 20
    //   309: astore 18
    //   311: aload 18
    //   313: invokevirtual 141	java/io/IOException:printStackTrace	()V
    //   316: goto -296 -> 20
    //   319: astore 16
    //   321: aload 16
    //   323: invokevirtual 173	java/lang/OutOfMemoryError:printStackTrace	()V
    //   326: invokestatic 178	java/lang/System:gc	()V
    //   329: invokestatic 183	java/lang/Thread:yield	()V
    //   332: aload 6
    //   334: aconst_null
    //   335: aload 7
    //   337: invokestatic 132	android/graphics/BitmapFactory:decodeStream	(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    //   340: astore 19
    //   342: aload 19
    //   344: astore_3
    //   345: goto -44 -> 301
    //   348: astore 17
    //   350: aload 17
    //   352: invokevirtual 173	java/lang/OutOfMemoryError:printStackTrace	()V
    //   355: aconst_null
    //   356: astore_3
    //   357: goto -56 -> 301
    //   360: astore 10
    //   362: aload 10
    //   364: invokevirtual 184	java/lang/Exception:printStackTrace	()V
    //   367: aconst_null
    //   368: astore_3
    //   369: aload 6
    //   371: ifnull -351 -> 20
    //   374: aload 6
    //   376: invokevirtual 138	kr:close	()V
    //   379: aconst_null
    //   380: astore_3
    //   381: goto -361 -> 20
    //   384: astore 11
    //   386: aload 11
    //   388: invokevirtual 141	java/io/IOException:printStackTrace	()V
    //   391: aconst_null
    //   392: astore_3
    //   393: goto -373 -> 20
    //   396: astore 8
    //   398: aconst_null
    //   399: astore 6
    //   401: aload 6
    //   403: ifnull +8 -> 411
    //   406: aload 6
    //   408: invokevirtual 138	kr:close	()V
    //   411: aload 8
    //   413: athrow
    //   414: astore 9
    //   416: aload 9
    //   418: invokevirtual 141	java/io/IOException:printStackTrace	()V
    //   421: goto -10 -> 411
    //   424: astore 8
    //   426: goto -25 -> 401
    //   429: astore 10
    //   431: aconst_null
    //   432: astore 6
    //   434: goto -72 -> 362
    //   437: aconst_null
    //   438: astore 22
    //   440: goto -328 -> 112
    //
    // Exception table:
    //   from	to	target	type
    //   189	194	199	java/io/IOException
    //   301	306	309	java/io/IOException
    //   288	298	319	java/lang/OutOfMemoryError
    //   332	342	348	java/lang/OutOfMemoryError
    //   129	183	360	java/lang/Exception
    //   211	288	360	java/lang/Exception
    //   288	298	360	java/lang/Exception
    //   321	332	360	java/lang/Exception
    //   332	342	360	java/lang/Exception
    //   350	355	360	java/lang/Exception
    //   374	379	384	java/io/IOException
    //   118	129	396	finally
    //   406	411	414	java/io/IOException
    //   129	183	424	finally
    //   211	288	424	finally
    //   288	298	424	finally
    //   321	332	424	finally
    //   332	342	424	finally
    //   350	355	424	finally
    //   362	367	424	finally
    //   118	129	429	java/lang/Exception
  }

  public final int a()
  {
    return this.a;
  }

  public final void a(int paramInt)
  {
    this.a = paramInt;
  }

  public final int getCount()
  {
    if (this.e != null);
    for (int i = this.e.size(); ; i = 0)
      return i;
  }

  public final Object getItem(int paramInt)
  {
    this.a = paramInt;
    return Integer.valueOf(paramInt);
  }

  public final long getItemId(int paramInt)
  {
    this.a = paramInt;
    return paramInt;
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    this.a = paramInt;
    ajn.a locala;
    Bitmap localBitmap;
    if (paramView == null)
    {
      paramView = this.c.inflate(2130903090, paramViewGroup, false);
      locala = new ajn.a();
      locala.a = ((ImageView)paramView.findViewById(2131230849));
      paramView.setTag(locala);
      if (paramInt >= getCount())
        break label168;
      localObject = (Bitmap)((atn)this.f).a.get(paramInt);
      if (localObject == null)
      {
        localBitmap = b(paramInt);
        ((atn)this.f).a.set(paramInt, localBitmap);
      }
    }
    label168: for (Object localObject = localBitmap; ; localObject = null)
    {
      if (localObject != null)
        locala.a.setImageBitmap((Bitmap)localObject);
      while (true)
      {
        return paramView;
        locala = (ajn.a)paramView.getTag();
        break;
        locala.a.setImageDrawable(this.d.getResources().getDrawable(2130838112));
      }
    }
  }

  final class a
  {
    ImageView a;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     ajn
 * JD-Core Version:    0.6.2
 */
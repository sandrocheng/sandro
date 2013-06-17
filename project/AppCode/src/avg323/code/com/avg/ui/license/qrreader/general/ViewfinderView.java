package com.avg.ui.license.qrreader.general;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.View;
import com.avg.ui.general.b;
import com.avg.ui.license.qrreader.a.c;
import com.google.zxing.ResultPoint;
import java.util.ArrayList;
import java.util.List;

public final class ViewfinderView extends View
{
  private static final int[] a = { 0, 64, 128, 192, 255, 192, 128, 64 };
  private c b;
  private final Paint c = new Paint(1);
  private Bitmap d;
  private final int e;
  private final int f;
  private final int g;
  private final int h;
  private final int i;
  private int j;
  private List k;
  private List l;

  public ViewfinderView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    Resources localResources = getResources();
    this.e = localResources.getColor(b.viewfinder_mask);
    this.f = localResources.getColor(b.result_view);
    this.g = localResources.getColor(b.viewfinder_frame);
    this.h = localResources.getColor(b.viewfinder_laser);
    this.i = localResources.getColor(b.possible_result_points);
    this.j = 0;
    this.k = new ArrayList(5);
    this.l = null;
  }

  public void a()
  {
    Bitmap localBitmap = this.d;
    this.d = null;
    if (localBitmap != null)
      localBitmap.recycle();
    invalidate();
  }

  public void a(Bitmap paramBitmap)
  {
    this.d = paramBitmap;
    invalidate();
  }

  public void a(ResultPoint paramResultPoint)
  {
    synchronized (this.k)
    {
      ???.add(paramResultPoint);
      int m = ???.size();
      if (m > 20)
        ???.subList(0, m - 10).clear();
      return;
    }
  }

  // ERROR //
  public void onDraw(android.graphics.Canvas paramCanvas)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 116	com/avg/ui/license/qrreader/general/ViewfinderView:b	Lcom/avg/ui/license/qrreader/a/c;
    //   4: invokevirtual 121	com/avg/ui/license/qrreader/a/c:d	()Landroid/graphics/Rect;
    //   7: astore_2
    //   8: aload_2
    //   9: ifnonnull +4 -> 13
    //   12: return
    //   13: aload_1
    //   14: invokevirtual 126	android/graphics/Canvas:getWidth	()I
    //   17: istore_3
    //   18: aload_1
    //   19: invokevirtual 129	android/graphics/Canvas:getHeight	()I
    //   22: istore 4
    //   24: aload_0
    //   25: getfield 37	com/avg/ui/license/qrreader/general/ViewfinderView:c	Landroid/graphics/Paint;
    //   28: astore 5
    //   30: aload_0
    //   31: getfield 85	com/avg/ui/license/qrreader/general/ViewfinderView:d	Landroid/graphics/Bitmap;
    //   34: ifnull +143 -> 177
    //   37: aload_0
    //   38: getfield 59	com/avg/ui/license/qrreader/general/ViewfinderView:f	I
    //   41: istore 6
    //   43: aload 5
    //   45: iload 6
    //   47: invokevirtual 132	android/graphics/Paint:setColor	(I)V
    //   50: aload_1
    //   51: fconst_0
    //   52: fconst_0
    //   53: iload_3
    //   54: i2f
    //   55: aload_2
    //   56: getfield 137	android/graphics/Rect:top	I
    //   59: i2f
    //   60: aload_0
    //   61: getfield 37	com/avg/ui/license/qrreader/general/ViewfinderView:c	Landroid/graphics/Paint;
    //   64: invokevirtual 141	android/graphics/Canvas:drawRect	(FFFFLandroid/graphics/Paint;)V
    //   67: aload_1
    //   68: fconst_0
    //   69: aload_2
    //   70: getfield 137	android/graphics/Rect:top	I
    //   73: i2f
    //   74: aload_2
    //   75: getfield 144	android/graphics/Rect:left	I
    //   78: i2f
    //   79: iconst_1
    //   80: aload_2
    //   81: getfield 147	android/graphics/Rect:bottom	I
    //   84: iadd
    //   85: i2f
    //   86: aload_0
    //   87: getfield 37	com/avg/ui/license/qrreader/general/ViewfinderView:c	Landroid/graphics/Paint;
    //   90: invokevirtual 141	android/graphics/Canvas:drawRect	(FFFFLandroid/graphics/Paint;)V
    //   93: aload_1
    //   94: iconst_1
    //   95: aload_2
    //   96: getfield 150	android/graphics/Rect:right	I
    //   99: iadd
    //   100: i2f
    //   101: aload_2
    //   102: getfield 137	android/graphics/Rect:top	I
    //   105: i2f
    //   106: iload_3
    //   107: i2f
    //   108: iconst_1
    //   109: aload_2
    //   110: getfield 147	android/graphics/Rect:bottom	I
    //   113: iadd
    //   114: i2f
    //   115: aload_0
    //   116: getfield 37	com/avg/ui/license/qrreader/general/ViewfinderView:c	Landroid/graphics/Paint;
    //   119: invokevirtual 141	android/graphics/Canvas:drawRect	(FFFFLandroid/graphics/Paint;)V
    //   122: aload_1
    //   123: fconst_0
    //   124: iconst_1
    //   125: aload_2
    //   126: getfield 147	android/graphics/Rect:bottom	I
    //   129: iadd
    //   130: i2f
    //   131: iload_3
    //   132: i2f
    //   133: iload 4
    //   135: i2f
    //   136: aload_0
    //   137: getfield 37	com/avg/ui/license/qrreader/general/ViewfinderView:c	Landroid/graphics/Paint;
    //   140: invokevirtual 141	android/graphics/Canvas:drawRect	(FFFFLandroid/graphics/Paint;)V
    //   143: aload_0
    //   144: getfield 85	com/avg/ui/license/qrreader/general/ViewfinderView:d	Landroid/graphics/Bitmap;
    //   147: ifnull +39 -> 186
    //   150: aload_0
    //   151: getfield 37	com/avg/ui/license/qrreader/general/ViewfinderView:c	Landroid/graphics/Paint;
    //   154: sipush 160
    //   157: invokevirtual 153	android/graphics/Paint:setAlpha	(I)V
    //   160: aload_1
    //   161: aload_0
    //   162: getfield 85	com/avg/ui/license/qrreader/general/ViewfinderView:d	Landroid/graphics/Bitmap;
    //   165: aconst_null
    //   166: aload_2
    //   167: aload_0
    //   168: getfield 37	com/avg/ui/license/qrreader/general/ViewfinderView:c	Landroid/graphics/Paint;
    //   171: invokevirtual 157	android/graphics/Canvas:drawBitmap	(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    //   174: goto -162 -> 12
    //   177: aload_0
    //   178: getfield 54	com/avg/ui/license/qrreader/general/ViewfinderView:e	I
    //   181: istore 6
    //   183: goto -140 -> 43
    //   186: aload_0
    //   187: getfield 37	com/avg/ui/license/qrreader/general/ViewfinderView:c	Landroid/graphics/Paint;
    //   190: aload_0
    //   191: getfield 64	com/avg/ui/license/qrreader/general/ViewfinderView:g	I
    //   194: invokevirtual 132	android/graphics/Paint:setColor	(I)V
    //   197: aload_1
    //   198: aload_2
    //   199: getfield 144	android/graphics/Rect:left	I
    //   202: i2f
    //   203: aload_2
    //   204: getfield 137	android/graphics/Rect:top	I
    //   207: i2f
    //   208: iconst_1
    //   209: aload_2
    //   210: getfield 150	android/graphics/Rect:right	I
    //   213: iadd
    //   214: i2f
    //   215: iconst_2
    //   216: aload_2
    //   217: getfield 137	android/graphics/Rect:top	I
    //   220: iadd
    //   221: i2f
    //   222: aload_0
    //   223: getfield 37	com/avg/ui/license/qrreader/general/ViewfinderView:c	Landroid/graphics/Paint;
    //   226: invokevirtual 141	android/graphics/Canvas:drawRect	(FFFFLandroid/graphics/Paint;)V
    //   229: aload_1
    //   230: aload_2
    //   231: getfield 144	android/graphics/Rect:left	I
    //   234: i2f
    //   235: iconst_2
    //   236: aload_2
    //   237: getfield 137	android/graphics/Rect:top	I
    //   240: iadd
    //   241: i2f
    //   242: iconst_2
    //   243: aload_2
    //   244: getfield 144	android/graphics/Rect:left	I
    //   247: iadd
    //   248: i2f
    //   249: iconst_m1
    //   250: aload_2
    //   251: getfield 147	android/graphics/Rect:bottom	I
    //   254: iadd
    //   255: i2f
    //   256: aload_0
    //   257: getfield 37	com/avg/ui/license/qrreader/general/ViewfinderView:c	Landroid/graphics/Paint;
    //   260: invokevirtual 141	android/graphics/Canvas:drawRect	(FFFFLandroid/graphics/Paint;)V
    //   263: aload_1
    //   264: iconst_m1
    //   265: aload_2
    //   266: getfield 150	android/graphics/Rect:right	I
    //   269: iadd
    //   270: i2f
    //   271: aload_2
    //   272: getfield 137	android/graphics/Rect:top	I
    //   275: i2f
    //   276: iconst_1
    //   277: aload_2
    //   278: getfield 150	android/graphics/Rect:right	I
    //   281: iadd
    //   282: i2f
    //   283: iconst_m1
    //   284: aload_2
    //   285: getfield 147	android/graphics/Rect:bottom	I
    //   288: iadd
    //   289: i2f
    //   290: aload_0
    //   291: getfield 37	com/avg/ui/license/qrreader/general/ViewfinderView:c	Landroid/graphics/Paint;
    //   294: invokevirtual 141	android/graphics/Canvas:drawRect	(FFFFLandroid/graphics/Paint;)V
    //   297: aload_1
    //   298: aload_2
    //   299: getfield 144	android/graphics/Rect:left	I
    //   302: i2f
    //   303: iconst_m1
    //   304: aload_2
    //   305: getfield 147	android/graphics/Rect:bottom	I
    //   308: iadd
    //   309: i2f
    //   310: iconst_1
    //   311: aload_2
    //   312: getfield 150	android/graphics/Rect:right	I
    //   315: iadd
    //   316: i2f
    //   317: iconst_1
    //   318: aload_2
    //   319: getfield 147	android/graphics/Rect:bottom	I
    //   322: iadd
    //   323: i2f
    //   324: aload_0
    //   325: getfield 37	com/avg/ui/license/qrreader/general/ViewfinderView:c	Landroid/graphics/Paint;
    //   328: invokevirtual 141	android/graphics/Canvas:drawRect	(FFFFLandroid/graphics/Paint;)V
    //   331: aload_0
    //   332: getfield 37	com/avg/ui/license/qrreader/general/ViewfinderView:c	Landroid/graphics/Paint;
    //   335: aload_0
    //   336: getfield 69	com/avg/ui/license/qrreader/general/ViewfinderView:h	I
    //   339: invokevirtual 132	android/graphics/Paint:setColor	(I)V
    //   342: aload_0
    //   343: getfield 37	com/avg/ui/license/qrreader/general/ViewfinderView:c	Landroid/graphics/Paint;
    //   346: getstatic 26	com/avg/ui/license/qrreader/general/ViewfinderView:a	[I
    //   349: aload_0
    //   350: getfield 76	com/avg/ui/license/qrreader/general/ViewfinderView:j	I
    //   353: iaload
    //   354: invokevirtual 153	android/graphics/Paint:setAlpha	(I)V
    //   357: aload_0
    //   358: iconst_1
    //   359: aload_0
    //   360: getfield 76	com/avg/ui/license/qrreader/general/ViewfinderView:j	I
    //   363: iadd
    //   364: getstatic 26	com/avg/ui/license/qrreader/general/ViewfinderView:a	[I
    //   367: arraylength
    //   368: irem
    //   369: putfield 76	com/avg/ui/license/qrreader/general/ViewfinderView:j	I
    //   372: aload_2
    //   373: invokevirtual 160	android/graphics/Rect:height	()I
    //   376: iconst_2
    //   377: idiv
    //   378: aload_2
    //   379: getfield 137	android/graphics/Rect:top	I
    //   382: iadd
    //   383: istore 7
    //   385: aload_1
    //   386: iconst_2
    //   387: aload_2
    //   388: getfield 144	android/graphics/Rect:left	I
    //   391: iadd
    //   392: i2f
    //   393: iload 7
    //   395: iconst_1
    //   396: isub
    //   397: i2f
    //   398: iconst_m1
    //   399: aload_2
    //   400: getfield 150	android/graphics/Rect:right	I
    //   403: iadd
    //   404: i2f
    //   405: iload 7
    //   407: iconst_2
    //   408: iadd
    //   409: i2f
    //   410: aload_0
    //   411: getfield 37	com/avg/ui/license/qrreader/general/ViewfinderView:c	Landroid/graphics/Paint;
    //   414: invokevirtual 141	android/graphics/Canvas:drawRect	(FFFFLandroid/graphics/Paint;)V
    //   417: aload_0
    //   418: getfield 116	com/avg/ui/license/qrreader/general/ViewfinderView:b	Lcom/avg/ui/license/qrreader/a/c;
    //   421: invokevirtual 162	com/avg/ui/license/qrreader/a/c:e	()Landroid/graphics/Rect;
    //   424: astore 8
    //   426: aload_2
    //   427: invokevirtual 165	android/graphics/Rect:width	()I
    //   430: i2f
    //   431: aload 8
    //   433: invokevirtual 165	android/graphics/Rect:width	()I
    //   436: i2f
    //   437: fdiv
    //   438: fstore 9
    //   440: aload_2
    //   441: invokevirtual 160	android/graphics/Rect:height	()I
    //   444: i2f
    //   445: aload 8
    //   447: invokevirtual 160	android/graphics/Rect:height	()I
    //   450: i2f
    //   451: fdiv
    //   452: fstore 10
    //   454: aload_0
    //   455: getfield 81	com/avg/ui/license/qrreader/general/ViewfinderView:k	Ljava/util/List;
    //   458: astore 11
    //   460: aload_0
    //   461: getfield 83	com/avg/ui/license/qrreader/general/ViewfinderView:l	Ljava/util/List;
    //   464: astore 12
    //   466: aload_2
    //   467: getfield 144	android/graphics/Rect:left	I
    //   470: istore 13
    //   472: aload_2
    //   473: getfield 137	android/graphics/Rect:top	I
    //   476: istore 14
    //   478: aload 11
    //   480: invokeinterface 169 1 0
    //   485: ifeq +114 -> 599
    //   488: aload_0
    //   489: aconst_null
    //   490: putfield 83	com/avg/ui/license/qrreader/general/ViewfinderView:l	Ljava/util/List;
    //   493: aload 12
    //   495: ifnull +233 -> 728
    //   498: aload_0
    //   499: getfield 37	com/avg/ui/license/qrreader/general/ViewfinderView:c	Landroid/graphics/Paint;
    //   502: bipush 80
    //   504: invokevirtual 153	android/graphics/Paint:setAlpha	(I)V
    //   507: aload_0
    //   508: getfield 37	com/avg/ui/license/qrreader/general/ViewfinderView:c	Landroid/graphics/Paint;
    //   511: aload_0
    //   512: getfield 74	com/avg/ui/license/qrreader/general/ViewfinderView:i	I
    //   515: invokevirtual 132	android/graphics/Paint:setColor	(I)V
    //   518: aload 12
    //   520: monitorenter
    //   521: aload 12
    //   523: invokeinterface 173 1 0
    //   528: astore 18
    //   530: aload 18
    //   532: invokeinterface 178 1 0
    //   537: ifeq +188 -> 725
    //   540: aload 18
    //   542: invokeinterface 182 1 0
    //   547: checkcast 184	com/google/zxing/ResultPoint
    //   550: astore 19
    //   552: aload_1
    //   553: iload 13
    //   555: fload 9
    //   557: aload 19
    //   559: invokevirtual 188	com/google/zxing/ResultPoint:getX	()F
    //   562: fmul
    //   563: f2i
    //   564: iadd
    //   565: i2f
    //   566: iload 14
    //   568: fload 10
    //   570: aload 19
    //   572: invokevirtual 191	com/google/zxing/ResultPoint:getY	()F
    //   575: fmul
    //   576: f2i
    //   577: iadd
    //   578: i2f
    //   579: ldc 192
    //   581: aload_0
    //   582: getfield 37	com/avg/ui/license/qrreader/general/ViewfinderView:c	Landroid/graphics/Paint;
    //   585: invokevirtual 196	android/graphics/Canvas:drawCircle	(FFFLandroid/graphics/Paint;)V
    //   588: goto -58 -> 530
    //   591: astore 17
    //   593: aload 12
    //   595: monitorexit
    //   596: aload 17
    //   598: athrow
    //   599: aload_0
    //   600: new 78	java/util/ArrayList
    //   603: dup
    //   604: iconst_5
    //   605: invokespecial 79	java/util/ArrayList:<init>	(I)V
    //   608: putfield 81	com/avg/ui/license/qrreader/general/ViewfinderView:k	Ljava/util/List;
    //   611: aload_0
    //   612: aload 11
    //   614: putfield 83	com/avg/ui/license/qrreader/general/ViewfinderView:l	Ljava/util/List;
    //   617: aload_0
    //   618: getfield 37	com/avg/ui/license/qrreader/general/ViewfinderView:c	Landroid/graphics/Paint;
    //   621: sipush 160
    //   624: invokevirtual 153	android/graphics/Paint:setAlpha	(I)V
    //   627: aload_0
    //   628: getfield 37	com/avg/ui/license/qrreader/general/ViewfinderView:c	Landroid/graphics/Paint;
    //   631: aload_0
    //   632: getfield 74	com/avg/ui/license/qrreader/general/ViewfinderView:i	I
    //   635: invokevirtual 132	android/graphics/Paint:setColor	(I)V
    //   638: aload 11
    //   640: monitorenter
    //   641: aload 11
    //   643: invokeinterface 173 1 0
    //   648: astore 16
    //   650: aload 16
    //   652: invokeinterface 178 1 0
    //   657: ifeq +62 -> 719
    //   660: aload 16
    //   662: invokeinterface 182 1 0
    //   667: checkcast 184	com/google/zxing/ResultPoint
    //   670: astore 20
    //   672: aload_1
    //   673: iload 13
    //   675: fload 9
    //   677: aload 20
    //   679: invokevirtual 188	com/google/zxing/ResultPoint:getX	()F
    //   682: fmul
    //   683: f2i
    //   684: iadd
    //   685: i2f
    //   686: iload 14
    //   688: fload 10
    //   690: aload 20
    //   692: invokevirtual 191	com/google/zxing/ResultPoint:getY	()F
    //   695: fmul
    //   696: f2i
    //   697: iadd
    //   698: i2f
    //   699: ldc 197
    //   701: aload_0
    //   702: getfield 37	com/avg/ui/license/qrreader/general/ViewfinderView:c	Landroid/graphics/Paint;
    //   705: invokevirtual 196	android/graphics/Canvas:drawCircle	(FFFLandroid/graphics/Paint;)V
    //   708: goto -58 -> 650
    //   711: astore 15
    //   713: aload 11
    //   715: monitorexit
    //   716: aload 15
    //   718: athrow
    //   719: aload 11
    //   721: monitorexit
    //   722: goto -229 -> 493
    //   725: aload 12
    //   727: monitorexit
    //   728: aload_0
    //   729: ldc2_w 198
    //   732: bipush 250
    //   734: aload_2
    //   735: getfield 144	android/graphics/Rect:left	I
    //   738: iadd
    //   739: bipush 250
    //   741: aload_2
    //   742: getfield 137	android/graphics/Rect:top	I
    //   745: iadd
    //   746: bipush 6
    //   748: aload_2
    //   749: getfield 150	android/graphics/Rect:right	I
    //   752: iadd
    //   753: bipush 6
    //   755: aload_2
    //   756: getfield 147	android/graphics/Rect:bottom	I
    //   759: iadd
    //   760: invokevirtual 203	com/avg/ui/license/qrreader/general/ViewfinderView:postInvalidateDelayed	(JIIII)V
    //   763: goto -751 -> 12
    //
    // Exception table:
    //   from	to	target	type
    //   521	596	591	finally
    //   725	728	591	finally
    //   641	716	711	finally
    //   719	722	711	finally
  }

  public void setCameraManager(c paramc)
  {
    this.b = paramc;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.ui.license.qrreader.general.ViewfinderView
 * JD-Core Version:    0.6.2
 */
import android.content.ContentResolver;
import android.content.Context;
import android.database.ContentObserver;
import android.os.Handler;
import android.provider.Settings.System;
import com.tencent.powermanager.PowerManagerApplication;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;

public class cb
  implements ch.a
{
  private static cb a;
  private int b;
  private aq c;
  private boolean d = false;
  private boolean e = false;
  private boolean f = false;
  private cb.a g;
  private long h = 0L;
  private final String[] i = { "com.tencent.mtt", "com.tencent.qbx", "com.UCMobile", "com.oupeng.mini.android", "com.dolphin.browser.cn", "com.tiantianmini.android.browser", "com.uc.browser.hd", "com.opera.mini.kaiqi", "com.skyfire.browser", "org.mozilla.firefox", "bubei.tingshu", "com.appoffer.listen", "viva.reader", "com.onion.reader", "com.readermate", "com.ophone.reader.ui", "com.kingreader.framework.hd", "com.byread.reader", "com.adobe.reader", "com.lectek.android.sfreader", "com.newmbook.android", "com.MoScreen", "com.mbook.android", "com.snda.cloudary", "com.nxb.loveknowledge", "com.snda.cloudary", "cn.ibuka.manga.ui", "com.qq.ac.android", "com.wheatfieldstudio.tool.reader", "com.duoku.coolreader", "com.baidu.wenku", "com.cnepub.baselibrary.mylibrary.ui.android", "com.aldiko.android", "cn.htjyb.reader", "com.shuqi.cartoon.controller", "udk.android.reader", "com.dnal.reader", "one.hh.oneclient", "com.amazon.kindle", "com.sailang.yilin", "com.netease.newsreader.activity", "com.myzaker.ZAKER_Phone", "com.wumii.android", "com.ireadercity", "com.anyview", "com.chaozh.iReaderFree" };
  private Set<String> j = new HashSet();

  private cb()
  {
    this.j.addAll(Arrays.asList(this.i));
    this.c = aq.a();
  }

  public static cb a()
  {
    try
    {
      if (a == null)
        a = new cb();
      return a;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final void a(String paramString)
  {
    if (this.j.contains(paramString))
      if (!this.d)
      {
        this.d = true;
        this.h = System.currentTimeMillis();
        this.b = this.c.b();
        if ((this.b < 60000) && (this.b > 0))
        {
          long l = System.currentTimeMillis();
          if ((l - s.a.g().j() > 604800000L) || (l - s.a.g().j() < 0L))
          {
            ds.a().a(PowerManagerApplication.a().getString(2131099818));
            s.a.g().c(l);
            this.f = true;
          }
          this.c.a(60000);
        }
        this.e = false;
      }
    while (true)
    {
      return;
      if (this.d)
      {
        this.d = false;
        this.h = 0L;
        if (!this.e)
        {
          this.e = false;
          if (this.f)
            ds.a().a(PowerManagerApplication.a().getString(2131099819));
          this.c.a(this.b);
        }
        this.f = false;
      }
    }
  }

  public final void b()
  {
    if (this.g == null)
      this.g = new cb.a();
    PowerManagerApplication.a().getContentResolver().registerContentObserver(Settings.System.getUriFor("screen_off_timeout"), true, this.g);
  }

  public final void c()
  {
    if (this.g == null);
    while (true)
    {
      return;
      PowerManagerApplication.a().getContentResolver().registerContentObserver(Settings.System.getUriFor("screen_off_timeout"), true, this.g);
    }
  }

  final class a extends ContentObserver
  {
    public a()
    {
      super();
    }

    public final void onChange(boolean paramBoolean)
    {
      if ((cb.a(cb.this)) && (System.currentTimeMillis() - cb.b(cb.this) > 5000L))
        cb.c(cb.this);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     cb
 * JD-Core Version:    0.6.2
 */
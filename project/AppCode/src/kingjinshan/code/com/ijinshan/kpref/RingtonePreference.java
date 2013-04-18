package com.ijinshan.kpref;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.TypedArray;
import android.media.RingtoneManager;
import android.net.Uri;
import android.text.TextUtils;
import android.util.AttributeSet;
import com.android.internal.R.styleable;

public class RingtonePreference extends Preference
  implements v
{
  private static final String o = "RingtonePreference";
  private int p;
  private boolean q;
  private boolean r;
  private int s;

  private RingtonePreference(Context paramContext)
  {
    this(paramContext, null);
  }

  public RingtonePreference(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 16842899);
  }

  public RingtonePreference(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.RingtonePreference, paramInt, 0);
    this.p = localTypedArray.getInt(0, 1);
    this.q = localTypedArray.getBoolean(1, true);
    this.r = localTypedArray.getBoolean(2, true);
    localTypedArray.recycle();
  }

  private void a(int paramInt)
  {
    this.p = paramInt;
  }

  private void a(Uri paramUri)
  {
    if (paramUri != null);
    for (String str = paramUri.toString(); ; str = "")
    {
      f(str);
      return;
    }
  }

  private void a(boolean paramBoolean)
  {
    this.q = paramBoolean;
  }

  private int b()
  {
    return this.p;
  }

  private void b(Intent paramIntent)
  {
    String str = a(null);
    if (!TextUtils.isEmpty(str));
    for (Uri localUri = Uri.parse(str); ; localUri = null)
    {
      paramIntent.putExtra("android.intent.extra.ringtone.EXISTING_URI", localUri);
      paramIntent.putExtra("android.intent.extra.ringtone.SHOW_DEFAULT", this.q);
      if (this.q)
        paramIntent.putExtra("android.intent.extra.ringtone.DEFAULT_URI", RingtoneManager.getDefaultUri(this.p));
      paramIntent.putExtra("android.intent.extra.ringtone.SHOW_SILENT", this.r);
      paramIntent.putExtra("android.intent.extra.ringtone.TYPE", this.p);
      return;
    }
  }

  private boolean e()
  {
    return this.q;
  }

  private boolean f()
  {
    return this.r;
  }

  private Uri g()
  {
    String str = a(null);
    if (!TextUtils.isEmpty(str));
    for (Uri localUri = Uri.parse(str); ; localUri = null)
      return localUri;
  }

  private void g(boolean paramBoolean)
  {
    this.r = paramBoolean;
  }

  protected final void K_()
  {
    Intent localIntent = new Intent("android.intent.action.RINGTONE_PICKER");
    String str = a(null);
    if (!TextUtils.isEmpty(str));
    for (Uri localUri = Uri.parse(str); ; localUri = null)
    {
      localIntent.putExtra("android.intent.extra.ringtone.EXISTING_URI", localUri);
      localIntent.putExtra("android.intent.extra.ringtone.SHOW_DEFAULT", this.q);
      if (this.q)
        localIntent.putExtra("android.intent.extra.ringtone.DEFAULT_URI", RingtoneManager.getDefaultUri(this.p));
      localIntent.putExtra("android.intent.extra.ringtone.SHOW_SILENT", this.r);
      localIntent.putExtra("android.intent.extra.ringtone.TYPE", this.p);
      I().f().startActivityForResult(localIntent, this.s);
      return;
    }
  }

  protected final Object a(TypedArray paramTypedArray, int paramInt)
  {
    return paramTypedArray.getString(paramInt);
  }

  protected final void a(t paramt)
  {
    super.a(paramt);
    paramt.a(this);
    this.s = paramt.i();
  }

  protected final void a(boolean paramBoolean, Object paramObject)
  {
    String str = (String)paramObject;
    if (paramBoolean);
    while (true)
    {
      return;
      if (!TextUtils.isEmpty(str))
        a(Uri.parse(str));
    }
  }

  public final boolean a(int paramInt, Intent paramIntent)
  {
    String str;
    if (paramInt == this.s)
      if (paramIntent != null)
      {
        Uri localUri = (Uri)paramIntent.getParcelableExtra("android.intent.extra.ringtone.PICKED_URI");
        if (localUri == null)
          break label54;
        str = localUri.toString();
        if (b(str))
          a(localUri);
      }
    for (boolean bool = true; ; bool = false)
    {
      return bool;
      label54: str = "";
      break;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kpref.RingtonePreference
 * JD-Core Version:    0.6.2
 */
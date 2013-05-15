package com.avast.android.mobilesecurity.app.locking.core;

import android.content.ContentResolver;
import android.database.Cursor;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.avast.android.mobilesecurity.o;

public class App
  implements Parcelable
{
  public static final Parcelable.Creator CREATOR = new a();
  public static String a = "com.android.packageinstaller";
  public static String b = "special_uninstall_token";
  public static String c = "com.android.settings";
  public static String d = "com.android.vending";
  public String e;
  public String f;
  public String g;
  public String h;
  public boolean i;
  public boolean j;
  public boolean k;
  public boolean l = true;
  public String m;
  public int n;
  public int o;
  public int p;
  public int q;

  public static App a(ContentResolver paramContentResolver, String paramString)
  {
    App localApp1 = b(paramContentResolver, paramString);
    if ((localApp1 == null) || (!localApp1.i))
    {
      App localApp2 = b(paramContentResolver, "COMMON");
      if (localApp1 == null)
      {
        localApp1 = new App();
        localApp1.e = paramString;
      }
      if ((localApp2 != null) && (!localApp1.i))
      {
        localApp1.m = localApp2.m;
        localApp1.n = localApp2.n;
        localApp1.j = localApp2.j;
        localApp1.q = localApp2.q;
        localApp1.o = localApp2.o;
        localApp1.p = localApp2.p;
      }
    }
    return localApp1;
  }

  public static App b(ContentResolver paramContentResolver, String paramString)
  {
    Cursor localCursor = paramContentResolver.query(o.a(paramString), null, null, null, null);
    App localApp = null;
    if ((localCursor == null) || (localCursor.getCount() == 1));
    while (true)
    {
      try
      {
        localApp = new App();
        localCursor.moveToFirst();
        localApp.e = paramString;
        boolean bool1;
        if (localCursor.getInt(localCursor.getColumnIndex("custom_settings")) == 1)
        {
          bool1 = true;
          localApp.i = bool1;
          if (localCursor.getInt(localCursor.getColumnIndex("time_range_enabled")) == 1)
          {
            bool2 = true;
            localApp.j = bool2;
            if (localCursor.getInt(localCursor.getColumnIndex("lock_enabled")) != 1)
              continue;
            bool3 = true;
            localApp.k = bool3;
            localApp.n = localCursor.getInt(localCursor.getColumnIndex("password_type"));
            if (localApp.n != 2)
              continue;
            localApp.m = localCursor.getString(localCursor.getColumnIndex("gesture_password"));
            localApp.o = localCursor.getInt(localCursor.getColumnIndex("minuteFrom"));
            localApp.p = localCursor.getInt(localCursor.getColumnIndex("minuteTo"));
            localApp.q = localCursor.getInt(localCursor.getColumnIndex("days"));
            return localApp;
          }
        }
        else
        {
          bool1 = false;
          continue;
        }
        boolean bool2 = false;
        continue;
        boolean bool3 = false;
        continue;
        if (localApp.n != 3)
          continue;
        localApp.m = localCursor.getString(localCursor.getColumnIndex("text_password"));
        continue;
      }
      finally
      {
        localCursor.close();
      }
      localCursor.close();
      localApp = null;
    }
  }

  public void a(String paramString1, String paramString2)
  {
    this.f = paramString1;
    this.g = paramString2;
  }

  public void a(String paramString1, String paramString2, String paramString3)
  {
    a(paramString1, paramString2);
    this.h = paramString3;
  }

  public int describeContents()
  {
    return 0;
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    int i1 = 1;
    paramParcel.writeString(this.e);
    paramParcel.writeString(this.f);
    paramParcel.writeString(this.g);
    paramParcel.writeString(this.h);
    int i2;
    int i3;
    label60: int i4;
    if (this.i)
    {
      i2 = i1;
      paramParcel.writeInt(i2);
      if (!this.j)
        break label133;
      i3 = i1;
      paramParcel.writeInt(i3);
      if (!this.k)
        break label139;
      i4 = i1;
      label76: paramParcel.writeInt(i4);
      paramParcel.writeString(this.m);
      paramParcel.writeInt(this.o);
      paramParcel.writeInt(this.p);
      paramParcel.writeInt(this.q);
      if (!this.l)
        break label145;
    }
    while (true)
    {
      paramParcel.writeInt(i1);
      return;
      i2 = 0;
      break;
      label133: i3 = 0;
      break label60;
      label139: i4 = 0;
      break label76;
      label145: i1 = 0;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.locking.core.App
 * JD-Core Version:    0.6.2
 */
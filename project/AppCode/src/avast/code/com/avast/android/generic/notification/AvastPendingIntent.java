package com.avast.android.generic.notification;

import android.content.ComponentName;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;

public class AvastPendingIntent
  implements Parcelable
{
  public static final Parcelable.Creator CREATOR = new r();
  String a;
  Uri b;
  String c;
  int d;
  Bundle e;
  s f;

  public AvastPendingIntent(Cursor paramCursor)
  {
    if (paramCursor == null)
      throw new IllegalArgumentException("cannot create AvastNotificationIntent from null cursor");
    a(paramCursor);
  }

  private AvastPendingIntent(Parcel paramParcel)
  {
    this.b = ((Uri)paramParcel.readParcelable(getClass().getClassLoader()));
    this.c = paramParcel.readString();
    this.d = paramParcel.readInt();
    this.e = ((Bundle)paramParcel.readParcelable(getClass().getClassLoader()));
    this.f = s.valueOf(paramParcel.readString());
  }

  public AvastPendingIntent(s params, Intent paramIntent)
  {
    if (paramIntent == null)
      throw new IllegalArgumentException("cannot create AvastNotificationIntent from null intent");
    this.f = params;
    this.b = paramIntent.getData();
    this.a = paramIntent.getAction();
    ComponentName localComponentName = paramIntent.getComponent();
    if (localComponentName != null)
      this.c = localComponentName.getClassName();
    this.d = paramIntent.getFlags();
    Bundle localBundle = paramIntent.getExtras();
    if (localBundle != null)
      this.e = new Bundle(localBundle);
  }

  public AvastPendingIntent(s params, String paramString, Uri paramUri)
  {
    this.a = paramString;
    this.b = paramUri;
    this.f = params;
  }

  public Intent a(Context paramContext)
  {
    Intent localIntent = new Intent();
    localIntent.setFlags(this.d);
    if ((this.e != null) && (this.e.size() > 0))
      localIntent.replaceExtras(new Bundle(this.e));
    localIntent.setData(this.b);
    if ((this.c != null) && (paramContext != null))
      localIntent.setClassName(paramContext, this.c);
    while (true)
    {
      return localIntent;
      if (this.a != null)
        localIntent.setAction(this.a);
      else
        localIntent = null;
    }
  }

  public Bundle a()
  {
    if (this.e == null)
      this.e = new Bundle();
    return this.e;
  }

  void a(ContentValues paramContentValues)
  {
    paramContentValues.put("pendingIntentClass", this.c);
    if (this.b == null);
    for (String str = null; ; str = this.b.toString())
    {
      paramContentValues.put("pendingIntentData", str);
      paramContentValues.put("pendingIntentAction", this.a);
      paramContentValues.put("pendingIntentFlags", Integer.valueOf(this.d));
      paramContentValues.put("pendingIntentType", this.f.name());
      paramContentValues.put("pendingIntentExtras", c());
      return;
    }
  }

  void a(Cursor paramCursor)
  {
    this.c = paramCursor.getString(paramCursor.getColumnIndex("pendingIntentClass"));
    this.a = paramCursor.getString(paramCursor.getColumnIndex("pendingIntentAction"));
    this.f = s.valueOf(paramCursor.getString(paramCursor.getColumnIndex("pendingIntentType")));
    String str1 = paramCursor.getString(paramCursor.getColumnIndex("pendingIntentData"));
    if (!TextUtils.isEmpty(str1))
      this.b = Uri.parse(str1);
    while (true)
    {
      String str2 = paramCursor.getString(paramCursor.getColumnIndex("pendingIntentExtras"));
      if (!TextUtils.isEmpty(str2));
      try
      {
        localJSONObject = new JSONObject(str2);
        if ((localJSONObject.has("___has_types")) && (localJSONObject.getBoolean("___has_types")))
        {
          i = 1;
          localBundle = new Bundle();
          Iterator localIterator = localJSONObject.keys();
          while (true)
          {
            if (!localIterator.hasNext())
              break label425;
            str3 = localIterator.next().toString();
            if ((i == 0) || ((!str3.equals("___has_types")) && (!str3.endsWith("___type"))))
            {
              String str4 = String.class.getCanonicalName();
              if (i != 0)
                str4 = localJSONObject.getString(str3 + "___type");
              localClass = Class.forName(str4);
              if (!localClass.equals(String.class))
                break;
              localBundle.putString(str3, localJSONObject.getString(str3));
            }
          }
        }
      }
      catch (JSONException localJSONException)
      {
        while (true)
        {
          JSONObject localJSONObject;
          Bundle localBundle;
          String str3;
          Class localClass;
          this.d = paramCursor.getInt(paramCursor.getColumnIndex("pendingIntentFlags"));
          return;
          this.b = null;
          break;
          int i = 0;
          continue;
          if (localClass.equals(Integer.class))
          {
            localBundle.putInt(str3, localJSONObject.getInt(str3));
          }
          else if (localClass.equals(Long.class))
          {
            localBundle.putLong(str3, localJSONObject.getLong(str3));
          }
          else if (localClass.equals(Float.class))
          {
            localBundle.putFloat(str3, (float)localJSONObject.getDouble(str3));
          }
          else if (localClass.equals(Double.class))
          {
            localBundle.putDouble(str3, localJSONObject.getDouble(str3));
            continue;
            this.e = localBundle;
            continue;
            this.e = null;
          }
        }
      }
      catch (NoSuchElementException localNoSuchElementException)
      {
        break label280;
      }
      catch (ClassNotFoundException localClassNotFoundException)
      {
        label280: label425: break label280;
      }
    }
  }

  public s b()
  {
    return this.f;
  }

  String c()
  {
    String str2;
    if (this.e != null)
    {
      JSONObject localJSONObject;
      try
      {
        localJSONObject = new JSONObject();
        localJSONObject.put("___has_types", true);
        Iterator localIterator = this.e.keySet().iterator();
        while (localIterator.hasNext())
        {
          String str3 = (String)localIterator.next();
          Object localObject = this.e.get(str3);
          localJSONObject.put(str3, localObject);
          localJSONObject.put(str3 + "___type", localObject.getClass().getCanonicalName());
        }
      }
      catch (JSONException localJSONException)
      {
        throw new RuntimeException("cannot serialize intent extras to json: " + localJSONException.getMessage(), localJSONException);
      }
      str2 = localJSONObject.toString();
    }
    for (String str1 = str2; ; str1 = null)
      return str1;
  }

  public int describeContents()
  {
    return 0;
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeParcelable(this.b, 0);
    paramParcel.writeString(this.c);
    paramParcel.writeInt(paramInt);
    paramParcel.writeParcelable(this.e, 0);
    paramParcel.writeString(this.f.name());
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.notification.AvastPendingIntent
 * JD-Core Version:    0.6.2
 */
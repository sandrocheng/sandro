package com.avast.android.mobilesecurity.app.campaign;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;

final class a
  implements Parcelable.Creator
{
  public CampaignEvent a(Parcel paramParcel)
  {
    Class localClass = (Class)paramParcel.readSerializable();
    try
    {
      localCampaignEvent = (CampaignEvent)localClass.getConstructor(new Class[] { Parcel.class }).newInstance(new Object[] { paramParcel });
      return localCampaignEvent;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      while (true)
      {
        localIllegalArgumentException.printStackTrace();
        CampaignEvent localCampaignEvent = null;
      }
    }
    catch (InstantiationException localInstantiationException)
    {
      while (true)
        localInstantiationException.printStackTrace();
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      while (true)
        localIllegalAccessException.printStackTrace();
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
      while (true)
        localInvocationTargetException.printStackTrace();
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
      while (true)
        localNoSuchMethodException.printStackTrace();
    }
  }

  public CampaignEvent[] a(int paramInt)
  {
    return new CampaignEvent[paramInt];
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.campaign.a
 * JD-Core Version:    0.6.2
 */
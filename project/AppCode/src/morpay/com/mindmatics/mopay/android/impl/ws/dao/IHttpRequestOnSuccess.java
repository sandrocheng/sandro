package com.mindmatics.mopay.android.impl.ws.dao;

import org.json.JSONException;

public abstract interface IHttpRequestOnSuccess
{
  public abstract void onSuccess(String paramString)
    throws JSONException;
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\mopay-android-3.0.0.jar
 * Qualified Name:     com.mindmatics.mopay.android.impl.ws.dao.IHttpRequestOnSuccess
 * JD-Core Version:    0.6.2
 */
package com.mindmatics.mopay.android.impl;

import com.mindmatics.mopay.android.impl.ws.exception.DataResultMappingException;
import org.json.JSONObject;

public abstract interface IResultMapper<T>
{
  public abstract T map(JSONObject paramJSONObject)
    throws DataResultMappingException;
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\mopay-android-3.0.0.jar
 * Qualified Name:     com.mindmatics.mopay.android.impl.IResultMapper
 * JD-Core Version:    0.6.2
 */
/*    */ package com.mindmatics.mopay.android.impl.ws.dao;
/*    */ 
/*    */ import com.mindmatics.mopay.android.impl.IResultMapper;
/*    */ import com.mindmatics.mopay.android.impl.ws.exception.DataResultMappingException;
/*    */ import java.util.ArrayList;
/*    */ import java.util.List;
/*    */ import org.json.JSONArray;
/*    */ import org.json.JSONException;
/*    */ import org.json.JSONObject;
/*    */ 
/*    */ public class AbstractDAO<T>
/*    */ {
/*    */   protected final List<T> mapArray(IResultMapper<T> pMapper, JSONArray pArray)
/*    */     throws DataResultMappingException
/*    */   {
/* 20 */     List r = new ArrayList();
/* 21 */     for (int i = 0; i < pArray.length(); i++) {
/* 22 */       JSONObject row = null;
/*    */       try {
/* 24 */         row = (JSONObject)pArray.get(i);
/*    */       } catch (JSONException e) {
/* 26 */         throw new DataResultMappingException("Failed to access row " + i + " in JSON response array.", e);
/*    */       }
/* 28 */       Object b = pMapper.map(row);
/* 29 */       r.add(b);
/*    */     }
/* 31 */     return r;
/*    */   }
/*    */ 
/*    */   protected final T mapObject(IResultMapper<T> pMapper, JSONObject pObject) throws DataResultMappingException {
/* 35 */     return pMapper.map(pObject);
/*    */   }
/*    */ }

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\mopay-android-3.0.0.jar
 * Qualified Name:     com.mindmatics.mopay.android.impl.ws.dao.AbstractDAO
 * JD-Core Version:    0.6.2
 */
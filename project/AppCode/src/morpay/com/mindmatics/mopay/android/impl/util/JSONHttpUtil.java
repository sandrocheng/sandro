/*     */ package com.mindmatics.mopay.android.impl.util;
/*     */ 
/*     */ import android.os.AsyncTask;
/*     */ import com.mindmatics.mopay.android.impl.IHttpResponseReceiver;
/*     */ import com.mindmatics.mopay.android.impl.JavascriptParameters;
/*     */ import com.mindmatics.mopay.android.impl.LogUtil;
/*     */ import com.mindmatics.mopay.android.impl.cfg.Settings;
/*     */ import com.mindmatics.mopay.android.impl.cfg.WSUrl;
/*     */ import com.mindmatics.mopay.android.impl.cfg.WsEnv;
/*     */ import com.mindmatics.mopay.android.impl.ws.dao.IHttpRequestOnSuccess;
/*     */ import com.mindmatics.mopay.android.impl.ws.exception.DataAccessException;
/*     */ import com.mindmatics.mopay.android.impl.ws.exception.DataHttpErrorException;
/*     */ import com.mindmatics.mopay.android.impl.ws.exception.DataReadException;
/*     */ import com.mindmatics.mopay.android.impl.ws.model.AbortSessionReq;
/*     */ import com.mindmatics.mopay.android.impl.ws.model.BackToMerchantReq;
/*     */ import com.mindmatics.mopay.android.impl.ws.model.ErrorDetails;
/*     */ import com.mindmatics.mopay.android.impl.ws.model.Handshake;
/*     */ import com.mindmatics.mopay.android.impl.ws.model.JsonRes;
/*     */ import com.mindmatics.mopay.android.impl.ws.model.LogReq;
/*     */ import com.mindmatics.mopay.android.impl.ws.model.QueryPinReq;
/*     */ import com.mindmatics.mopay.android.impl.ws.model.QueryPinRes;
/*     */ import com.mindmatics.mopay.android.impl.ws.model.QueryStatusReq;
/*     */ import com.mindmatics.mopay.android.impl.ws.model.QueryStatusRes;
/*     */ import com.mindmatics.mopay.android.impl.ws.model.SessionAwareReq;
/*     */ import com.mindmatics.mopay.android.impl.ws.model.SubmitTanReq;
/*     */ import com.mindmatics.mopay.android.impl.ws.model.SubmitTanRes;
/*     */ import com.mindmatics.mopay.android.impl.ws.model.UserCancelReq;
/*     */ import com.mindmatics.mopay.android.impl.ws.model.UserCancelRes;
/*     */ import java.io.IOException;
/*     */ import java.io.InputStream;
/*     */ import java.io.InputStreamReader;
/*     */ import java.io.Reader;
/*     */ import java.io.UnsupportedEncodingException;
/*     */ import java.util.HashMap;
/*     */ import java.util.Map;
/*     */ import java.util.concurrent.ExecutionException;
/*     */ import org.apache.http.HttpEntity;
/*     */ import org.apache.http.HttpResponse;
/*     */ import org.apache.http.StatusLine;
/*     */ import org.apache.http.client.methods.HttpPost;
/*     */ import org.apache.http.entity.ByteArrayEntity;
/*     */ import org.apache.http.impl.client.BasicResponseHandler;
/*     */ import org.apache.http.impl.client.DefaultHttpClient;
/*     */ import org.apache.http.params.HttpParams;
/*     */ import org.json.JSONArray;
/*     */ import org.json.JSONException;
/*     */ import org.json.JSONObject;
/*     */ 
/*     */ public class JSONHttpUtil
/*     */   implements IHttpResponseReceiver
/*     */ {
/*     */   public static final int SUCCESSFULL_HTTP_RESPONSE = 200;
/*     */   private IHttpRequestOnSuccess callback;
/*     */   private WsEnv env;
/*     */   private String path;
/*     */   private String responseString;
/*     */   private HttpParams httpParams;
/*     */ 
/*     */   public JSONHttpUtil(IHttpRequestOnSuccess pCallback)
/*     */   {
/*  66 */     this.callback = pCallback;
/*     */   }
/*     */ 
/*     */   public JSONHttpUtil(IHttpRequestOnSuccess pCallback, HttpParams pHttpParams) {
/*  70 */     this.callback = pCallback;
/*  71 */     this.httpParams = pHttpParams;
/*     */   }
/*     */ 
/*     */   public String postSync(String pData, String pPath)
/*     */     throws DataAccessException
/*     */   {
/*     */     try
/*     */     {
/*  80 */       return callSyncPost(pData, pPath);
/*     */     } catch (DataAccessException e) {
/*  82 */       LogUtil.logD(JSONHttpUtil.class, "HTTP POST Error '" + e.getMessage() + "' occurred.");
/*  83 */       throw e;
/*     */     }
/*     */   }
/*     */ 
/*     */   public void postAsync(String pData, String pPath)
/*     */     throws DataAccessException
/*     */   {
/*     */     try
/*     */     {
/*  93 */       callAsyncPost(pData, pPath);
/*     */     } catch (DataAccessException e) {
/*  95 */       LogUtil.logD(JSONHttpUtil.class, "HTTP POST Error '" + e.getMessage() + "' occurred.");
/*  96 */       throw e;
/*     */     }
/*     */   }
/*     */ 
/*     */   private void callAsyncPost(String pData, String pPath) throws DataAccessException {
/* 101 */     HttpPost httpPost = prepareHttpPost(pData, pPath);
/*     */     try {
/* 103 */       if (this.httpParams != null)
/* 104 */         new HTTPRequestTask(this, this.httpParams).execute(new HttpPost[] { httpPost });
/*     */       else
/* 106 */         new HTTPRequestTask(this).execute(new HttpPost[] { httpPost });
/*     */     }
/*     */     catch (Exception e) {
/* 109 */       LogUtil.logD(HTTPRequestTask.class, "Exception while executing HTTP Request.");
/*     */     }
/*     */   }
/*     */ 
/*     */   private String callSyncPost(String pData, String pPath) throws DataAccessException {
/* 114 */     HttpPost httpPost = prepareHttpPost(pData, pPath);
/*     */     try {
/* 116 */       return (String)new HTTPRequestSyncTask(null).execute(new HttpPost[] { httpPost }).get();
/*     */     } catch (Exception e) {
/* 118 */       LogUtil.logD(HTTPRequestTask.class, "Exception while executing HTTP Request.");
/*     */     }
/* 120 */     return "";
/*     */   }
/*     */ 
/*     */   private HttpPost prepareHttpPost(String pData, String pPath) throws DataAccessException
/*     */   {
/* 125 */     this.env = Settings.getInstance().getWebServiceEnvironment();
/* 126 */     this.path = pPath;
/* 127 */     String url = WSUrl.getWebServiceBaseURL() + pPath;
/* 128 */     if (this.env != WsEnv.PROD) {
/* 129 */       LogUtil.logD(JSONHttpUtil.class, "WS call ENVIRONMENT: " + this.env);
/* 131 */     }LogUtil.logD(JSONHttpUtil.class, "WS call target url : " + url);
/* 132 */     LogUtil.logD(JSONHttpUtil.class, "WS call request '" + pPath + "'   : " + pData);
/*     */ 
/* 135 */     HttpPost httpPost = new HttpPost(url);
/*     */     ByteArrayEntity string;
/*     */     try { string = new ByteArrayEntity(pData.getBytes("UTF-8"));
/*     */     } catch (UnsupportedEncodingException e) {
/* 140 */       throw new DataAccessException("Unsupported content encoding!", e, false);
/*     */     }
/* 142 */     string.setContentType("application/json");
/* 143 */     string.setContentEncoding("UTF-8");
/* 144 */     httpPost.setEntity(string);
/* 145 */     return httpPost;
/*     */   }
/*     */ 
/*     */   private String createResponseString(String pPath, HttpResponse pResponse) throws DataHttpErrorException, DataReadException
/*     */   {
/* 150 */     String r = "";
/* 151 */     if ((pResponse != null) && (pResponse.getStatusLine() != null) && (pResponse.getStatusLine().getStatusCode() != 200))
/*     */     {
/* 153 */       LogUtil.logD(JSONHttpUtil.class, "HTTP request error (" + this.env + "/'" + pPath + "'). " + "ResponseCode=" + pResponse.getStatusLine().getStatusCode() + ", Reason=" + pResponse.getStatusLine().getReasonPhrase());
/*     */ 
/* 157 */       throw new DataHttpErrorException("HTTP request error (" + this.env + "/'" + pPath + "'). Reason=" + pResponse.getStatusLine().getReasonPhrase(), pResponse.getStatusLine().getStatusCode());
/*     */     }
/*     */ 
/*     */     try
/*     */     {
/* 162 */       if ((pResponse != null) && (pResponse.getEntity() != null)) {
/* 163 */         InputStream in = pResponse.getEntity().getContent();
/* 164 */         r = readString(in, "UTF-8");
/* 165 */         LogUtil.logD(JSONHttpUtil.class, "WS call '" + pPath + "'  response   : " + r);
/*     */       }
/*     */     } catch (IOException e) {
/* 168 */       throw new DataReadException("HTTP data loading (" + this.env + "/'" + pPath + "') failed.", e);
/*     */     }
/* 170 */     return r;
/*     */   }
/*     */ 
/*     */   private static String readString(InputStream pInputStream, String pCharSet)
/*     */     throws IOException
/*     */   {
/* 177 */     Reader reader = new InputStreamReader(pInputStream, pCharSet);
/* 178 */     String result = "";
/*     */     try {
/* 180 */       result = (String)new ReaderReadTask().execute(new Reader[] { reader }).get();
/*     */     } catch (InterruptedException e) {
/* 182 */       e.printStackTrace();
/*     */     } catch (ExecutionException e) {
/* 184 */       e.printStackTrace();
/*     */     }
/* 186 */     return result;
/*     */   }
/*     */ 
/*     */   public static String serializeQueryStatusReq(QueryStatusReq pReq)
/*     */     throws JSONException
/*     */   {
/* 285 */     JSONObject jsonObject = new JSONObject();
/* 286 */     addSerializedSessionAwareReq(jsonObject, pReq);
/* 287 */     return jsonObject.toString();
/*     */   }
/*     */ 
/*     */   public static String serializeLogReq(LogReq pReq) throws JSONException {
/* 291 */     JSONObject jsonObject = new JSONObject();
/* 292 */     jsonObject.put("level", pReq.getLevel());
/* 293 */     jsonObject.put("message", pReq.getMessage());
/* 294 */     return jsonObject.toString();
/*     */   }
/*     */ 
/*     */   public static String serializeUserCancelReq(UserCancelReq pReq) throws JSONException {
/* 298 */     JSONObject jsonObject = new JSONObject();
/* 299 */     addSerializedSessionAwareReq(jsonObject, pReq);
/* 300 */     return jsonObject.toString();
/*     */   }
/*     */ 
/*     */   public static String serializeAbortSessionReq(AbortSessionReq pReq) throws JSONException {
/* 304 */     JSONObject jsonObject = new JSONObject();
/* 305 */     addSerializedSessionAwareReq(jsonObject, pReq);
/* 306 */     return jsonObject.toString();
/*     */   }
/*     */ 
/*     */   public static String serializeBackToMerchantReq(BackToMerchantReq pReq) throws JSONException {
/* 310 */     JSONObject jsonObject = new JSONObject();
/* 311 */     addSerializedSessionAwareReq(jsonObject, pReq);
/* 312 */     return jsonObject.toString();
/*     */   }
/*     */ 
/*     */   public static String serializeQueryPinReq(QueryPinReq pReq) throws JSONException {
/* 316 */     JSONObject jsonObject = new JSONObject();
/* 317 */     addSerializedSessionAwareReq(jsonObject, pReq);
/* 318 */     jsonObject.put("type", pReq.getType());
/* 319 */     return jsonObject.toString();
/*     */   }
/*     */ 
/*     */   public static String serializeSubmitTanReq(SubmitTanReq pReq) throws JSONException {
/* 323 */     JSONObject jsonObject = new JSONObject();
/* 324 */     addSerializedSessionAwareReq(jsonObject, pReq);
/* 325 */     jsonObject.put("tan", pReq.getTan());
/* 326 */     jsonObject.put("type", pReq.getType());
/* 327 */     return jsonObject.toString();
/*     */   }
/*     */ 
/*     */   private static <T extends SessionAwareReq> void addSerializedSessionAwareReq(JSONObject pJSONObject, T pReq) throws JSONException
/*     */   {
/* 332 */     pJSONObject.put("guid", pReq.getGuid());
/*     */   }
/*     */ 
/*     */   public static QueryStatusRes deserializeQueryStatusRes(String pContent) throws JSONException {
/* 336 */     JSONObject jsonObject = new JSONObject(pContent);
/* 337 */     QueryStatusRes res = new QueryStatusRes();
/*     */ 
/* 339 */     addDeserializedJsonRes(jsonObject, res);
/* 340 */     if (jsonObject.has("handshakeStatus")) {
/*     */       try {
/* 342 */         res.setHandshake(deserializeHandshake(jsonObject.getJSONObject("handshakeStatus")));
/*     */       } catch (JSONException e) {
/* 344 */         res.setHandshake(null);
/*     */       }
/*     */     }
/*     */ 
/* 348 */     if (jsonObject.has("paymentStatus")) {
/* 349 */       res.setPaymentStatus(jsonObject.getString("paymentStatus"));
/*     */     }
/* 351 */     if (jsonObject.has("optinCompleted")) {
/* 352 */       res.setOptinCompleted(jsonObject.getBoolean("optinCompleted"));
/*     */     }
/* 354 */     if (jsonObject.has("paymentCompleted")) {
/* 355 */       res.setPaymentCompleted(jsonObject.getBoolean("paymentCompleted"));
/*     */     }
/* 357 */     if (jsonObject.has("psmsBillingTan")) {
/* 358 */       res.setPsmsBillingTan(jsonObject.getBoolean("psmsBillingTan"));
/*     */     }
/*     */ 
/* 361 */     return res;
/*     */   }
/*     */ 
/*     */   public static LogReq deserializeLogReq(String pContent) throws JSONException {
/* 365 */     JSONObject jsonObject = new JSONObject(pContent);
/* 366 */     LogReq logReq = new LogReq();
/* 367 */     if (jsonObject.has("level")) {
/* 368 */       logReq.setLevel(jsonObject.getString("level"));
/*     */     }
/* 370 */     if (jsonObject.has("message")) {
/* 371 */       logReq.setMessage(jsonObject.getString("message"));
/*     */     }
/* 373 */     return logReq;
/*     */   }
/*     */ 
/*     */   public static UserCancelRes deserializeUserCancelRes(String pContent) throws JSONException {
/* 377 */     UserCancelRes res = new UserCancelRes();
/* 378 */     JSONObject jsonObject = new JSONObject(pContent);
/* 379 */     addDeserializedJsonRes(jsonObject, res);
/* 380 */     return res;
/*     */   }
/*     */ 
/*     */   public static JsonRes deserializeJsonRes(String pContent) throws JSONException {
/* 384 */     JsonRes res = new JsonRes();
/* 385 */     JSONObject jsonObject = new JSONObject(pContent);
/* 386 */     addDeserializedJsonRes(jsonObject, res);
/* 387 */     return res;
/*     */   }
/*     */ 
/*     */   public static QueryPinRes deserializeQueryPinRes(String pContent) throws JSONException {
/* 391 */     QueryPinRes res = new QueryPinRes();
/* 392 */     JSONObject jsonObject = new JSONObject(pContent);
/* 393 */     addDeserializedJsonRes(jsonObject, res);
/* 394 */     if (jsonObject.has("regexp")) {
/* 395 */       res.setRegexp(jsonObject.getString("regexp"));
/*     */     }
/* 397 */     if (jsonObject.has("type")) {
/* 398 */       res.setType(jsonObject.getString("type"));
/*     */     }
/* 400 */     return res;
/*     */   }
/*     */ 
/*     */   public static SubmitTanRes deserializeSubmitTanRes(String pContent) throws JSONException {
/* 404 */     SubmitTanRes res = new SubmitTanRes();
/* 405 */     JSONObject jsonObject = new JSONObject(pContent);
/* 406 */     addDeserializedJsonRes(jsonObject, res);
/* 407 */     return res;
/*     */   }
/*     */ 
/*     */   public static Map<String, String> deserializeInitMap(String pContent) throws JSONException {
/* 411 */     Map map = new HashMap();
/* 412 */     JSONArray jsonArray = new JSONArray(pContent);
/* 413 */     String[] initParamArray = JavascriptParameters.getInitParams();
/* 414 */     for (int i = 0; i < jsonArray.length(); i++) {
/* 415 */       map.put(initParamArray[i].toString(), jsonArray.getString(i));
/*     */     }
/* 417 */     return map;
/*     */   }
/*     */ 
/*     */   public static String[] deserializeStringArray(String pContent) throws JSONException {
/* 421 */     JSONArray jsonArray = new JSONArray(pContent);
/* 422 */     String[] strings = new String[jsonArray.length()];
/* 423 */     for (int i = 0; i < jsonArray.length(); i++) {
/* 424 */       strings[i] = jsonArray.getString(i);
/*     */     }
/* 426 */     return strings;
/*     */   }
/*     */ 
/*     */   private static <T extends JsonRes> JsonRes deserializeJsonRes(JSONObject pJSONObject) throws JSONException {
/* 430 */     JsonRes jsonRes = new JsonRes();
/* 431 */     if (pJSONObject.has("errorDetails")) {
/* 432 */       jsonRes.setErrorDetails(addDeserializedErrorDetails(pJSONObject.getJSONObject("errorDetails")));
/*     */     }
/* 434 */     if (pJSONObject.has("retry")) {
/* 435 */       jsonRes.setRetry(pJSONObject.getBoolean("retry"));
/*     */     }
/* 437 */     if (pJSONObject.has("success")) {
/* 438 */       jsonRes.setSuccess(pJSONObject.getBoolean("success"));
/*     */     }
/* 440 */     return jsonRes;
/*     */   }
/*     */ 
/*     */   private static <T extends JsonRes> void addDeserializedJsonRes(JSONObject pJSONObject, T pJsonRes) throws JSONException
/*     */   {
/* 445 */     if (pJSONObject.has("errorDetails")) {
/*     */       try {
/* 447 */         pJsonRes.setErrorDetails(addDeserializedErrorDetails(pJSONObject.getJSONObject("errorDetails")));
/*     */       } catch (JSONException e) {
/* 449 */         pJsonRes.setErrorDetails(new ErrorDetails());
/*     */       }
/*     */     }
/* 452 */     if (pJSONObject.has("retry")) {
/* 453 */       pJsonRes.setRetry(pJSONObject.getBoolean("retry"));
/*     */     }
/* 455 */     if (pJSONObject.has("success"))
/* 456 */       pJsonRes.setSuccess(pJSONObject.getBoolean("success"));
/*     */   }
/*     */ 
/*     */   private static ErrorDetails addDeserializedErrorDetails(JSONObject pJsonObject) throws JSONException
/*     */   {
/* 461 */     ErrorDetails ed = new ErrorDetails();
/* 462 */     if (pJsonObject.has("apiError")) {
/*     */       try {
/* 464 */         ed.setApiError(Integer.valueOf(pJsonObject.getInt("apiError")));
/*     */       } catch (JSONException e) {
/* 466 */         ed.setApiError(Integer.valueOf(0));
/*     */       }
/*     */     }
/* 469 */     if (pJsonObject.has("wsErrorMessage")) {
/* 470 */       ed.setWsErrorMessage(pJsonObject.getString("wsErrorMessage"));
/*     */     }
/* 472 */     if (pJsonObject.has("errorCode")) {
/* 473 */       ed.setErrorCode(Long.valueOf(pJsonObject.getLong("errorCode")));
/*     */     }
/* 475 */     return ed;
/*     */   }
/*     */ 
/*     */   private static Handshake deserializeHandshake(JSONObject pHandshakeObj) throws JSONException {
/* 479 */     Handshake handshake = new Handshake();
/* 480 */     if (pHandshakeObj.has("shortId")) {
/* 481 */       handshake.setShortId(pHandshakeObj.getString("shortId"));
/*     */     }
/* 483 */     if (pHandshakeObj.has("smsText")) {
/* 484 */       handshake.setSmsText(pHandshakeObj.getString("smsText"));
/*     */     }
/* 486 */     if (pHandshakeObj.has("status")) {
/* 487 */       if ("EXPIRED".equals(pHandshakeObj.getString("status")))
/* 488 */         handshake.setStatus("EXPIRED");
/* 489 */       else if ("RECEIVED".equals(pHandshakeObj.getString("status")))
/* 490 */         handshake.setStatus("EXPIRED");
/* 491 */       else if ("RECEIVED".equals(pHandshakeObj.getString("status"))) {
/* 492 */         handshake.setStatus("EXPIRED");
/*     */       }
/*     */     }
/*     */ 
/* 496 */     return handshake;
/*     */   }
/*     */ 
/*     */   private void requestExecuted(String pResponseString) {
/*     */     try {
/* 501 */       this.callback.onSuccess(pResponseString != null ? pResponseString : "");
/*     */     } catch (JSONException e) {
/* 503 */       e.printStackTrace();
/*     */     }
/*     */   }
/*     */ 
/*     */   public void receiveHttpResponse(String pResponse)
/*     */   {
/*     */   }
/*     */ 
/*     */   static class ReaderReadTask extends AsyncTask<Reader, Void, String>
/*     */   {
/*     */     private static final int READER_SIZE = 1024;
/*     */ 
/*     */     protected String doInBackground(Reader[] pParams)
/*     */     {
/* 265 */       return run(pParams[0]);
/*     */     }
/*     */ 
/*     */     private String run(Reader pReader) {
/* 269 */       StringBuilder buffer = new StringBuilder();
/*     */       try {
/* 271 */         int l = 0;
/* 272 */         char[] tmp = new char[1024];
/* 273 */         while ((l = pReader.read(tmp)) != -1) {
/* 274 */           buffer.append(tmp, 0, l);
/*     */         }
/* 276 */         pReader.close();
/*     */       } catch (IOException e) {
/* 278 */         LogUtil.logD(this, new StringBuilder().append("Reading from Reader failed:").append(e).toString());
/*     */       }
/* 280 */       return buffer.toString();
/*     */     }
/*     */   }
/*     */ 
/*     */   private static class HTTPRequestSyncTask extends AsyncTask<HttpPost, Void, String>
/*     */   {
/*     */     private HttpResponse response;
/*     */ 
/*     */     protected String doInBackground(HttpPost[] pParams)
/*     */     {
/* 238 */       return run(pParams[0]);
/*     */     }
/*     */ 
/*     */     private String run(HttpPost pHttpPost) {
/* 242 */       DefaultHttpClient httpClient = new DefaultHttpClient(WSUrl.getHttpParamsWSDefault());
/* 243 */       String responseString = "";
/*     */       try {
/* 245 */         this.response = httpClient.execute(pHttpPost);
/* 246 */         responseString = new BasicResponseHandler().handleResponse(this.response);
/*     */       } catch (IOException e) {
/* 248 */         LogUtil.logD(this, "Execution of HTTPRequest failed" + e);
/*     */       }
/* 250 */       return responseString;
/*     */     }
/*     */ 
/*     */     protected void onPostExecute(String result)
/*     */     {
/* 255 */       super.onPostExecute(result);
/* 256 */       this.response = null;
/*     */     }
/*     */   }
/*     */ 
/*     */   private static class HTTPRequestTask extends AsyncTask<HttpPost, Void, Void>
/*     */   {
/*     */     private JSONHttpUtil jsonHttpUtil;
/*     */     private HttpResponse response;
/*     */     private String responseString;
/*     */     private HttpParams httpParams;
/*     */ 
/*     */     public HTTPRequestTask(JSONHttpUtil pJSONHttpUtil)
/*     */     {
/* 196 */       this.jsonHttpUtil = pJSONHttpUtil;
/*     */     }
/*     */ 
/*     */     public HTTPRequestTask(JSONHttpUtil pJSONHttpUtil, HttpParams pHttpParams) {
/* 200 */       this.jsonHttpUtil = pJSONHttpUtil;
/* 201 */       this.httpParams = pHttpParams;
/*     */     }
/*     */ 
/*     */     protected Void doInBackground(HttpPost[] pParams)
/*     */     {
/* 206 */       run(pParams[0]);
/* 207 */       return null;
/*     */     }
/*     */ 
/*     */     private void run(HttpPost pHttpPost) {
/* 211 */       DefaultHttpClient httpClient = new DefaultHttpClient(this.httpParams != null ? this.httpParams : WSUrl.getHttpParamsWSDefault());
/*     */       try {
/* 213 */         this.response = httpClient.execute(pHttpPost);
/* 214 */         if (this.response.getStatusLine().getStatusCode() == 200)
/* 215 */           this.responseString = new BasicResponseHandler().handleResponse(this.response);
/*     */         else
/* 217 */           this.responseString = "";
/*     */       }
/*     */       catch (IOException e) {
/* 220 */         LogUtil.logD(this, "Execution of HTTPRequest failed" + e);
/*     */       }
/*     */     }
/*     */ 
/*     */     protected void onPostExecute(Void result)
/*     */     {
/* 226 */       this.jsonHttpUtil.requestExecuted(this.responseString);
/* 227 */       this.jsonHttpUtil = null;
/* 228 */       this.response = null;
/* 229 */       this.responseString = null;
/*     */     }
/*     */   }
/*     */ }

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\mopay-android-3.0.0.jar
 * Qualified Name:     com.mindmatics.mopay.android.impl.util.JSONHttpUtil
 * JD-Core Version:    0.6.2
 */
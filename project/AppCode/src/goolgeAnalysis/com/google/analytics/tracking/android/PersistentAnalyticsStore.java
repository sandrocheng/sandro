/*     */ package com.google.analytics.tracking.android;
/*     */ 
/*     */ import android.content.ContentValues;
/*     */ import android.content.Context;
/*     */ import android.database.Cursor;
/*     */ import android.database.CursorWindow;
/*     */ import android.database.sqlite.SQLiteCursor;
/*     */ import android.database.sqlite.SQLiteDatabase;
/*     */ import android.database.sqlite.SQLiteException;
/*     */ import android.database.sqlite.SQLiteOpenHelper;
/*     */ import android.os.Build.VERSION;
/*     */ import android.text.TextUtils;
/*     */ import com.google.android.gms.analytics.internal.Command;
/*     */ import com.google.android.gms.common.util.VisibleForTesting;
/*     */ import java.io.File;
/*     */ import java.util.ArrayList;
/*     */ import java.util.Collection;
/*     */ import java.util.Collections;
/*     */ import java.util.HashSet;
/*     */ import java.util.Iterator;
/*     */ import java.util.List;
/*     */ import java.util.Map;
/*     */ import java.util.Map.Entry;
/*     */ import java.util.Set;
/*     */ import org.apache.http.client.HttpClient;
/*     */ import org.apache.http.impl.client.DefaultHttpClient;
/*     */ 
/*     */ class PersistentAnalyticsStore
/*     */   implements AnalyticsStore
/*     */ {
/*     */ 
/*     */   @VisibleForTesting
/*     */   static final String BACKEND_LIBRARY_VERSION = "";
/*     */ 
/*     */   @VisibleForTesting
/*     */   static final String HIT_ID = "hit_id";
/*     */ 
/*     */   @VisibleForTesting
/*     */   static final String HIT_STRING = "hit_string";
/*     */ 
/*     */   @VisibleForTesting
/*     */   static final String HIT_TIME = "hit_time";
/*     */ 
/*     */   @VisibleForTesting
/*     */   static final String HIT_URL = "hit_url";
/*     */ 
/*     */   @VisibleForTesting
/*     */   static final String HIT_APP_ID = "hit_app_id";
/*     */ 
/*     */   @VisibleForTesting
/*     */   static final String HITS_TABLE = "hits2";
/*  65 */   private static final String CREATE_HITS_TABLE = String.format("CREATE TABLE IF NOT EXISTS %s ( '%s' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, '%s' INTEGER NOT NULL, '%s' TEXT NOT NULL, '%s' TEXT NOT NULL, '%s' INTEGER);", new Object[] { "hits2", "hit_id", "hit_time", "hit_url", "hit_string", "hit_app_id" });
/*     */   private static final String DATABASE_FILENAME = "google_analytics_v2.db";
/*     */   private final AnalyticsDatabaseHelper mDbHelper;
/*     */   private volatile Dispatcher mDispatcher;
/*     */   private final AnalyticsStoreStateListener mListener;
/*     */   private final Context mContext;
/*     */   private final String mDatabaseName;
/*     */   private long mLastDeleteStaleHitsTime;
/*     */   private Clock mClock;
/*     */ 
/*     */   PersistentAnalyticsStore(AnalyticsStoreStateListener listener, Context ctx)
/*     */   {
/*  97 */     this(listener, ctx, "google_analytics_v2.db");
/*     */   }
/*     */ 
/*     */   @VisibleForTesting
/*     */   PersistentAnalyticsStore(AnalyticsStoreStateListener listener, Context ctx, String databaseName)
/*     */   {
/* 110 */     this.mContext = ctx.getApplicationContext();
/* 111 */     this.mDatabaseName = databaseName;
/* 112 */     this.mListener = listener;
/* 113 */     this.mClock = new Clock()
/*     */     {
/*     */       public long currentTimeMillis() {
/* 116 */         return System.currentTimeMillis();
/*     */       }
/*     */     };
/* 119 */     this.mDbHelper = new AnalyticsDatabaseHelper(this.mContext, this.mDatabaseName);
/* 120 */     this.mDispatcher = new SimpleNetworkDispatcher(this, createDefaultHttpClientFactory(), this.mContext);
/*     */ 
/* 123 */     this.mLastDeleteStaleHitsTime = 0L;
/*     */   }
/*     */ 
/*     */   @VisibleForTesting
/*     */   public void setClock(Clock clock) {
/* 128 */     this.mClock = clock;
/*     */   }
/*     */ 
/*     */   @VisibleForTesting
/*     */   public AnalyticsDatabaseHelper getDbHelper() {
/* 133 */     return this.mDbHelper;
/*     */   }
/*     */ 
/*     */   private HttpClientFactory createDefaultHttpClientFactory()
/*     */   {
/* 142 */     return new HttpClientFactory()
/*     */     {
/*     */       public HttpClient newInstance() {
/* 145 */         return new DefaultHttpClient();
/*     */       }
/*     */     };
/*     */   }
/*     */ 
/*     */   public void setDispatch(boolean dispatch)
/*     */   {
/* 152 */     this.mDispatcher = (dispatch ? new SimpleNetworkDispatcher(this, createDefaultHttpClientFactory(), this.mContext) : new NoopDispatcher());
/*     */   }
/*     */ 
/*     */   @VisibleForTesting
/*     */   void setDispatcher(Dispatcher dispatcher)
/*     */   {
/* 159 */     this.mDispatcher = dispatcher;
/*     */   }
/*     */ 
/*     */   public void clearHits(long appId)
/*     */   {
/* 164 */     SQLiteDatabase db = getWritableDatabase("Error opening database for clearHits");
/* 165 */     if (db != null) {
/* 166 */       if (appId == 0L) {
/* 167 */         db.delete("hits2", null, null);
/*     */       } else {
/* 169 */         String[] params = new String[1];
/* 170 */         params[0] = Long.valueOf(appId).toString();
/* 171 */         db.delete("hits2", "hit_app_id = ?", params);
/*     */       }
/* 173 */       this.mListener.reportStoreIsEmpty(getNumStoredHits() == 0);
/*     */     }
/*     */   }
/*     */ 
/*     */   public void putHit(Map<String, String> wireFormatParams, long hitTimeInMilliseconds, String path, Collection<Command> commands)
/*     */   {
/* 193 */     deleteStaleHits();
/* 194 */     fillVersionParametersIfNecessary(wireFormatParams, commands);
/*     */ 
/* 196 */     removeOldHitIfFull();
/* 197 */     writeHitToDatabase(wireFormatParams, hitTimeInMilliseconds, path);
/*     */   }
/*     */ 
/*     */   private void fillVersionParametersIfNecessary(Map<String, String> wireFormatParams, Collection<Command> commands)
/*     */   {
/* 206 */     for (Command command : commands)
/* 207 */       if (command.getId().equals("appendVersion")) {
/* 208 */         String clientVersion = command.getValue();
/* 209 */         storeVersion(wireFormatParams, command.getUrlParam(), clientVersion);
/* 210 */         break;
/*     */       }
/*     */   }
/*     */ 
/*     */   private void storeVersion(Map<String, String> wireFormatParams, String versionUrlParam, String clientVersion)
/*     */   {
/* 220 */     String version = clientVersion;
/* 221 */     if (clientVersion == null)
/* 222 */       version = "";
/*     */     else {
/* 224 */       version = clientVersion + "";
/*     */     }
/* 226 */     if (versionUrlParam != null)
/* 227 */       wireFormatParams.put(versionUrlParam, version);
/*     */   }
/*     */ 
/*     */   private void removeOldHitIfFull()
/*     */   {
/* 237 */     int hitsOverLimit = getNumStoredHits() - 2000 + 1;
/* 238 */     if (hitsOverLimit > 0) {
/* 239 */       List hitsToDelete = peekHits(hitsOverLimit);
/* 240 */       Log.wDebug("Store full, deleting " + hitsToDelete.size() + " hits to make room");
/* 241 */       deleteHits(hitsToDelete);
/*     */     }
/*     */   }
/*     */ 
/*     */   private void writeHitToDatabase(Map<String, String> hit, long hitTimeInMilliseconds, String path)
/*     */   {
/* 248 */     SQLiteDatabase db = getWritableDatabase("Error opening database for putHit");
/* 249 */     if (db == null) {
/* 250 */       return;
/*     */     }
/*     */ 
/* 253 */     ContentValues content = new ContentValues();
/*     */ 
/* 255 */     content.put("hit_string", generateHitString(hit));
/* 256 */     content.put("hit_time", Long.valueOf(hitTimeInMilliseconds));
/* 257 */     long appSystemId = 0L;
/* 258 */     if (hit.containsKey("AppUID"))
/*     */       try {
/* 260 */         appSystemId = Long.parseLong((String)hit.get("AppUID"));
/*     */       }
/*     */       catch (NumberFormatException e)
/*     */       {
/*     */       }
/* 265 */     content.put("hit_app_id", Long.valueOf(appSystemId));
/* 266 */     if (path == null) {
/* 267 */       path = "http://www.google-analytics.com/collect";
/*     */     }
/*     */ 
/* 270 */     if (path.length() == 0)
/*     */     {
/* 273 */       Log.w("empty path: not sending hit");
/* 274 */       return;
/*     */     }
/* 276 */     content.put("hit_url", path);
/*     */     try {
/* 278 */       db.insert("hits2", null, content);
/*     */ 
/* 281 */       this.mListener.reportStoreIsEmpty(false);
/*     */     } catch (SQLiteException e) {
/* 283 */       Log.w("Error storing hit");
/*     */     }
/*     */   }
/*     */ 
/*     */   public static String generateHitString(Map<String, String> urlParams) {
/* 288 */     List keyAndValues = new ArrayList(urlParams.size());
/* 289 */     for (Map.Entry entry : urlParams.entrySet()) {
/* 290 */       keyAndValues.add((String)entry.getKey() + "=" + HitBuilder.encode((String)entry.getValue()));
/*     */     }
/* 292 */     return TextUtils.join("&", keyAndValues);
/*     */   }
/*     */ 
/*     */   public List<Hit> peekHits(int maxHits)
/*     */   {
/* 304 */     SQLiteDatabase db = getWritableDatabase("Error opening database for peekHits");
/* 305 */     if (db == null) {
/* 306 */       return new ArrayList();
/*     */     }
/*     */ 
/* 309 */     Cursor cursor = null;
/* 310 */     List hits = new ArrayList();
/*     */     try
/*     */     {
/* 319 */       cursor = db.query("hits2", new String[] { "hit_id", "hit_time", "hit_url" }, null, null, null, null, String.format("%s ASC, %s ASC", new Object[] { "hit_url", "hit_id" }), Integer.toString(maxHits));
/*     */ 
/* 327 */       hits = new ArrayList();
/* 328 */       if (cursor.moveToFirst())
/*     */         do {
/* 330 */           Hit hit = new Hit(null, cursor.getLong(0), cursor.getLong(1));
/* 331 */           hit.setHitUrl(cursor.getString(2));
/* 332 */           hits.add(hit);
/* 333 */         }while (cursor.moveToNext());
/*     */     }
/*     */     catch (SQLiteException e) {
/* 336 */       Log.w("error in peekHits fetching hitIds: " + e.getMessage());
/* 337 */       return new ArrayList();
/*     */     } finally {
/* 339 */       if (cursor != null) {
/* 340 */         cursor.close();
/*     */       }
/*     */     }
/*     */ 
/* 344 */     int count = 0;
/*     */     try {
/* 346 */       cursor = db.query("hits2", new String[] { "hit_id", "hit_string" }, null, null, null, null, String.format("%s ASC", new Object[] { "hit_id" }), Integer.toString(maxHits));
/*     */       Object cw;
/* 354 */       if (cursor.moveToFirst()) {
/*     */         do {
/* 356 */           if ((cursor instanceof SQLiteCursor)) {
/* 357 */             cw = ((SQLiteCursor)cursor).getWindow();
/*     */ 
/* 361 */             if (((CursorWindow)cw).getNumRows() > 0)
/* 362 */               ((Hit)hits.get(count)).setHitString(cursor.getString(1));
/*     */             else
/* 364 */               Log.w("hitString for hitId " + ((Hit)hits.get(count)).getHitId() + " too large.  Hit will be deleted.");
/*     */           }
/*     */           else
/*     */           {
/* 368 */             ((Hit)hits.get(count)).setHitString(cursor.getString(1));
/*     */           }
/* 370 */           count++;
/* 371 */         }while (cursor.moveToNext());
/*     */       }
/* 373 */       return hits;
/*     */     } catch (SQLiteException e) {
/* 375 */       Log.w("error in peekHits fetching hitString: " + e.getMessage());
/*     */ 
/* 379 */       Object partialHits = new ArrayList();
/* 380 */       boolean foundOneBadHit = false;
/* 381 */       for (Hit hit : hits) {
/* 382 */         if (TextUtils.isEmpty(hit.getHitParams())) {
/* 383 */           if (foundOneBadHit) {
/*     */             break;
/*     */           }
/* 386 */           foundOneBadHit = true;
/*     */         }
/*     */ 
/* 389 */         ((List)partialHits).add(hit);
/*     */       }
/* 391 */       return (Iterator)partialHits;
/*     */     } finally {
/* 393 */       if (cursor != null)
/* 394 */         cursor.close();
/*     */     }
/*     */   }
/*     */ 
/*     */   @VisibleForTesting
/*     */   void setLastDeleteStaleHitsTime(long timeInMilliseconds)
/*     */   {
/* 401 */     this.mLastDeleteStaleHitsTime = timeInMilliseconds;
/*     */   }
/*     */ 
/*     */   int deleteStaleHits()
/*     */   {
/* 408 */     long now = this.mClock.currentTimeMillis();
/*     */ 
/* 410 */     if (now <= this.mLastDeleteStaleHitsTime + 86400000L) {
/* 411 */       return 0;
/*     */     }
/* 413 */     this.mLastDeleteStaleHitsTime = now;
/* 414 */     SQLiteDatabase db = getWritableDatabase("Error opening database for deleteStaleHits");
/* 415 */     if (db == null) {
/* 416 */       return 0;
/*     */     }
/* 418 */     long lastGoodTime = this.mClock.currentTimeMillis() - 2592000000L;
/* 419 */     int rslt = db.delete("hits2", "HIT_TIME < ?", new String[] { Long.toString(lastGoodTime) });
/* 420 */     this.mListener.reportStoreIsEmpty(getNumStoredHits() == 0);
/* 421 */     return rslt;
/*     */   }
/*     */ 
/*     */   public void deleteHits(Collection<Hit> hits)
/*     */   {
/* 430 */     if (hits == null) {
/* 431 */       throw new NullPointerException("hits cannot be null");
/*     */     }
/* 433 */     if (hits.isEmpty()) {
/* 434 */       return;
/*     */     }
/* 436 */     SQLiteDatabase db = getWritableDatabase("Error opening database for deleteHit");
/* 437 */     if (db == null) {
/* 438 */       return;
/*     */     }
/* 440 */     String[] ids = new String[hits.size()];
/* 441 */     String whereClause = String.format("HIT_ID in (%s)", new Object[] { TextUtils.join(",", Collections.nCopies(ids.length, "?")) });
/*     */ 
/* 443 */     int i = 0;
/* 444 */     for (Hit hit : hits)
/* 445 */       ids[(i++)] = Long.toString(hit.getHitId());
/*     */     try
/*     */     {
/* 448 */       db.delete("hits2", whereClause, ids);
/*     */ 
/* 451 */       this.mListener.reportStoreIsEmpty(getNumStoredHits() == 0);
/*     */     } catch (SQLiteException e) {
/* 453 */       Log.w("Error deleting hit " + hits);
/*     */     }
/*     */   }
/*     */ 
/*     */   int getNumStoredHits() {
/* 458 */     int numStoredHits = 0;
/* 459 */     SQLiteDatabase db = getWritableDatabase("Error opening database for requestNumHitsPending");
/* 460 */     if (db == null) {
/* 461 */       return numStoredHits;
/*     */     }
/* 463 */     Cursor cursor = null;
/*     */     try {
/* 465 */       cursor = db.rawQuery("SELECT COUNT(*) from hits2", null);
/* 466 */       if (cursor.moveToFirst())
/* 467 */         numStoredHits = (int)cursor.getLong(0);
/*     */     }
/*     */     catch (SQLiteException e) {
/* 470 */       Log.w("Error getting numStoredHits");
/*     */     } finally {
/* 472 */       if (cursor != null) {
/* 473 */         cursor.close();
/*     */       }
/*     */     }
/* 476 */     return numStoredHits;
/*     */   }
/*     */ 
/*     */   public void dispatch()
/*     */   {
/* 481 */     Log.vDebug("dispatch running...");
/*     */ 
/* 483 */     if (!this.mDispatcher.okToDispatch()) {
/* 484 */       return;
/*     */     }
/*     */ 
/* 487 */     List hits = peekHits(40);
/* 488 */     if (hits.isEmpty()) {
/* 489 */       Log.vDebug("...nothing to dispatch");
/* 490 */       this.mListener.reportStoreIsEmpty(true);
/* 491 */       return;
/*     */     }
/* 493 */     int hitsDispatched = this.mDispatcher.dispatchHits(hits);
/* 494 */     Log.vDebug("sent " + hitsDispatched + " of " + hits.size() + " hits");
/*     */ 
/* 499 */     deleteHits(hits.subList(0, Math.min(hitsDispatched, hits.size())));
/*     */ 
/* 503 */     if ((hitsDispatched == hits.size()) && (getNumStoredHits() > 0))
/* 504 */       GAServiceManager.getInstance().dispatch();
/*     */   }
/*     */ 
/*     */   public void close()
/*     */   {
/*     */     try
/*     */     {
/* 511 */       this.mDbHelper.getWritableDatabase().close();
/*     */     } catch (SQLiteException e) {
/* 513 */       Log.w("Error opening database for close");
/* 514 */       return;
/*     */     }
/*     */   }
/*     */ 
/*     */   @VisibleForTesting
/*     */   AnalyticsDatabaseHelper getHelper() {
/* 520 */     return this.mDbHelper;
/*     */   }
/*     */ 
/*     */   private SQLiteDatabase getWritableDatabase(String errorMessage)
/*     */   {
/* 531 */     SQLiteDatabase db = null;
/*     */     try {
/* 533 */       db = this.mDbHelper.getWritableDatabase();
/*     */     } catch (SQLiteException e) {
/* 535 */       Log.w(errorMessage);
/* 536 */       return null;
/*     */     }
/* 538 */     return db;
/*     */   }
/*     */ 
/*     */   @VisibleForTesting
/*     */   class AnalyticsDatabaseHelper extends SQLiteOpenHelper
/*     */   {
/*     */     private boolean mBadDatabase;
/* 550 */     private long mLastDatabaseCheckTime = 0L;
/*     */ 
/*     */     boolean isBadDatabase() {
/* 553 */       return this.mBadDatabase;
/*     */     }
/*     */ 
/*     */     void setBadDatabase(boolean badDatabase) {
/* 557 */       this.mBadDatabase = badDatabase;
/*     */     }
/*     */ 
/*     */     AnalyticsDatabaseHelper(Context context, String databaseName)
/*     */     {
/* 562 */       super(databaseName, null, 1);
/*     */     }
/*     */ 
/*     */     private boolean tablePresent(String table, SQLiteDatabase db)
/*     */     {
/* 577 */       Cursor cursor = null;
/*     */       try {
/* 579 */         cursor = db.query("SQLITE_MASTER", new String[] { "name" }, "name=?", new String[] { table }, null, null, null);
/*     */ 
/* 586 */         return cursor.moveToFirst();
/*     */       } catch (SQLiteException e) {
/* 588 */         Log.w("error querying for table " + table);
/* 589 */         return false;
/*     */       } finally {
/* 591 */         if (cursor != null)
/* 592 */           cursor.close();
/*     */       }
/*     */     }
/*     */ 
/*     */     public SQLiteDatabase getWritableDatabase()
/*     */     {
/* 606 */       if (this.mBadDatabase)
/*     */       {
/* 610 */         if (this.mLastDatabaseCheckTime + 3600000L > PersistentAnalyticsStore.this.mClock.currentTimeMillis())
/*     */         {
/* 612 */           throw new SQLiteException("Database creation failed");
/*     */         }
/*     */       }
/* 615 */       SQLiteDatabase db = null;
/* 616 */       this.mBadDatabase = true;
/* 617 */       this.mLastDatabaseCheckTime = PersistentAnalyticsStore.this.mClock.currentTimeMillis();
/*     */       try {
/* 619 */         db = super.getWritableDatabase();
/*     */       }
/*     */       catch (SQLiteException e) {
/* 622 */         PersistentAnalyticsStore.this.mContext.getDatabasePath(PersistentAnalyticsStore.this.mDatabaseName).delete();
/*     */       }
/* 624 */       if (db == null) {
/* 625 */         db = super.getWritableDatabase();
/*     */       }
/* 627 */       this.mBadDatabase = false;
/* 628 */       return db;
/*     */     }
/*     */ 
/*     */     public void onOpen(SQLiteDatabase db)
/*     */     {
/* 635 */       if (Build.VERSION.SDK_INT < 15) {
/* 636 */         Cursor cursor = db.rawQuery("PRAGMA journal_mode=memory", null);
/*     */         try
/*     */         {
/* 639 */           cursor.moveToFirst();
/*     */         } finally {
/* 641 */           cursor.close();
/*     */         }
/*     */       }
/* 644 */       if (!tablePresent("hits2", db))
/* 645 */         db.execSQL(PersistentAnalyticsStore.CREATE_HITS_TABLE);
/*     */       else
/* 647 */         validateColumnsPresent(db);
/*     */     }
/*     */ 
/*     */     private void validateColumnsPresent(SQLiteDatabase db)
/*     */     {
/* 660 */       Cursor c = db.rawQuery("SELECT * FROM hits2 WHERE 0", null);
/*     */ 
/* 662 */       Set columns = new HashSet();
/*     */       try {
/* 664 */         String[] columnNames = c.getColumnNames();
/* 665 */         for (int i = 0; i < columnNames.length; i++)
/* 666 */           columns.add(columnNames[i]);
/*     */       }
/*     */       finally {
/* 669 */         c.close();
/*     */       }
/*     */ 
/* 672 */       if ((!columns.remove("hit_id")) || (!columns.remove("hit_url")) || (!columns.remove("hit_string")) || (!columns.remove("hit_time")))
/*     */       {
/* 676 */         throw new SQLiteException("Database column missing");
/*     */       }
/*     */ 
/* 679 */       boolean needsAppId = !columns.remove("hit_app_id");
/*     */ 
/* 681 */       if (!columns.isEmpty()) {
/* 682 */         throw new SQLiteException("Database has extra columns");
/*     */       }
/* 684 */       if (needsAppId)
/* 685 */         db.execSQL("ALTER TABLE hits2 ADD COLUMN hit_app_id");
/*     */     }
/*     */ 
/*     */     public void onCreate(SQLiteDatabase db)
/*     */     {
/* 692 */       FutureApis.setOwnerOnlyReadWrite(db.getPath());
/*     */     }
/*     */ 
/*     */     public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion)
/*     */     {
/*     */     }
/*     */   }
/*     */ }

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\libGoogleAnalyticsV2.jar
 * Qualified Name:     com.google.analytics.tracking.android.PersistentAnalyticsStore
 * JD-Core Version:    0.6.2
 */
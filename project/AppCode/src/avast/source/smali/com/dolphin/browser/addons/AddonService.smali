.class public abstract Lcom/dolphin/browser/addons/AddonService;
.super Landroid/app/Service;
.source "AddonService.java"


# static fields
.field private static a:Lcom/dolphin/browser/addons/AddonService;


# instance fields
.field private b:Landroid/util/SparseArray;

.field private c:Landroid/util/SparseArray;

.field private d:I

.field private final e:Landroid/os/Handler;

.field private final f:Landroid/os/Messenger;

.field private final g:Lcom/dolphin/browser/addons/ah;

.field private h:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 54
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/addons/AddonService;->b:Landroid/util/SparseArray;

    .line 55
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/addons/AddonService;->c:Landroid/util/SparseArray;

    .line 77
    new-instance v0, Lcom/dolphin/browser/addons/d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/dolphin/browser/addons/d;-><init>(Lcom/dolphin/browser/addons/AddonService;Lcom/dolphin/browser/addons/d;)V

    iput-object v0, p0, Lcom/dolphin/browser/addons/AddonService;->e:Landroid/os/Handler;

    .line 81
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/dolphin/browser/addons/AddonService;->e:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/dolphin/browser/addons/AddonService;->f:Landroid/os/Messenger;

    .line 88
    new-instance v0, Lcom/dolphin/browser/addons/b;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/addons/b;-><init>(Lcom/dolphin/browser/addons/AddonService;)V

    iput-object v0, p0, Lcom/dolphin/browser/addons/AddonService;->g:Lcom/dolphin/browser/addons/ah;

    .line 49
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 305
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 306
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 307
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/high16 v2, 0x800

    invoke-static {p1, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 308
    return-object v0
.end method

.method static synthetic a(Lcom/dolphin/browser/addons/AddonService;)Lcom/dolphin/browser/addons/h;
    .locals 1
    .parameter

    .prologue
    .line 165
    invoke-direct {p0}, Lcom/dolphin/browser/addons/AddonService;->c()Lcom/dolphin/browser/addons/h;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/os/Message;Lcom/dolphin/browser/addons/h;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 214
    iget v0, p1, Landroid/os/Message;->what:I

    .line 215
    iget-object v1, p0, Lcom/dolphin/browser/addons/AddonService;->c:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/addons/bo;

    .line 216
    if-eqz v0, :cond_0

    .line 217
    invoke-interface {v0, p2}, Lcom/dolphin/browser/addons/bo;->a(Lcom/dolphin/browser/addons/h;)V

    .line 219
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/addons/AddonService;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 57
    iput p1, p0, Lcom/dolphin/browser/addons/AddonService;->d:I

    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/addons/AddonService;Landroid/os/Message;Lcom/dolphin/browser/addons/h;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 213
    invoke-direct {p0, p1, p2}, Lcom/dolphin/browser/addons/AddonService;->a(Landroid/os/Message;Lcom/dolphin/browser/addons/h;)V

    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/addons/AddonService;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 311
    invoke-direct {p0, p1}, Lcom/dolphin/browser/addons/AddonService;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 6
    .parameter

    .prologue
    .line 312
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 339
    :cond_0
    :goto_0
    return-void

    .line 316
    :cond_1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 317
    const-string v1, "action"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 318
    const-string v2, "Notification"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 319
    const-string v1, "value"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 320
    const-string v1, "clickAction"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 321
    const-string v2, "OpenURL"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 322
    const-string v1, "title"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 323
    const-string v2, "description"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 324
    const-string v3, "clickValue"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 325
    const-string v3, "url"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 327
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/addons/AddonService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 328
    new-instance v4, Landroid/app/Notification;

    invoke-direct {v4}, Landroid/app/Notification;-><init>()V

    .line 329
    const v5, 0x108008a

    iput v5, v4, Landroid/app/Notification;->icon:I

    .line 330
    invoke-direct {p0, p0, v3}, Lcom/dolphin/browser/addons/AddonService;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v4, p0, v1, v2, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 331
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v4, Landroid/app/Notification;->when:J

    .line 332
    iget v1, v4, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v4, Landroid/app/Notification;->flags:I

    .line 333
    const/4 v1, 0x2

    invoke-static {v1}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v4, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 334
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 337
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private final b()I
    .locals 2

    .prologue
    .line 158
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 159
    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 160
    :cond_0
    iget v0, p0, Lcom/dolphin/browser/addons/AddonService;->d:I

    .line 162
    :cond_1
    return v0
.end method

.method static synthetic b(Lcom/dolphin/browser/addons/AddonService;)Landroid/util/SparseArray;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/dolphin/browser/addons/AddonService;->b:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic c(Lcom/dolphin/browser/addons/AddonService;)I
    .locals 1
    .parameter

    .prologue
    .line 155
    invoke-direct {p0}, Lcom/dolphin/browser/addons/AddonService;->b()I

    move-result v0

    return v0
.end method

.method private c()Lcom/dolphin/browser/addons/h;
    .locals 3

    .prologue
    .line 166
    invoke-direct {p0}, Lcom/dolphin/browser/addons/AddonService;->b()I

    move-result v1

    .line 167
    iget-object v0, p0, Lcom/dolphin/browser/addons/AddonService;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/addons/h;

    .line 168
    if-nez v0, :cond_0

    .line 169
    new-instance v0, Lcom/dolphin/browser/addons/h;

    invoke-direct {v0, v1}, Lcom/dolphin/browser/addons/h;-><init>(I)V

    .line 170
    iget-object v2, p0, Lcom/dolphin/browser/addons/AddonService;->b:Landroid/util/SparseArray;

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 172
    :cond_0
    return-object v0
.end method

.method static synthetic d(Lcom/dolphin/browser/addons/AddonService;)I
    .locals 1
    .parameter

    .prologue
    .line 57
    iget v0, p0, Lcom/dolphin/browser/addons/AddonService;->d:I

    return v0
.end method

.method private d()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 255
    const-string v0, "android.permission.INTERNET"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/dolphin/browser/addons/AddonService;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    .line 256
    const/4 v1, -0x1

    .line 255
    if-ne v0, v1, :cond_1

    .line 281
    :cond_0
    :goto_0
    return-void

    .line 259
    :cond_1
    const-string v0, "update"

    invoke-virtual {p0, v0, v7}, Lcom/dolphin/browser/addons/AddonService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 260
    const-string v1, "lct"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/dolphin/browser/addons/AddonService;->h:J

    .line 262
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 263
    iget-wide v3, p0, Lcom/dolphin/browser/addons/AddonService;->h:J

    sub-long v3, v1, v3

    const-wide/32 v5, 0x5265c00

    cmp-long v3, v3, v5

    if-ltz v3, :cond_0

    .line 266
    iput-wide v1, p0, Lcom/dolphin/browser/addons/AddonService;->h:J

    .line 267
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "lct"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 268
    new-instance v0, Lcom/dolphin/browser/addons/c;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/addons/c;-><init>(Lcom/dolphin/browser/addons/AddonService;)V

    new-array v1, v7, [Ljava/lang/Void;

    .line 280
    invoke-virtual {v0, v1}, Lcom/dolphin/browser/addons/c;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private e()Ljava/lang/String;
    .locals 4

    .prologue
    .line 285
    :try_start_0
    invoke-virtual {p0}, Lcom/dolphin/browser/addons/AddonService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dolphin/browser/addons/AddonService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 286
    const-string v1, "http://pnsen.dolphin-browser.com/notification/android"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 287
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "message.json"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 288
    const-string v2, "pname"

    invoke-virtual {p0}, Lcom/dolphin/browser/addons/AddonService;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 289
    const-string v2, "version"

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 290
    const-string v1, "locale"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 291
    const-string v1, "t"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 292
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 293
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 294
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 295
    invoke-virtual {v1, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 296
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    .line 297
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 301
    :goto_0
    return-object v0

    .line 299
    :catch_0
    move-exception v0

    .line 301
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic e(Lcom/dolphin/browser/addons/AddonService;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 283
    invoke-direct {p0}, Lcom/dolphin/browser/addons/AddonService;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Lcom/dolphin/browser/addons/h;
    .locals 2

    .prologue
    .line 181
    invoke-direct {p0}, Lcom/dolphin/browser/addons/AddonService;->b()I

    move-result v0

    .line 182
    iget-object v1, p0, Lcom/dolphin/browser/addons/AddonService;->b:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/addons/h;

    return-object v0
.end method

.method protected abstract a(Lcom/dolphin/browser/addons/h;)V
.end method

.method protected abstract b(Lcom/dolphin/browser/addons/h;)V
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, Lcom/dolphin/browser/addons/AddonService;->g:Lcom/dolphin/browser/addons/ah;

    invoke-interface {v0}, Lcom/dolphin/browser/addons/ah;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 196
    sput-object p0, Lcom/dolphin/browser/addons/AddonService;->a:Lcom/dolphin/browser/addons/AddonService;

    .line 197
    invoke-direct {p0}, Lcom/dolphin/browser/addons/AddonService;->d()V

    .line 198
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 202
    const/4 v0, 0x0

    sput-object v0, Lcom/dolphin/browser/addons/AddonService;->a:Lcom/dolphin/browser/addons/AddonService;

    .line 203
    return-void
.end method

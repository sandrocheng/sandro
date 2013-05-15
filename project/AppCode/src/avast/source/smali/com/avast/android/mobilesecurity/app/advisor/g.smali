.class public Lcom/avast/android/mobilesecurity/app/advisor/g;
.super Lcom/avast/android/mobilesecurity/scan/l;
.source "AdvisorScanTask.java"


# static fields
.field public static final a:Ljava/util/Map;


# instance fields
.field private b:Landroid/content/pm/PackageManager;

.field private c:Ljava/lang/Integer;

.field private n:Landroid/content/pm/PackageInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 97
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 98
    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    sget-object v2, Lcom/avast/android/mobilesecurity/app/advisor/h;->a:Lcom/avast/android/mobilesecurity/app/advisor/h;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    sget-object v2, Lcom/avast/android/mobilesecurity/app/advisor/h;->a:Lcom/avast/android/mobilesecurity/app/advisor/h;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    const-string v1, "android.permission.READ_PHONE_STATE"

    sget-object v2, Lcom/avast/android/mobilesecurity/app/advisor/h;->b:Lcom/avast/android/mobilesecurity/app/advisor/h;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    const-string v1, "android.permission.READ_SMS"

    sget-object v2, Lcom/avast/android/mobilesecurity/app/advisor/h;->c:Lcom/avast/android/mobilesecurity/app/advisor/h;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    const-string v1, "android.permission.RECEIVE_SMS"

    sget-object v2, Lcom/avast/android/mobilesecurity/app/advisor/h;->c:Lcom/avast/android/mobilesecurity/app/advisor/h;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    const-string v1, "android.permission.RECEIVE_MMS"

    sget-object v2, Lcom/avast/android/mobilesecurity/app/advisor/h;->c:Lcom/avast/android/mobilesecurity/app/advisor/h;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    const-string v1, "android.permission.SEND_SMS"

    sget-object v2, Lcom/avast/android/mobilesecurity/app/advisor/h;->c:Lcom/avast/android/mobilesecurity/app/advisor/h;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    const-string v1, "android.permission.WRITE_SMS"

    sget-object v2, Lcom/avast/android/mobilesecurity/app/advisor/h;->c:Lcom/avast/android/mobilesecurity/app/advisor/h;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    const-string v1, "android.permission.RECEIVE_WAP_PUSH"

    sget-object v2, Lcom/avast/android/mobilesecurity/app/advisor/h;->c:Lcom/avast/android/mobilesecurity/app/advisor/h;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    const-string v1, "android.permission.READ_CONTACTS"

    sget-object v2, Lcom/avast/android/mobilesecurity/app/advisor/h;->d:Lcom/avast/android/mobilesecurity/app/advisor/h;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    const-string v1, "android.permission.WRITE_CONTACTS"

    sget-object v2, Lcom/avast/android/mobilesecurity/app/advisor/h;->d:Lcom/avast/android/mobilesecurity/app/advisor/h;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    const-string v1, "android.permission.GET_ACCOUNTS"

    sget-object v2, Lcom/avast/android/mobilesecurity/app/advisor/h;->e:Lcom/avast/android/mobilesecurity/app/advisor/h;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    const-string v1, "android.permission.MANAGE_ACCOUNTS"

    sget-object v2, Lcom/avast/android/mobilesecurity/app/advisor/h;->e:Lcom/avast/android/mobilesecurity/app/advisor/h;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    const-string v1, "android.permission.AUTHENTICATE_ACCOUNTS"

    sget-object v2, Lcom/avast/android/mobilesecurity/app/advisor/h;->e:Lcom/avast/android/mobilesecurity/app/advisor/h;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    const-string v1, "android.permission.ACCOUNT_MANAGER"

    sget-object v2, Lcom/avast/android/mobilesecurity/app/advisor/h;->e:Lcom/avast/android/mobilesecurity/app/advisor/h;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    sget-object v2, Lcom/avast/android/mobilesecurity/app/advisor/h;->f:Lcom/avast/android/mobilesecurity/app/advisor/h;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/avast/android/mobilesecurity/app/advisor/g;->a:Ljava/util/Map;

    .line 116
    return-void
.end method

.method public constructor <init>(Lcom/avast/android/mobilesecurity/scan/ScanService;Landroid/os/Bundle;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 124
    invoke-direct {p0, p1, p2}, Lcom/avast/android/mobilesecurity/scan/l;-><init>(Lcom/avast/android/mobilesecurity/scan/ScanService;Landroid/os/Bundle;)V

    .line 125
    new-instance v0, Lcom/avast/android/mobilesecurity/scan/ScanProgress;

    const v1, 0x7f0c01eb

    invoke-virtual {p1, v1}, Lcom/avast/android/mobilesecurity/scan/ScanService;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0c026f

    invoke-virtual {p1, v2}, Lcom/avast/android/mobilesecurity/scan/ScanService;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x64

    invoke-direct {v0, v1, v2, v3}, Lcom/avast/android/mobilesecurity/scan/ScanProgress;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/advisor/g;->e:Lcom/avast/android/mobilesecurity/scan/ScanProgress;

    .line 127
    if-eqz p2, :cond_0

    .line 128
    const-string v0, "packageInfo"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/advisor/g;->n:Landroid/content/pm/PackageInfo;

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/advisor/g;->d:Lcom/avast/android/mobilesecurity/scan/ScanService;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/scan/ScanService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/advisor/g;->b:Landroid/content/pm/PackageManager;

    .line 131
    return-void
.end method

.method private a(Landroid/content/ContentResolver;Lcom/avast/android/mobilesecurity/app/advisor/h;)J
    .locals 8
    .parameter
    .parameter

    .prologue
    const-wide/16 v6, 0x0

    const/4 v3, 0x0

    .line 345
    invoke-virtual {p2}, Lcom/avast/android/mobilesecurity/app/advisor/h;->a()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/avast/android/mobilesecurity/f;->a(J)Landroid/net/Uri;

    move-result-object v1

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v0

    move-object v0, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 349
    if-eqz v2, :cond_2

    .line 350
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 351
    const-string v0, "_id"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 353
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 355
    :goto_1
    cmp-long v2, v0, v6

    if-nez v2, :cond_0

    .line 356
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 357
    const-string v1, "_id"

    invoke-virtual {p2}, Lcom/avast/android/mobilesecurity/app/advisor/h;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 358
    const-string v1, "name"

    invoke-virtual {p2}, Lcom/avast/android/mobilesecurity/app/advisor/h;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    invoke-static {}, Lcom/avast/android/mobilesecurity/f;->a()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 360
    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 362
    :cond_0
    return-wide v0

    :cond_1
    move-wide v0, v6

    goto :goto_0

    :cond_2
    move-wide v0, v6

    goto :goto_1
.end method

.method private a(Landroid/content/Intent;)V
    .locals 3
    .parameter

    .prologue
    const/16 v2, 0x40

    .line 280
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/advisor/g;->d:Lcom/avast/android/mobilesecurity/scan/ScanService;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/scan/ScanService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 281
    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/avast/android/mobilesecurity/app/advisor/g;->a(Ljava/util/List;)V

    .line 282
    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/avast/android/mobilesecurity/app/advisor/g;->a(Ljava/util/List;)V

    .line 283
    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/avast/android/mobilesecurity/app/advisor/g;->a(Ljava/util/List;)V

    .line 284
    return-void
.end method

.method private a(Landroid/content/pm/ApplicationInfo;)V
    .locals 6
    .parameter

    .prologue
    .line 230
    :try_start_0
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/advisor/g;->b:Landroid/content/pm/PackageManager;

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v2, 0x1066

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 234
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 235
    if-nez v2, :cond_1

    .line 256
    :cond_0
    :goto_0
    return-void

    .line 239
    :cond_1
    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 240
    iget-object v4, p0, Lcom/avast/android/mobilesecurity/app/advisor/g;->b:Landroid/content/pm/PackageManager;

    iget-object v5, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v0, v5}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_3

    .line 239
    :cond_2
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 245
    :cond_3
    sget-object v4, Lcom/avast/android/mobilesecurity/app/advisor/g;->a:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/app/advisor/h;

    .line 246
    if-eqz v0, :cond_2

    .line 250
    iget-object v4, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v5, p0, Lcom/avast/android/mobilesecurity/app/advisor/g;->b:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v5}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v0, v4, v5}, Lcom/avast/android/mobilesecurity/app/advisor/g;->a(Lcom/avast/android/mobilesecurity/app/advisor/h;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 253
    :catch_0
    move-exception v0

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "package info for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cannot be found"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->e(Ljava/lang/String;)I

    goto :goto_0
.end method

.method private a(Ljava/util/List;)V
    .locals 5
    .parameter

    .prologue
    .line 294
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/advisor/g;->d:Lcom/avast/android/mobilesecurity/scan/ScanService;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/scan/ScanService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 295
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 296
    sget-object v3, Lcom/avast/android/mobilesecurity/app/advisor/h;->g:Lcom/avast/android/mobilesecurity/app/advisor/h;

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0, v1}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v4, v0}, Lcom/avast/android/mobilesecurity/app/advisor/g;->a(Lcom/avast/android/mobilesecurity/app/advisor/h;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 299
    :cond_0
    return-void
.end method

.method private a(Ljava/util/List;J)V
    .locals 8
    .parameter
    .parameter

    .prologue
    .line 208
    const/4 v0, 0x0

    .line 209
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/advisor/g;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 210
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 212
    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/advisor/g;->e:Lcom/avast/android/mobilesecurity/scan/ScanProgress;

    iget-object v4, p0, Lcom/avast/android/mobilesecurity/app/advisor/g;->b:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/avast/android/mobilesecurity/scan/ScanProgress;->c:Ljava/lang/String;

    .line 213
    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/advisor/g;->e:Lcom/avast/android/mobilesecurity/scan/ScanProgress;

    iput v1, v3, Lcom/avast/android/mobilesecurity/scan/ScanProgress;->f:I

    .line 214
    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/advisor/g;->e:Lcom/avast/android/mobilesecurity/scan/ScanProgress;

    iput v1, v3, Lcom/avast/android/mobilesecurity/scan/ScanProgress;->e:I

    .line 215
    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/advisor/g;->e:Lcom/avast/android/mobilesecurity/scan/ScanProgress;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, p2

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v4, v4

    iput v4, v3, Lcom/avast/android/mobilesecurity/scan/ScanProgress;->h:I

    .line 216
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/advisor/g;->i()V

    .line 217
    add-int/lit8 v1, v1, 0x1

    .line 219
    invoke-direct {p0, v0}, Lcom/avast/android/mobilesecurity/app/advisor/g;->a(Landroid/content/pm/ApplicationInfo;)V

    goto :goto_0

    .line 221
    :cond_0
    return-void
.end method

.method private a(Lcom/avast/android/mobilesecurity/app/advisor/h;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v10, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 310
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/advisor/g;->d:Lcom/avast/android/mobilesecurity/scan/ScanService;

    invoke-virtual {v2}, Lcom/avast/android/mobilesecurity/scan/ScanService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 311
    invoke-direct {p0, v2, p1}, Lcom/avast/android/mobilesecurity/app/advisor/g;->a(Landroid/content/ContentResolver;Lcom/avast/android/mobilesecurity/app/advisor/h;)J

    move-result-wide v3

    .line 313
    cmp-long v5, v3, v10

    if-nez v5, :cond_1

    .line 334
    :cond_0
    :goto_0
    return v0

    .line 317
    :cond_1
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 318
    const-string v6, "groupId"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 319
    const-string v6, "name"

    invoke-virtual {v5, v6, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    const-string v6, "packageName"

    invoke-virtual {v5, v6, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    invoke-static {}, Lcom/avast/android/mobilesecurity/e;->a()Landroid/net/Uri;

    move-result-object v6

    const-string v7, "groupId = ? AND packageName = ?"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v0

    aput-object p2, v8, v1

    invoke-virtual {v2, v6, v5, v7, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    .line 325
    if-lez v6, :cond_2

    move v0, v1

    .line 326
    goto :goto_0

    .line 328
    :cond_2
    invoke-static {}, Lcom/avast/android/mobilesecurity/e;->a()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v2, v6, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v5

    .line 329
    invoke-static {v5}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v5

    cmp-long v5, v5, v10

    if-lez v5, :cond_0

    .line 330
    invoke-static {v3, v4}, Lcom/avast/android/mobilesecurity/f;->a(J)Landroid/net/Uri;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    move v0, v1

    .line 331
    goto :goto_0
.end method

.method private f()V
    .locals 3

    .prologue
    .line 264
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 266
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    const-string v2, "http"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 267
    invoke-direct {p0, v0}, Lcom/avast/android/mobilesecurity/app/advisor/g;->a(Landroid/content/Intent;)V

    .line 269
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    const-string v2, "https"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 270
    invoke-direct {p0, v0}, Lcom/avast/android/mobilesecurity/app/advisor/g;->a(Landroid/content/Intent;)V

    .line 271
    return-void
.end method


# virtual methods
.method protected a()I
    .locals 1

    .prologue
    .line 368
    const v0, 0x7f0b0008

    return v0
.end method

.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 12
    .parameter

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v4, 0x0

    .line 135
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/advisor/g;->d:Lcom/avast/android/mobilesecurity/scan/ScanService;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/scan/ScanService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 137
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/advisor/g;->n:Landroid/content/pm/PackageInfo;

    if-nez v0, :cond_1

    .line 139
    const/16 v0, 0x80

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 143
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/advisor/g;->d:Lcom/avast/android/mobilesecurity/scan/ScanService;

    invoke-virtual {v1}, Lcom/avast/android/mobilesecurity/scan/ScanService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {}, Lcom/avast/android/mobilesecurity/e;->a()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 144
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/advisor/g;->d:Lcom/avast/android/mobilesecurity/scan/ScanService;

    invoke-virtual {v1}, Lcom/avast/android/mobilesecurity/scan/ScanService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {}, Lcom/avast/android/mobilesecurity/f;->a()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 145
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/advisor/g;->d:Lcom/avast/android/mobilesecurity/scan/ScanService;

    invoke-virtual {v1}, Lcom/avast/android/mobilesecurity/scan/ScanService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {}, Lcom/avast/android/mobilesecurity/c;->a()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 146
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/advisor/g;->d:Lcom/avast/android/mobilesecurity/scan/ScanService;

    invoke-virtual {v1}, Lcom/avast/android/mobilesecurity/scan/ScanService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {}, Lcom/avast/android/mobilesecurity/d;->a()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-object v6, v0

    .line 154
    :goto_0
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 156
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 157
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    const-string v2, "/system"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 149
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 150
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/advisor/g;->n:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/advisor/g;->d:Lcom/avast/android/mobilesecurity/scan/ScanService;

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/advisor/g;->n:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/avast/android/mobilesecurity/app/advisor/AdvisorScanService;->a(Landroid/content/Context;Ljava/lang/String;)V

    move-object v6, v0

    goto :goto_0

    .line 162
    :cond_2
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/advisor/g;->e:Lcom/avast/android/mobilesecurity/scan/ScanProgress;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    iput v1, v0, Lcom/avast/android/mobilesecurity/scan/ScanProgress;->d:I

    .line 165
    :try_start_0
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/advisor/g;->d:Lcom/avast/android/mobilesecurity/scan/ScanService;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/engine/i;->a(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/advisor/g;->c:Ljava/lang/Integer;

    .line 167
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 168
    invoke-direct {p0, v6, v8, v9}, Lcom/avast/android/mobilesecurity/app/advisor/g;->a(Ljava/util/List;J)V

    .line 169
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/advisor/g;->f()V

    .line 171
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/advisor/g;->d:Lcom/avast/android/mobilesecurity/scan/ScanService;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;->a(Landroid/content/Context;)Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;

    move-result-object v0

    .line 172
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/advisor/g;->n:Landroid/content/pm/PackageInfo;

    if-eqz v1, :cond_3

    .line 173
    sget-object v1, Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;->C:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/avast/android/mobilesecurity/app/advisor/g;->n:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/avast/android/mobilesecurity/app/advisor/g;->n:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v5, 0x0

    const-wide/16 v6, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;->a(Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 180
    :goto_2
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/advisor/g;->e:Lcom/avast/android/mobilesecurity/scan/ScanProgress;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/advisor/g;->e:Lcom/avast/android/mobilesecurity/scan/ScanProgress;

    iget v1, v1, Lcom/avast/android/mobilesecurity/scan/ScanProgress;->d:I

    iput v1, v0, Lcom/avast/android/mobilesecurity/scan/ScanProgress;->e:I

    .line 181
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/advisor/g;->e:Lcom/avast/android/mobilesecurity/scan/ScanProgress;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, v8

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-int v1, v1

    iput v1, v0, Lcom/avast/android/mobilesecurity/scan/ScanProgress;->h:I

    .line 182
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/advisor/g;->i()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/advisor/g;->d:Lcom/avast/android/mobilesecurity/scan/ScanService;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/advisor/g;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/avast/android/mobilesecurity/engine/i;->a(Landroid/content/Context;I)V

    .line 190
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/advisor/g;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/advisor/g;->n:Landroid/content/pm/PackageInfo;

    if-nez v0, :cond_4

    .line 191
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/advisor/g;->d:Lcom/avast/android/mobilesecurity/scan/ScanService;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/scan/ScanService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/avast/android/generic/ae;

    invoke-static {v0, v1}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/ae;

    .line 192
    const-string v1, "paDone"

    invoke-virtual {v0, v1, v10}, Lcom/avast/android/generic/ae;->a(Ljava/lang/String;Z)V

    .line 193
    invoke-virtual {v0}, Lcom/avast/android/generic/ae;->b()Z

    .line 194
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 196
    :goto_3
    return-object v0

    .line 176
    :cond_3
    :try_start_1
    sget-object v1, Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;->C:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    int-to-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;->a(Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 183
    :catch_0
    move-exception v0

    .line 184
    :try_start_2
    const-string v1, "Error during Privacy Advisor scan."

    invoke-static {v1, v0}, Lcom/avast/android/generic/util/m;->b(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 185
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 187
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/advisor/g;->d:Lcom/avast/android/mobilesecurity/scan/ScanService;

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/advisor/g;->c:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/avast/android/mobilesecurity/engine/i;->a(Landroid/content/Context;I)V

    goto :goto_3

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/advisor/g;->d:Lcom/avast/android/mobilesecurity/scan/ScanService;

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/advisor/g;->c:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/avast/android/mobilesecurity/engine/i;->a(Landroid/content/Context;I)V

    throw v0

    .line 196
    :cond_4
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_3
.end method

.method protected b()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 373
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 374
    invoke-static {}, Lcom/avast/android/mobilesecurity/f;->a()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 375
    return-object v0
.end method

.method protected c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 385
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/advisor/g;->d:Lcom/avast/android/mobilesecurity/scan/ScanService;

    const v1, 0x7f0c026f

    invoke-virtual {v0, v1}, Lcom/avast/android/mobilesecurity/scan/ScanService;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 390
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/advisor/g;->d:Lcom/avast/android/mobilesecurity/scan/ScanService;

    const v1, 0x7f0c01eb

    invoke-virtual {v0, v1}, Lcom/avast/android/mobilesecurity/scan/ScanService;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 51
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/avast/android/mobilesecurity/app/advisor/g;->a([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected e()Z
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/advisor/g;->n:Landroid/content/pm/PackageInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

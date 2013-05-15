.class public Lcom/avast/android/mobilesecurity/app/filter/core/PhoneStateChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PhoneStateChangeReceiver.java"


# static fields
.field private static b:Ljava/lang/reflect/Method;

.field private static c:Ljava/lang/reflect/Method;

.field private static d:Ljava/lang/reflect/Method;

.field private static e:Ljava/lang/Object;

.field private static f:Landroid/media/AudioManager;


# instance fields
.field a:Landroid/os/Handler;

.field private g:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 39
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/core/PhoneStateChangeReceiver;->a:Landroid/os/Handler;

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/filter/core/PhoneStateChangeReceiver;->g:Z

    return-void
.end method

.method static synthetic a()Landroid/media/AudioManager;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/avast/android/mobilesecurity/app/filter/core/PhoneStateChangeReceiver;->f:Landroid/media/AudioManager;

    return-object v0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    .line 208
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 211
    if-eqz p2, :cond_2

    .line 212
    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const-string v3, "number = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    const-string v5, "date DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 223
    :goto_0
    if-eqz v1, :cond_4

    .line 224
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PhoneCallBlocker: removeItemFromSystemCallLog() - logs with number + "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " found:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 228
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 229
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PhoneCallBlocker: removeItemFromSystemCallLog() - clear item from system log, id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    .line 231
    sget-object v4, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "_id = ?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v7

    invoke-virtual {v0, v4, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 236
    :cond_0
    if-eqz v1, :cond_1

    .line 237
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 250
    :cond_1
    :goto_1
    return-void

    .line 217
    :cond_2
    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const-string v3, "number IS NULL"

    const/4 v4, 0x0

    const-string v5, "date DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    goto :goto_0

    .line 236
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_3

    .line 237
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 243
    :catch_0
    move-exception v0

    .line 244
    invoke-static {}, La/a/a/a/a/a;->a()La/a/a/a/a/a;

    move-result-object v1

    const-string v2, "PhoneStateChangeReceiver.removeItemFromSystemCallLog() failed"

    invoke-virtual {v1, v2, v0}, La/a/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 240
    :cond_4
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PhoneCallBlocker: removeItemFromSystemCallLog() - logs with number + "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " not found"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/app/filter/core/PhoneStateChangeReceiver;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/avast/android/mobilesecurity/app/filter/core/PhoneStateChangeReceiver;->b(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/app/filter/core/PhoneStateChangeReceiver;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/avast/android/mobilesecurity/app/filter/core/PhoneStateChangeReceiver;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Z
    .locals 8
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 253
    const-class v4, Lcom/avast/android/mobilesecurity/app/filter/core/PhoneStateChangeReceiver;

    monitor-enter v4

    :try_start_0
    sget-object v0, Lcom/avast/android/mobilesecurity/app/filter/core/PhoneStateChangeReceiver;->b:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/avast/android/mobilesecurity/app/filter/core/PhoneStateChangeReceiver;->e:Ljava/lang/Object;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/avast/android/mobilesecurity/app/filter/core/PhoneStateChangeReceiver;->c:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/avast/android/mobilesecurity/app/filter/core/PhoneStateChangeReceiver;->d:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/avast/android/mobilesecurity/app/filter/core/PhoneStateChangeReceiver;->f:Landroid/media/AudioManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    move v0, v2

    .line 286
    :goto_0
    monitor-exit v4

    return v0

    .line 257
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 260
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    sput-object v1, Lcom/avast/android/mobilesecurity/app/filter/core/PhoneStateChangeReceiver;->f:Landroid/media/AudioManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 265
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 267
    const-string v5, "getITelephony"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 269
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 271
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lcom/avast/android/mobilesecurity/app/filter/core/PhoneStateChangeReceiver;->e:Ljava/lang/Object;

    .line 273
    sget-object v0, Lcom/avast/android/mobilesecurity/app/filter/core/PhoneStateChangeReceiver;->e:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 275
    const-string v1, "endCall"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/avast/android/mobilesecurity/app/filter/core/PhoneStateChangeReceiver;->b:Ljava/lang/reflect/Method;

    .line 276
    const-string v1, "setRadio"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v0, v1, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/avast/android/mobilesecurity/app/filter/core/PhoneStateChangeReceiver;->c:Ljava/lang/reflect/Method;

    .line 278
    const-string v1, "isRadioOn"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/avast/android/mobilesecurity/app/filter/core/PhoneStateChangeReceiver;->d:Ljava/lang/reflect/Method;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move v0, v2

    .line 279
    goto :goto_0

    .line 280
    :catch_0
    move-exception v0

    .line 281
    const/4 v0, 0x0

    :try_start_3
    sput-object v0, Lcom/avast/android/mobilesecurity/app/filter/core/PhoneStateChangeReceiver;->b:Ljava/lang/reflect/Method;

    .line 282
    const/4 v0, 0x0

    sput-object v0, Lcom/avast/android/mobilesecurity/app/filter/core/PhoneStateChangeReceiver;->c:Ljava/lang/reflect/Method;

    .line 283
    const/4 v0, 0x0

    sput-object v0, Lcom/avast/android/mobilesecurity/app/filter/core/PhoneStateChangeReceiver;->d:Ljava/lang/reflect/Method;

    .line 284
    const/4 v0, 0x0

    sput-object v0, Lcom/avast/android/mobilesecurity/app/filter/core/PhoneStateChangeReceiver;->e:Ljava/lang/Object;

    .line 285
    const/4 v0, 0x0

    sput-object v0, Lcom/avast/android/mobilesecurity/app/filter/core/PhoneStateChangeReceiver;->f:Landroid/media/AudioManager;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v0, v3

    .line 286
    goto/16 :goto_0

    .line 253
    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/app/filter/core/PhoneStateChangeReceiver;)Z
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/filter/core/PhoneStateChangeReceiver;->g:Z

    return v0
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/app/filter/core/PhoneStateChangeReceiver;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/avast/android/mobilesecurity/app/filter/core/PhoneStateChangeReceiver;->g:Z

    return p1
.end method

.method static synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/avast/android/mobilesecurity/app/filter/core/PhoneStateChangeReceiver;->e:Ljava/lang/Object;

    return-object v0
.end method

.method private b(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 139
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 140
    invoke-static {p1}, Lcom/avast/android/mobilesecurity/app/filter/core/PhoneStateChangeReceiver;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    :try_start_0
    sget-object v0, Lcom/avast/android/mobilesecurity/app/filter/core/PhoneStateChangeReceiver;->b:Ljava/lang/reflect/Method;

    sget-object v2, Lcom/avast/android/mobilesecurity/app/filter/core/PhoneStateChangeReceiver;->e:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 148
    const-string v0, "PhoneCallBlocker: endCall() doesn\'t work"

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    .line 149
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/filter/core/PhoneStateChangeReceiver;->e()V

    .line 151
    :cond_0
    return-void

    .line 143
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic c()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/avast/android/mobilesecurity/app/filter/core/PhoneStateChangeReceiver;->d:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic d()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/avast/android/mobilesecurity/app/filter/core/PhoneStateChangeReceiver;->c:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method private e()V
    .locals 6

    .prologue
    .line 163
    :try_start_0
    sget-object v0, Lcom/avast/android/mobilesecurity/app/filter/core/PhoneStateChangeReceiver;->c:Ljava/lang/reflect/Method;

    sget-object v1, Lcom/avast/android/mobilesecurity/app/filter/core/PhoneStateChangeReceiver;->e:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 165
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PhoneCallBlocker: setRadio(false) result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    .line 167
    new-instance v0, Lcom/avast/android/mobilesecurity/app/filter/core/p;

    invoke-direct {v0, p0}, Lcom/avast/android/mobilesecurity/app/filter/core/p;-><init>(Lcom/avast/android/mobilesecurity/app/filter/core/PhoneStateChangeReceiver;)V

    .line 189
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/filter/core/PhoneStateChangeReceiver;->a:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    :goto_0
    return-void

    .line 191
    :catch_0
    move-exception v0

    .line 192
    const-string v1, "PhoneCallBlocker: failed"

    invoke-static {v1, v0}, Lcom/avast/android/generic/util/m;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 193
    invoke-static {}, Lcom/avast/android/generic/util/ga/a;->a()Lcom/google/analytics/tracking/android/bo;

    move-result-object v1

    const-string v2, "error"

    const-string v3, "LG alternative endCall failed"

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v1, v2, v3, v0, v4}, Lcom/google/analytics/tracking/android/bo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 49
    .line 50
    :try_start_0
    const-string v0, "state"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 52
    sget-object v1, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    const-string v0, "PhoneStateChangeReceiver: call state changed to IDLE"

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    .line 129
    :goto_0
    return-void

    .line 55
    :cond_0
    sget-object v1, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    const-string v0, "PhoneStateChangeReceiver: call state changed to OFFHOOK"

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 126
    :catch_0
    move-exception v0

    .line 127
    invoke-static {}, La/a/a/a/a/a;->a()La/a/a/a/a/a;

    move-result-object v1

    invoke-virtual {v1, v0}, La/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 59
    :cond_1
    :try_start_1
    const-string v0, "PhoneStateChangeReceiver: call state changed to RING"

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    .line 60
    const-string v0, "incoming_number"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 64
    invoke-static {p1}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;->a(Landroid/content/Context;)Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;

    move-result-object v1

    .line 66
    new-instance v2, Lcom/avast/android/mobilesecurity/app/filter/core/n;

    invoke-direct {v2, p0, p1, v1}, Lcom/avast/android/mobilesecurity/app/filter/core/n;-><init>(Lcom/avast/android/mobilesecurity/app/filter/core/PhoneStateChangeReceiver;Landroid/content/Context;Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;)V

    .line 120
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 121
    invoke-virtual {v2, v0}, Lcom/avast/android/mobilesecurity/app/filter/core/f;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 123
    :cond_2
    invoke-virtual {v2}, Lcom/avast/android/mobilesecurity/app/filter/core/f;->a()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

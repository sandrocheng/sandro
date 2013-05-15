.class public Lcom/avast/android/mobilesecurity/service/UpdateService;
.super Landroid/app/Service;
.source "UpdateService.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field private a:Lcom/avast/android/mobilesecurity/t;

.field private b:Landroid/support/v4/a/p;

.field private c:Landroid/os/Looper;

.field private d:Landroid/os/Handler;

.field private e:Lcom/avast/android/mobilesecurity/engine/af;

.field private f:Landroid/os/Handler;

.field private g:Z

.field private h:Z

.field private i:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/service/UpdateService;Lcom/avast/android/mobilesecurity/engine/af;)Lcom/avast/android/mobilesecurity/engine/af;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/service/UpdateService;->e:Lcom/avast/android/mobilesecurity/engine/af;

    return-object p1
.end method

.method private a()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 228
    const-string v0, "UpdateService: update failed due to non-working Internet connection"

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->e(Ljava/lang/String;)I

    .line 230
    iget-boolean v0, p0, Lcom/avast/android/mobilesecurity/service/UpdateService;->g:Z

    if-eqz v0, :cond_0

    .line 231
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/service/UpdateService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c03ce

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 237
    :goto_0
    return-void

    .line 234
    :cond_0
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/service/UpdateService;->i()V

    .line 235
    invoke-direct {p0, v2}, Lcom/avast/android/mobilesecurity/service/UpdateService;->a(Z)V

    goto :goto_0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    .line 85
    const-class v1, Lcom/avast/android/mobilesecurity/service/UpdateService;

    monitor-enter v1

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/avast/android/mobilesecurity/service/UpdateService;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 86
    const-string v2, "manual"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 87
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    monitor-exit v1

    return-void

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Lcom/avast/android/mobilesecurity/engine/al;)V
    .locals 4
    .parameter

    .prologue
    .line 220
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/service/UpdateService;->e:Lcom/avast/android/mobilesecurity/engine/af;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/avast/android/mobilesecurity/service/UpdateService;->e:Lcom/avast/android/mobilesecurity/engine/af;

    iget-object v0, v0, Lcom/avast/android/mobilesecurity/engine/af;->b:Lcom/avast/android/mobilesecurity/engine/al;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    if-eqz p1, :cond_1

    iget-wide v0, p1, Lcom/avast/android/mobilesecurity/engine/al;->d:J

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/service/UpdateService;->e:Lcom/avast/android/mobilesecurity/engine/af;

    iget-object v2, v2, Lcom/avast/android/mobilesecurity/engine/af;->b:Lcom/avast/android/mobilesecurity/engine/al;

    iget-wide v2, v2, Lcom/avast/android/mobilesecurity/engine/al;->d:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/service/UpdateService;->a:Lcom/avast/android/mobilesecurity/t;

    const-string v1, "paAdRepDone"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/avast/android/mobilesecurity/t;->a(Ljava/lang/String;Z)V

    .line 225
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/service/UpdateService;)V
    .locals 0
    .parameter

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/service/UpdateService;->m()V

    return-void
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/service/UpdateService;Lcom/avast/android/mobilesecurity/engine/al;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/avast/android/mobilesecurity/service/UpdateService;->a(Lcom/avast/android/mobilesecurity/engine/al;)V

    return-void
.end method

.method private a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 339
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UpdateService: enableConnectivityChangeReciever("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    .line 346
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/service/UpdateService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/avast/android/mobilesecurity/t;

    invoke-static {v0, v1}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v0, p1}, Lcom/avast/android/mobilesecurity/t;->p(Z)Z

    .line 358
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UpdateService: enableConnectivityChangeReciever("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") - DONE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    .line 359
    return-void
.end method

.method static synthetic b(Lcom/avast/android/mobilesecurity/service/UpdateService;)Lcom/avast/android/mobilesecurity/engine/af;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/service/UpdateService;->e:Lcom/avast/android/mobilesecurity/engine/af;

    return-object v0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 240
    const-string v0, "UpdateService: update was succesfull"

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->d(Ljava/lang/String;)I

    .line 242
    iget-boolean v0, p0, Lcom/avast/android/mobilesecurity/service/UpdateService;->g:Z

    if-eqz v0, :cond_0

    .line 243
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/service/UpdateService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c03cc

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 248
    :cond_0
    const-class v0, Lcom/avast/android/generic/notification/j;

    invoke-static {p0, v0}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/notification/j;

    .line 249
    const-wide/32 v1, 0x7f0b000d

    invoke-virtual {v0, v1, v2}, Lcom/avast/android/generic/notification/j;->a(J)V

    .line 251
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/service/UpdateService;->h()V

    .line 252
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/service/UpdateService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/service/UpdateService;->d(Landroid/content/Context;)V

    .line 255
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/service/UpdateService;->d:Landroid/os/Handler;

    new-instance v1, Lcom/avast/android/mobilesecurity/service/d;

    invoke-direct {v1, p0}, Lcom/avast/android/mobilesecurity/service/d;-><init>(Lcom/avast/android/mobilesecurity/service/UpdateService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 262
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/avast/android/mobilesecurity/service/UpdateService;->a(Z)V

    .line 264
    invoke-static {p0}, Lcom/avast/android/mobilesecurity/app/widget/WidgetControlProvider;->a(Landroid/content/Context;)V

    .line 265
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/service/UpdateService;->b:Landroid/support/v4/a/p;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.avast.android.mobilesecurity.service.UPDATE_SUCCESSFUL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/a/p;->a(Landroid/content/Intent;)Z

    .line 266
    return-void
.end method

.method public static declared-synchronized b(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    .line 91
    const-class v1, Lcom/avast/android/mobilesecurity/service/UpdateService;

    monitor-enter v1

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/avast/android/mobilesecurity/service/UpdateService;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 92
    const-string v2, "force"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 93
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    monitor-exit v1

    return-void

    .line 91
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic c(Lcom/avast/android/mobilesecurity/service/UpdateService;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/service/UpdateService;->f:Landroid/os/Handler;

    return-object v0
.end method

.method private c()V
    .locals 3

    .prologue
    .line 269
    const-string v0, "UpdateService: apk is outdated"

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->e(Ljava/lang/String;)I

    .line 270
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/avast/android/mobilesecurity/service/UpdateService;->a(Z)V

    .line 271
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/service/UpdateService;->a:Lcom/avast/android/mobilesecurity/t;

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/avast/android/mobilesecurity/t;->g(J)V

    .line 273
    iget-boolean v0, p0, Lcom/avast/android/mobilesecurity/service/UpdateService;->g:Z

    if-eqz v0, :cond_0

    .line 274
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/service/UpdateService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c03d2

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/service/UpdateService;->a:Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/t;->aF()V

    .line 279
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/service/UpdateService;->l()V

    .line 281
    invoke-static {p0}, Lcom/avast/android/mobilesecurity/app/widget/WidgetControlProvider;->a(Landroid/content/Context;)V

    .line 282
    return-void
.end method

.method public static declared-synchronized c(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    .line 97
    const-class v1, Lcom/avast/android/mobilesecurity/service/UpdateService;

    monitor-enter v1

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/avast/android/mobilesecurity/service/UpdateService;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 98
    const-string v2, "manual"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 99
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    monitor-exit v1

    return-void

    .line 97
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private d()V
    .locals 3

    .prologue
    .line 285
    const-string v0, "UpdateService: nothing to update"

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->d(Ljava/lang/String;)I

    .line 287
    iget-boolean v0, p0, Lcom/avast/android/mobilesecurity/service/UpdateService;->g:Z

    if-eqz v0, :cond_0

    .line 288
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/service/UpdateService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c03cd

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 295
    :goto_0
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/service/UpdateService;->b:Landroid/support/v4/a/p;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.avast.android.mobilesecurity.service.UP_TO_DATE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/a/p;->a(Landroid/content/Intent;)Z

    .line 296
    return-void

    .line 291
    :cond_0
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/service/UpdateService;->h()V

    .line 292
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/service/UpdateService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/service/UpdateService;->d(Landroid/content/Context;)V

    .line 293
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/avast/android/mobilesecurity/service/UpdateService;->a(Z)V

    goto :goto_0
.end method

.method public static d(Landroid/content/Context;)V
    .locals 6
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 390
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/avast/android/mobilesecurity/service/UpdateService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 391
    const-string v1, "com.avast.update.check"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 392
    const-string v1, "manual"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 393
    const/high16 v1, 0x1000

    invoke-static {p0, v2, v0, v1}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 396
    const-class v0, Lcom/avast/android/mobilesecurity/t;

    invoke-static {p0, v0}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/t;

    .line 398
    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/t;->aE()J

    move-result-wide v1

    .line 399
    const-wide/16 v4, -0x1

    cmp-long v4, v1, v4

    if-lez v4, :cond_2

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/t;->aC()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 400
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v4, v1, v4

    if-gez v4, :cond_0

    .line 402
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/32 v4, 0x2bf20

    add-long/2addr v1, v4

    .line 403
    invoke-virtual {v0, v1, v2}, Lcom/avast/android/mobilesecurity/t;->g(J)V

    .line 406
    :cond_0
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 407
    const/4 v4, 0x1

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 409
    invoke-static {}, Lcom/avast/android/generic/util/m;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 410
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 411
    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 412
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UpdateService: Next update check scheduled to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->d(Ljava/lang/String;)I

    .line 417
    :cond_1
    :goto_0
    return-void

    .line 415
    :cond_2
    const-string v0, "UpdateService: No next update"

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->e(Ljava/lang/String;)I

    goto :goto_0
.end method

.method private e()V
    .locals 3

    .prologue
    .line 299
    const-string v0, "UpdateService: Unknown error"

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->f(Ljava/lang/String;)I

    .line 301
    iget-boolean v0, p0, Lcom/avast/android/mobilesecurity/service/UpdateService;->g:Z

    if-eqz v0, :cond_0

    .line 302
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/service/UpdateService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c03cf

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 310
    :goto_0
    return-void

    .line 306
    :cond_0
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/service/UpdateService;->h()V

    .line 307
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/service/UpdateService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/service/UpdateService;->d(Landroid/content/Context;)V

    .line 308
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/avast/android/mobilesecurity/service/UpdateService;->a(Z)V

    goto :goto_0
.end method

.method public static e(Landroid/content/Context;)V
    .locals 6
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 426
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/avast/android/mobilesecurity/service/UpdateService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 427
    const-string v1, "com.avast.update.outdatedCheck"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 428
    const-string v1, "outDatedCheck"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 429
    const/high16 v1, 0x1000

    invoke-static {p0, v2, v0, v1}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 432
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/avast/android/mobilesecurity/engine/i;->a(Landroid/content/Context;Ljava/lang/Integer;)Lcom/avast/android/mobilesecurity/engine/al;

    move-result-object v0

    .line 433
    if-eqz v0, :cond_1

    .line 434
    iget-object v0, v0, Lcom/avast/android/mobilesecurity/engine/al;->b:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/32 v4, 0x240c8400

    add-long/2addr v0, v4

    const-wide/16 v4, 0x3e8

    add-long/2addr v0, v4

    .line 435
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v2, v4, v0

    if-gez v2, :cond_2

    .line 436
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v4, 0x1388

    add-long/2addr v0, v4

    move-wide v1, v0

    .line 439
    :goto_0
    invoke-static {}, Lcom/avast/android/generic/util/m;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 440
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 441
    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 442
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UpdateService: Next VPS outdated check scheduled to: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    .line 445
    :cond_0
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 446
    invoke-virtual {v0, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 447
    const/4 v4, 0x1

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 449
    :cond_1
    return-void

    :cond_2
    move-wide v1, v0

    goto :goto_0
.end method

.method private f()V
    .locals 3

    .prologue
    .line 313
    const-string v0, "UpdateService: Invalid VPS"

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->f(Ljava/lang/String;)I

    .line 315
    iget-boolean v0, p0, Lcom/avast/android/mobilesecurity/service/UpdateService;->g:Z

    if-eqz v0, :cond_0

    .line 316
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/service/UpdateService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c03d0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 323
    :goto_0
    return-void

    .line 319
    :cond_0
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/service/UpdateService;->h()V

    .line 320
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/service/UpdateService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/service/UpdateService;->d(Landroid/content/Context;)V

    .line 321
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/avast/android/mobilesecurity/service/UpdateService;->a(Z)V

    goto :goto_0
.end method

.method public static f(Landroid/content/Context;)Z
    .locals 6
    .parameter

    .prologue
    .line 458
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/avast/android/mobilesecurity/engine/i;->a(Landroid/content/Context;Ljava/lang/Integer;)Lcom/avast/android/mobilesecurity/engine/al;

    move-result-object v0

    .line 459
    if-eqz v0, :cond_1

    .line 460
    iget-object v0, v0, Lcom/avast/android/mobilesecurity/engine/al;->b:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 462
    invoke-static {}, Lcom/avast/android/generic/util/m;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 463
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    .line 464
    invoke-virtual {v2, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 465
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UpdateService: isVpsOutdated() VPS last update time: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/avast/android/generic/util/m;->d(Ljava/lang/String;)I

    .line 468
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x240c8400

    add-long/2addr v0, v4

    cmp-long v0, v2, v0

    if-lez v0, :cond_1

    .line 469
    const/4 v0, 0x1

    .line 472
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private g()V
    .locals 3

    .prologue
    .line 326
    const-string v0, "UpdateService: No Internal space"

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->f(Ljava/lang/String;)I

    .line 328
    iget-boolean v0, p0, Lcom/avast/android/mobilesecurity/service/UpdateService;->g:Z

    if-eqz v0, :cond_0

    .line 329
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/service/UpdateService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c03d1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 336
    :goto_0
    return-void

    .line 332
    :cond_0
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/service/UpdateService;->h()V

    .line 333
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/service/UpdateService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/service/UpdateService;->d(Landroid/content/Context;)V

    .line 334
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/avast/android/mobilesecurity/service/UpdateService;->a(Z)V

    goto :goto_0
.end method

.method private h()V
    .locals 5

    .prologue
    .line 362
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/service/UpdateService;->e:Lcom/avast/android/mobilesecurity/engine/af;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avast/android/mobilesecurity/service/UpdateService;->e:Lcom/avast/android/mobilesecurity/engine/af;

    iget v0, v0, Lcom/avast/android/mobilesecurity/engine/af;->c:I

    if-lez v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/service/UpdateService;->a:Lcom/avast/android/mobilesecurity/t;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/service/UpdateService;->e:Lcom/avast/android/mobilesecurity/engine/af;

    iget v3, v3, Lcom/avast/android/mobilesecurity/engine/af;->c:I

    mul-int/lit8 v3, v3, 0x3c

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v3, v3

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/avast/android/mobilesecurity/t;->g(J)V

    .line 368
    :goto_0
    return-void

    .line 366
    :cond_0
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/service/UpdateService;->i()V

    goto :goto_0
.end method

.method private i()V
    .locals 5

    .prologue
    .line 379
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/service/UpdateService;->a:Lcom/avast/android/mobilesecurity/t;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/i;->a()I

    move-result v3

    mul-int/lit8 v3, v3, 0x3c

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v3, v3

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/avast/android/mobilesecurity/t;->g(J)V

    .line 381
    return-void
.end method

.method private j()V
    .locals 2

    .prologue
    .line 480
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/service/UpdateService;->e:Lcom/avast/android/mobilesecurity/engine/af;

    iget-object v0, v0, Lcom/avast/android/mobilesecurity/engine/af;->a:Lcom/avast/android/mobilesecurity/engine/ag;

    sget-object v1, Lcom/avast/android/mobilesecurity/engine/ag;->d:Lcom/avast/android/mobilesecurity/engine/ag;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/avast/android/mobilesecurity/service/UpdateService;->e:Lcom/avast/android/mobilesecurity/engine/af;

    iget-object v0, v0, Lcom/avast/android/mobilesecurity/engine/af;->a:Lcom/avast/android/mobilesecurity/engine/ag;

    sget-object v1, Lcom/avast/android/mobilesecurity/engine/ag;->g:Lcom/avast/android/mobilesecurity/engine/ag;

    if-eq v0, v1, :cond_0

    .line 482
    invoke-static {p0}, Lcom/avast/android/mobilesecurity/receiver/ConnectivityChangeReceiver;->a(Landroid/content/Context;)V

    .line 485
    :cond_0
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/service/UpdateService;->e:Lcom/avast/android/mobilesecurity/engine/af;

    iget-object v0, v0, Lcom/avast/android/mobilesecurity/engine/af;->a:Lcom/avast/android/mobilesecurity/engine/ag;

    sget-object v1, Lcom/avast/android/mobilesecurity/engine/ag;->b:Lcom/avast/android/mobilesecurity/engine/ag;

    if-ne v0, v1, :cond_1

    .line 486
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/service/UpdateService;->b()V

    .line 490
    :cond_1
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/service/UpdateService;->e:Lcom/avast/android/mobilesecurity/engine/af;

    iget-object v0, v0, Lcom/avast/android/mobilesecurity/engine/af;->a:Lcom/avast/android/mobilesecurity/engine/ag;

    sget-object v1, Lcom/avast/android/mobilesecurity/engine/ag;->a:Lcom/avast/android/mobilesecurity/engine/ag;

    if-ne v0, v1, :cond_2

    .line 491
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/service/UpdateService;->d()V

    .line 494
    :cond_2
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/service/UpdateService;->e:Lcom/avast/android/mobilesecurity/engine/af;

    iget-object v0, v0, Lcom/avast/android/mobilesecurity/engine/af;->a:Lcom/avast/android/mobilesecurity/engine/ag;

    sget-object v1, Lcom/avast/android/mobilesecurity/engine/ag;->d:Lcom/avast/android/mobilesecurity/engine/ag;

    if-ne v0, v1, :cond_3

    .line 495
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/service/UpdateService;->a()V

    .line 498
    :cond_3
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/service/UpdateService;->e:Lcom/avast/android/mobilesecurity/engine/af;

    iget-object v0, v0, Lcom/avast/android/mobilesecurity/engine/af;->a:Lcom/avast/android/mobilesecurity/engine/ag;

    sget-object v1, Lcom/avast/android/mobilesecurity/engine/ag;->c:Lcom/avast/android/mobilesecurity/engine/ag;

    if-ne v0, v1, :cond_4

    .line 499
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/service/UpdateService;->c()V

    .line 502
    :cond_4
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/service/UpdateService;->e:Lcom/avast/android/mobilesecurity/engine/af;

    iget-object v0, v0, Lcom/avast/android/mobilesecurity/engine/af;->a:Lcom/avast/android/mobilesecurity/engine/ag;

    sget-object v1, Lcom/avast/android/mobilesecurity/engine/ag;->e:Lcom/avast/android/mobilesecurity/engine/ag;

    if-ne v0, v1, :cond_5

    .line 503
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/service/UpdateService;->g()V

    .line 506
    :cond_5
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/service/UpdateService;->e:Lcom/avast/android/mobilesecurity/engine/af;

    iget-object v0, v0, Lcom/avast/android/mobilesecurity/engine/af;->a:Lcom/avast/android/mobilesecurity/engine/ag;

    sget-object v1, Lcom/avast/android/mobilesecurity/engine/ag;->f:Lcom/avast/android/mobilesecurity/engine/ag;

    if-ne v0, v1, :cond_6

    .line 507
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/service/UpdateService;->f()V

    .line 510
    :cond_6
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/service/UpdateService;->e:Lcom/avast/android/mobilesecurity/engine/af;

    iget-object v0, v0, Lcom/avast/android/mobilesecurity/engine/af;->a:Lcom/avast/android/mobilesecurity/engine/ag;

    sget-object v1, Lcom/avast/android/mobilesecurity/engine/ag;->g:Lcom/avast/android/mobilesecurity/engine/ag;

    if-ne v0, v1, :cond_7

    .line 511
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/service/UpdateService;->e()V

    .line 514
    :cond_7
    const-class v0, Lcom/avast/android/generic/util/s;

    invoke-static {p0, v0}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/util/s;

    const v1, 0x7f070027

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/util/s;->a(I)Z

    .line 519
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/service/UpdateService;->k()V

    .line 520
    return-void
.end method

.method private k()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 527
    invoke-static {p0}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;->a(Landroid/content/Context;)Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;

    move-result-object v0

    .line 528
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/service/UpdateService;->e:Lcom/avast/android/mobilesecurity/engine/af;

    iget-object v1, v1, Lcom/avast/android/mobilesecurity/engine/af;->a:Lcom/avast/android/mobilesecurity/engine/ag;

    sget-object v3, Lcom/avast/android/mobilesecurity/engine/ag;->b:Lcom/avast/android/mobilesecurity/engine/ag;

    if-ne v1, v3, :cond_1

    .line 529
    sget-object v1, Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;->f:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/service/UpdateService;->e:Lcom/avast/android/mobilesecurity/engine/af;

    iget-object v3, v3, Lcom/avast/android/mobilesecurity/engine/af;->b:Lcom/avast/android/mobilesecurity/engine/al;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/service/UpdateService;->e:Lcom/avast/android/mobilesecurity/engine/af;

    iget-object v3, v3, Lcom/avast/android/mobilesecurity/engine/af;->b:Lcom/avast/android/mobilesecurity/engine/al;

    iget-object v3, v3, Lcom/avast/android/mobilesecurity/engine/al;->a:Ljava/lang/String;

    :goto_0
    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;->a(Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 539
    :goto_1
    return-void

    :cond_0
    move-object v3, v2

    .line 529
    goto :goto_0

    .line 532
    :cond_1
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/service/UpdateService;->e:Lcom/avast/android/mobilesecurity/engine/af;

    iget-object v1, v1, Lcom/avast/android/mobilesecurity/engine/af;->a:Lcom/avast/android/mobilesecurity/engine/ag;

    sget-object v3, Lcom/avast/android/mobilesecurity/engine/ag;->a:Lcom/avast/android/mobilesecurity/engine/ag;

    if-ne v1, v3, :cond_2

    .line 533
    sget-object v1, Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;->h:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;->a(Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V

    goto :goto_1

    .line 535
    :cond_2
    const-class v1, Lcom/avast/android/mobilesecurity/t;

    invoke-static {p0, v1}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/avast/android/mobilesecurity/t;

    .line 536
    sget-object v1, Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;->g:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

    invoke-virtual {v3}, Lcom/avast/android/mobilesecurity/t;->aE()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;->a(Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V

    goto :goto_1
.end method

.method private l()V
    .locals 6

    .prologue
    const v5, 0x7f0c03d3

    .line 561
    invoke-static {p0}, Lcom/avast/android/mobilesecurity/Application;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 562
    new-instance v1, Lcom/avast/android/generic/notification/AvastPendingIntent;

    sget-object v2, Lcom/avast/android/generic/notification/s;->a:Lcom/avast/android/generic/notification/s;

    invoke-direct {v1, v2, v0}, Lcom/avast/android/generic/notification/AvastPendingIntent;-><init>(Lcom/avast/android/generic/notification/s;Landroid/content/Intent;)V

    .line 563
    new-instance v2, Lcom/avast/android/generic/notification/a;

    const-wide/32 v3, 0x7f0b000c

    invoke-virtual {p0, v5}, Lcom/avast/android/mobilesecurity/service/UpdateService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {v2, v3, v4, v0}, Lcom/avast/android/generic/notification/a;-><init>(JLjava/lang/CharSequence;)V

    .line 566
    invoke-virtual {p0, v5}, Lcom/avast/android/mobilesecurity/service/UpdateService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const v3, 0x7f0c03d4

    invoke-virtual {p0, v3}, Lcom/avast/android/mobilesecurity/service/UpdateService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v0, v3, v1}, Lcom/avast/android/generic/notification/a;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/avast/android/generic/notification/AvastPendingIntent;)V

    .line 568
    const-class v0, Lcom/avast/android/generic/notification/j;

    invoke-static {p0, v0}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/notification/j;

    .line 570
    invoke-virtual {v0, v2}, Lcom/avast/android/generic/notification/j;->a(Lcom/avast/android/generic/notification/a;)V

    .line 571
    return-void
.end method

.method private m()V
    .locals 6

    .prologue
    const v5, 0x7f0c03d5

    .line 574
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/avast/android/mobilesecurity/app/settings/SettingsUpdatesActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 575
    const-string v1, "forceRunManualUpdate"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 577
    new-instance v1, Lcom/avast/android/generic/notification/AvastPendingIntent;

    sget-object v2, Lcom/avast/android/generic/notification/s;->a:Lcom/avast/android/generic/notification/s;

    invoke-direct {v1, v2, v0}, Lcom/avast/android/generic/notification/AvastPendingIntent;-><init>(Lcom/avast/android/generic/notification/s;Landroid/content/Intent;)V

    .line 578
    new-instance v2, Lcom/avast/android/generic/notification/a;

    const-wide/32 v3, 0x7f0b000d

    invoke-virtual {p0, v5}, Lcom/avast/android/mobilesecurity/service/UpdateService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {v2, v3, v4, v0}, Lcom/avast/android/generic/notification/a;-><init>(JLjava/lang/CharSequence;)V

    .line 581
    invoke-virtual {p0, v5}, Lcom/avast/android/mobilesecurity/service/UpdateService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const v3, 0x7f0c03d6

    invoke-virtual {p0, v3}, Lcom/avast/android/mobilesecurity/service/UpdateService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v0, v3, v1}, Lcom/avast/android/generic/notification/a;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/avast/android/generic/notification/AvastPendingIntent;)V

    .line 583
    const-class v0, Lcom/avast/android/generic/notification/j;

    invoke-static {p0, v0}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/notification/j;

    .line 584
    invoke-virtual {v0, v2}, Lcom/avast/android/generic/notification/j;->a(Lcom/avast/android/generic/notification/a;)V

    .line 585
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 548
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 557
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 550
    :pswitch_0
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/service/UpdateService;->j()V

    goto :goto_0

    .line 553
    :pswitch_1
    const-string v1, "UpdateService: STOP SELF"

    invoke-static {v1}, Lcom/avast/android/generic/util/m;->d(Ljava/lang/String;)I

    .line 554
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/service/UpdateService;->stopSelf()V

    goto :goto_0

    .line 548
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter

    .prologue
    .line 543
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 104
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 106
    const-class v0, Lcom/avast/android/mobilesecurity/t;

    invoke-static {p0, v0}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/t;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/service/UpdateService;->a:Lcom/avast/android/mobilesecurity/t;

    .line 108
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "UpdateService[helper]"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 109
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 110
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/service/UpdateService;->c:Landroid/os/Looper;

    .line 111
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/service/UpdateService;->c:Landroid/os/Looper;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/service/UpdateService;->d:Landroid/os/Handler;

    .line 113
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/service/UpdateService;->f:Landroid/os/Handler;

    .line 115
    invoke-static {p0}, Landroid/support/v4/a/p;->a(Landroid/content/Context;)Landroid/support/v4/a/p;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/service/UpdateService;->b:Landroid/support/v4/a/p;

    .line 116
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/service/UpdateService;->c:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 121
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 122
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v1, 0x1

    .line 126
    if-eqz p1, :cond_1

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UpdateService: onStartCommand() - "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    .line 132
    :goto_0
    invoke-static {}, Lcom/avast/android/mobilesecurity/Application;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 134
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/service/UpdateService;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/Application;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/Application;->j()V

    .line 211
    :cond_0
    :goto_1
    return v4

    .line 129
    :cond_1
    const-string v0, "UpdateService: onStartCommand()"

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    goto :goto_0

    .line 138
    :cond_2
    const-string v0, "outDatedCheck"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 139
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/service/UpdateService;->d:Landroid/os/Handler;

    new-instance v1, Lcom/avast/android/mobilesecurity/service/a;

    invoke-direct {v1, p0}, Lcom/avast/android/mobilesecurity/service/a;-><init>(Lcom/avast/android/mobilesecurity/service/UpdateService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 150
    :cond_3
    const-string v0, "manual"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "manual"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/avast/android/mobilesecurity/service/UpdateService;->g:Z

    .line 152
    const-string v0, "force"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "force"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/avast/android/mobilesecurity/service/UpdateService;->h:Z

    .line 154
    const-string v0, "connectivityChangedFailsafe"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "connectivityChangedFailsafe"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v2, v1

    :cond_4
    iput-boolean v2, p0, Lcom/avast/android/mobilesecurity/service/UpdateService;->i:Z

    .line 158
    iget-boolean v0, p0, Lcom/avast/android/mobilesecurity/service/UpdateService;->i:Z

    if-eqz v0, :cond_7

    .line 159
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/service/UpdateService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 160
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/service/UpdateService;->d:Landroid/os/Handler;

    new-instance v2, Lcom/avast/android/mobilesecurity/service/b;

    invoke-direct {v2, p0, v0}, Lcom/avast/android/mobilesecurity/service/b;-><init>(Lcom/avast/android/mobilesecurity/service/UpdateService;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_5
    move v0, v2

    .line 150
    goto :goto_2

    :cond_6
    move v0, v2

    .line 152
    goto :goto_3

    .line 181
    :cond_7
    iget-boolean v0, p0, Lcom/avast/android/mobilesecurity/service/UpdateService;->g:Z

    if-nez v0, :cond_8

    .line 182
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/service/UpdateService;->i()V

    .line 183
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/service/UpdateService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/service/UpdateService;->d(Landroid/content/Context;)V

    .line 186
    :cond_8
    iget-boolean v0, p0, Lcom/avast/android/mobilesecurity/service/UpdateService;->h:Z

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lcom/avast/android/mobilesecurity/service/UpdateService;->g:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/avast/android/mobilesecurity/service/UpdateService;->a:Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/t;->aC()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/avast/android/mobilesecurity/service/UpdateService;->a:Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/t;->aD()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 188
    :cond_9
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/service/UpdateService;->d:Landroid/os/Handler;

    new-instance v1, Lcom/avast/android/mobilesecurity/service/c;

    invoke-direct {v1, p0}, Lcom/avast/android/mobilesecurity/service/c;-><init>(Lcom/avast/android/mobilesecurity/service/UpdateService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 204
    :cond_a
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/service/UpdateService;->a:Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/t;->aC()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/avast/android/mobilesecurity/service/UpdateService;->g:Z

    if-nez v0, :cond_0

    .line 205
    const-string v0, "UpdateService: no required connection is avalaible"

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    .line 206
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/service/UpdateService;->i()V

    .line 207
    invoke-direct {p0, v1}, Lcom/avast/android/mobilesecurity/service/UpdateService;->a(Z)V

    goto/16 :goto_1
.end method

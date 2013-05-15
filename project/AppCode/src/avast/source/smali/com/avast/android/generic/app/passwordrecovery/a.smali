.class public Lcom/avast/android/generic/app/passwordrecovery/a;
.super Ljava/lang/Object;
.source "PasswordRecovery.java"


# static fields
.field private static a:Lcom/avast/android/generic/app/passwordrecovery/b;

.field private static b:Lcom/avast/android/generic/app/passwordrecovery/j;

.field private static final c:Ljava/lang/Object;

.field private static final d:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 170
    sget-object v0, Lcom/avast/android/generic/app/passwordrecovery/b;->a:Lcom/avast/android/generic/app/passwordrecovery/b;

    sput-object v0, Lcom/avast/android/generic/app/passwordrecovery/a;->a:Lcom/avast/android/generic/app/passwordrecovery/b;

    .line 176
    const/4 v0, 0x0

    sput-object v0, Lcom/avast/android/generic/app/passwordrecovery/a;->b:Lcom/avast/android/generic/app/passwordrecovery/j;

    .line 185
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/avast/android/generic/app/passwordrecovery/a;->c:Ljava/lang/Object;

    .line 194
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/avast/android/generic/app/passwordrecovery/a;->d:Ljava/lang/Object;

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/avast/android/generic/app/passwordrecovery/b;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 537
    const-class v0, Lcom/avast/android/generic/ae;

    invoke-static {p0, v0}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/ae;

    .line 538
    sget-object v1, Lcom/avast/android/generic/app/passwordrecovery/a;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 539
    :try_start_0
    const-string v2, ""

    invoke-virtual {v0, v2}, Lcom/avast/android/generic/ae;->e(Ljava/lang/String;)V

    .line 540
    const-wide/16 v2, -0x1

    invoke-virtual {v0, v2, v3}, Lcom/avast/android/generic/ae;->b(J)V

    .line 541
    const-wide/16 v2, -0x1

    invoke-virtual {v0, v2, v3}, Lcom/avast/android/generic/ae;->d(J)V

    .line 542
    const-wide/16 v2, -0x1

    invoke-virtual {v0, v2, v3}, Lcom/avast/android/generic/ae;->c(J)V

    .line 543
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 544
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 546
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.avast.android.generic.RECOVERY_TIME_TICK"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 548
    invoke-static {p0, v4, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 550
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 551
    invoke-static {p1}, Lcom/avast/android/generic/app/passwordrecovery/a;->a(Lcom/avast/android/generic/app/passwordrecovery/b;)V

    .line 552
    return-void

    .line 543
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 568
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    .line 569
    const-class v1, Lcom/avast/android/generic/ae;

    invoke-static {p0, v1}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avast/android/generic/ae;

    .line 570
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.avast.android.generic.RECOVERY_SMS"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 571
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    .line 572
    const-string v5, ""

    .line 573
    sget-object v5, Lcom/avast/android/generic/app/passwordrecovery/a;->d:Ljava/lang/Object;

    monitor-enter v5

    .line 574
    :try_start_0
    invoke-virtual {v1, v4}, Lcom/avast/android/generic/ae;->h(Ljava/lang/String;)V

    .line 579
    invoke-virtual {v1}, Lcom/avast/android/generic/ae;->k()Ljava/lang/String;

    move-result-object v1

    .line 580
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 582
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    move-object v1, p2

    .line 586
    :cond_0
    const-string v5, "auth_token"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 588
    new-instance v4, Landroid/content/ComponentName;

    const-class v5, Lcom/avast/android/generic/app/passwordrecovery/PasswordRecoveryReceiver;

    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 594
    const/high16 v4, 0x1000

    invoke-static {p0, v6, v3, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 596
    sget v3, Lcom/avast/android/generic/z;->bH:I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v6

    invoke-virtual {p0, v3, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 604
    invoke-virtual {v0, v3}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 605
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x2

    if-ge v6, v7, :cond_1

    move-object v5, v2

    .line 606
    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 614
    :goto_0
    return-void

    .line 580
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 609
    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 610
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v3, v5

    move-object v4, v6

    move-object v5, v2

    .line 611
    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 356
    invoke-static {p0}, Lcom/avast/android/generic/app/passwordrecovery/a;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 368
    :goto_0
    return-void

    .line 359
    :cond_0
    if-eqz p1, :cond_1

    .line 360
    sget-object v0, Lcom/avast/android/generic/app/passwordrecovery/b;->c:Lcom/avast/android/generic/app/passwordrecovery/b;

    invoke-static {v0}, Lcom/avast/android/generic/app/passwordrecovery/a;->a(Lcom/avast/android/generic/app/passwordrecovery/b;)V

    .line 361
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.avast.android.generic.app.passwordrecovery.ACTION_PASSWORD_RECOVERY_INITIATED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 362
    invoke-static {v0}, Lcom/avast/android/generic/util/ae;->a(Landroid/content/Intent;)V

    .line 363
    const-string v1, "com.avast.android.generic.COMM_PERMISSION"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    .line 365
    :cond_1
    sget-object v0, Lcom/avast/android/generic/app/passwordrecovery/b;->d:Lcom/avast/android/generic/app/passwordrecovery/b;

    invoke-static {p0, v0}, Lcom/avast/android/generic/app/passwordrecovery/a;->a(Landroid/content/Context;Lcom/avast/android/generic/app/passwordrecovery/b;)V

    goto :goto_0
.end method

.method private static a(Lcom/avast/android/generic/app/passwordrecovery/b;)V
    .locals 3
    .parameter

    .prologue
    .line 624
    sget-object v1, Lcom/avast/android/generic/app/passwordrecovery/a;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 625
    :try_start_0
    sput-object p0, Lcom/avast/android/generic/app/passwordrecovery/a;->a:Lcom/avast/android/generic/app/passwordrecovery/b;

    .line 626
    sget-object v0, Lcom/avast/android/generic/app/passwordrecovery/a;->b:Lcom/avast/android/generic/app/passwordrecovery/j;

    if-eqz v0, :cond_0

    .line 627
    sget-object v0, Lcom/avast/android/generic/app/passwordrecovery/a;->b:Lcom/avast/android/generic/app/passwordrecovery/j;

    sget-object v2, Lcom/avast/android/generic/app/passwordrecovery/a;->a:Lcom/avast/android/generic/app/passwordrecovery/b;

    invoke-interface {v0, v2}, Lcom/avast/android/generic/app/passwordrecovery/j;->a(Lcom/avast/android/generic/app/passwordrecovery/b;)V

    .line 629
    :cond_0
    monitor-exit v1

    .line 630
    return-void

    .line 629
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static a(Lcom/avast/android/generic/app/passwordrecovery/j;)V
    .locals 2
    .parameter

    .prologue
    .line 652
    sget-object v1, Lcom/avast/android/generic/app/passwordrecovery/a;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 653
    :try_start_0
    sput-object p0, Lcom/avast/android/generic/app/passwordrecovery/a;->b:Lcom/avast/android/generic/app/passwordrecovery/j;

    .line 654
    monitor-exit v1

    .line 655
    return-void

    .line 654
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 204
    :try_start_0
    invoke-static {p0}, Lcom/avast/android/generic/f/b/a;->h(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 214
    :cond_0
    :goto_0
    return v0

    .line 208
    :cond_1
    invoke-static {p0}, Lcom/avast/android/generic/f/b/a;->c(Landroid/content/Context;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 212
    const/4 v0, 0x1

    goto :goto_0

    .line 213
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/avast/android/generic/app/passwordrecovery/j;Ljava/lang/String;)Z
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 237
    :try_start_0
    invoke-static {p0}, Lcom/avast/android/generic/app/passwordrecovery/a;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 275
    :goto_0
    return v0

    .line 240
    :cond_0
    invoke-static {p0}, Lcom/avast/android/generic/app/passwordrecovery/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 241
    goto :goto_0

    .line 244
    :cond_1
    invoke-static {p1}, Lcom/avast/android/generic/app/passwordrecovery/a;->a(Lcom/avast/android/generic/app/passwordrecovery/j;)V

    .line 245
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 246
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    .line 247
    const-wide/32 v5, 0x1b7740

    add-long/2addr v5, v3

    .line 249
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 251
    const v2, 0xf4240

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 252
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 257
    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v7, 0x6

    if-ge v0, v7, :cond_2

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "0"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto :goto_1

    .line 260
    :cond_2
    const-class v0, Lcom/avast/android/generic/ae;

    invoke-static {p0, v0}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/ae;

    .line 261
    sget-object v7, Lcom/avast/android/generic/app/passwordrecovery/a;->d:Ljava/lang/Object;

    monitor-enter v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    :try_start_1
    invoke-virtual {v0, v2}, Lcom/avast/android/generic/ae;->e(Ljava/lang/String;)V

    .line 263
    invoke-virtual {v0, v3, v4}, Lcom/avast/android/generic/ae;->b(J)V

    .line 264
    invoke-virtual {v0, v5, v6}, Lcom/avast/android/generic/ae;->c(J)V

    .line 265
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 266
    :try_start_2
    invoke-static {p0}, Lcom/avast/android/generic/app/passwordrecovery/a;->c(Landroid/content/Context;)V

    .line 267
    invoke-static {p0, v2, p2}, Lcom/avast/android/generic/app/passwordrecovery/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 274
    sget-object v0, Lcom/avast/android/generic/app/passwordrecovery/b;->b:Lcom/avast/android/generic/app/passwordrecovery/b;

    invoke-static {v0}, Lcom/avast/android/generic/app/passwordrecovery/a;->a(Lcom/avast/android/generic/app/passwordrecovery/b;)V

    .line 275
    const/4 v0, 0x1

    goto :goto_0

    .line 265
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 268
    :catch_0
    move-exception v0

    .line 271
    sget-object v0, Lcom/avast/android/generic/app/passwordrecovery/b;->g:Lcom/avast/android/generic/app/passwordrecovery/b;

    invoke-static {p0, v0}, Lcom/avast/android/generic/app/passwordrecovery/a;->a(Landroid/content/Context;Lcom/avast/android/generic/app/passwordrecovery/b;)V

    move v0, v1

    .line 272
    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 290
    if-eqz p1, :cond_0

    const-string v0, ""

    if-ne p1, v0, :cond_1

    :cond_0
    move v0, v1

    .line 298
    :goto_0
    return v0

    .line 293
    :cond_1
    const-class v0, Lcom/avast/android/generic/ae;

    invoke-static {p0, v0}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/ae;

    .line 294
    sget-object v2, Lcom/avast/android/generic/app/passwordrecovery/a;->d:Ljava/lang/Object;

    monitor-enter v2

    .line 295
    :try_start_0
    const-string v3, ""

    invoke-virtual {v0}, Lcom/avast/android/generic/ae;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 296
    monitor-exit v2

    move v0, v1

    goto :goto_0

    .line 298
    :cond_2
    invoke-virtual {v0, p1}, Lcom/avast/android/generic/ae;->c(Ljava/lang/String;)Z

    move-result v0

    monitor-exit v2

    goto :goto_0

    .line 299
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 311
    invoke-static {p0}, Lcom/avast/android/generic/app/passwordrecovery/a;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 315
    :goto_0
    return-void

    .line 314
    :cond_0
    invoke-static {p0}, Lcom/avast/android/generic/app/passwordrecovery/a;->c(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 381
    const-string v0, ""

    if-ne p1, v0, :cond_0

    .line 382
    const/4 v0, 0x0

    .line 389
    :goto_0
    return v0

    .line 384
    :cond_0
    const-class v0, Lcom/avast/android/generic/ae;

    invoke-static {p0, v0}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/ae;

    .line 385
    sget-object v2, Lcom/avast/android/generic/app/passwordrecovery/a;->d:Ljava/lang/Object;

    monitor-enter v2

    .line 386
    :try_start_0
    invoke-virtual {v0}, Lcom/avast/android/generic/ae;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 388
    const-string v3, ""

    invoke-virtual {v0, v3}, Lcom/avast/android/generic/ae;->g(Ljava/lang/String;)V

    .line 389
    monitor-exit v2

    move v0, v1

    goto :goto_0

    .line 390
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static c(Landroid/content/Context;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 326
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 328
    const-class v1, Lcom/avast/android/generic/ae;

    invoke-static {p0, v1}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avast/android/generic/ae;

    .line 329
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.avast.android.generic.RECOVERY_TIME_TICK"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 331
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    .line 332
    sget-object v4, Lcom/avast/android/generic/app/passwordrecovery/a;->d:Ljava/lang/Object;

    monitor-enter v4

    .line 333
    :try_start_0
    invoke-virtual {v1, v3}, Lcom/avast/android/generic/ae;->g(Ljava/lang/String;)V

    .line 334
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 335
    new-instance v1, Landroid/content/ComponentName;

    const-class v4, Lcom/avast/android/generic/app/passwordrecovery/PasswordRecoveryReceiver;

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, p0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 337
    const-string v1, "auth_token"

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 339
    const/high16 v1, 0x1000

    invoke-static {p0, v6, v2, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 341
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    add-long/2addr v2, v4

    invoke-virtual {v0, v6, v2, v3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 343
    return-void

    .line 334
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 405
    const-string v0, ""

    if-ne p1, v0, :cond_0

    .line 406
    const/4 v0, 0x0

    .line 417
    :goto_0
    return v0

    .line 408
    :cond_0
    const-class v0, Lcom/avast/android/generic/ae;

    invoke-static {p0, v0}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/ae;

    .line 409
    sget-object v2, Lcom/avast/android/generic/app/passwordrecovery/a;->d:Ljava/lang/Object;

    monitor-enter v2

    .line 414
    :try_start_0
    invoke-virtual {v0}, Lcom/avast/android/generic/ae;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 416
    const-string v3, ""

    invoke-virtual {v0, v3}, Lcom/avast/android/generic/ae;->h(Ljava/lang/String;)V

    .line 417
    monitor-exit v2

    move v0, v1

    goto :goto_0

    .line 418
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static d(Landroid/content/Context;)Z
    .locals 3
    .parameter

    .prologue
    .line 430
    const-class v0, Lcom/avast/android/generic/ae;

    invoke-static {p0, v0}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/ae;

    .line 431
    sget-object v1, Lcom/avast/android/generic/app/passwordrecovery/a;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 432
    :try_start_0
    const-string v2, ""

    invoke-virtual {v0}, Lcom/avast/android/generic/ae;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 437
    const/4 v0, 0x0

    monitor-exit v1

    .line 440
    :goto_0
    return v0

    .line 439
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 440
    invoke-static {p0}, Lcom/avast/android/generic/app/passwordrecovery/a;->e(Landroid/content/Context;)Z

    move-result v0

    goto :goto_0

    .line 439
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static declared-synchronized e(Landroid/content/Context;)Z
    .locals 13
    .parameter

    .prologue
    .line 456
    const-class v1, Lcom/avast/android/generic/app/passwordrecovery/a;

    monitor-enter v1

    :try_start_0
    const-class v0, Lcom/avast/android/generic/ae;

    invoke-static {p0, v0}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/ae;

    .line 460
    sget-object v2, Lcom/avast/android/generic/app/passwordrecovery/a;->d:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 461
    :try_start_1
    invoke-virtual {v0}, Lcom/avast/android/generic/ae;->h()J

    move-result-wide v3

    .line 462
    invoke-virtual {v0}, Lcom/avast/android/generic/ae;->j()J

    move-result-wide v5

    .line 463
    invoke-virtual {v0}, Lcom/avast/android/generic/ae;->i()J

    move-result-wide v7

    .line 464
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 465
    :try_start_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 466
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-wide v9

    .line 473
    const-wide/16 v11, -0x1

    cmp-long v2, v3, v11

    if-eqz v2, :cond_0

    const-wide/16 v11, -0x1

    cmp-long v2, v7, v11

    if-nez v2, :cond_1

    .line 479
    :cond_0
    const/4 v0, 0x0

    .line 524
    :goto_0
    monitor-exit v1

    return v0

    .line 464
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 456
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    .line 483
    :cond_1
    const-wide/32 v11, 0x1d4c0

    sub-long v2, v3, v11

    cmp-long v2, v9, v2

    if-gez v2, :cond_2

    .line 485
    :try_start_5
    sget-object v0, Lcom/avast/android/generic/app/passwordrecovery/b;->f:Lcom/avast/android/generic/app/passwordrecovery/b;

    invoke-static {p0, v0}, Lcom/avast/android/generic/app/passwordrecovery/a;->a(Landroid/content/Context;Lcom/avast/android/generic/app/passwordrecovery/b;)V

    .line 491
    const/4 v0, 0x0

    goto :goto_0

    .line 493
    :cond_2
    const-wide/32 v2, 0x1d4c0

    add-long/2addr v2, v7

    cmp-long v2, v9, v2

    if-lez v2, :cond_3

    .line 494
    sget-object v0, Lcom/avast/android/generic/app/passwordrecovery/b;->e:Lcom/avast/android/generic/app/passwordrecovery/b;

    invoke-static {p0, v0}, Lcom/avast/android/generic/app/passwordrecovery/a;->a(Landroid/content/Context;Lcom/avast/android/generic/app/passwordrecovery/b;)V

    .line 495
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.avast.android.generic.app.passwordrecovery.ACTION_PASSWORD_RECOVERY_EXPIRED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 496
    invoke-static {v0}, Lcom/avast/android/generic/util/ae;->a(Landroid/content/Intent;)V

    .line 497
    const-string v2, "com.avast.android.generic.COMM_PERMISSION"

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 503
    const/4 v0, 0x0

    goto :goto_0

    .line 507
    :cond_3
    const-wide/16 v2, -0x1

    cmp-long v2, v5, v2

    if-eqz v2, :cond_5

    const-wide/32 v2, 0x1d4c0

    sub-long v2, v5, v2

    cmp-long v2, v9, v2

    if-ltz v2, :cond_4

    const-wide/32 v2, 0x1d4c0

    add-long/2addr v2, v5

    cmp-long v2, v9, v2

    if-lez v2, :cond_5

    .line 511
    :cond_4
    sget-object v0, Lcom/avast/android/generic/app/passwordrecovery/b;->f:Lcom/avast/android/generic/app/passwordrecovery/b;

    invoke-static {p0, v0}, Lcom/avast/android/generic/app/passwordrecovery/a;->a(Landroid/content/Context;Lcom/avast/android/generic/app/passwordrecovery/b;)V

    .line 517
    const/4 v0, 0x0

    goto :goto_0

    .line 521
    :cond_5
    sget-object v2, Lcom/avast/android/generic/app/passwordrecovery/a;->d:Ljava/lang/Object;

    monitor-enter v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 522
    :try_start_6
    invoke-virtual {v0, v9, v10}, Lcom/avast/android/generic/ae;->d(J)V

    .line 523
    monitor-exit v2

    .line 524
    const/4 v0, 0x1

    goto :goto_0

    .line 523
    :catchall_2
    move-exception v0

    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
.end method

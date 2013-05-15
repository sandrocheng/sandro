.class public Lcom/avast/android/mobilesecurity/app/filter/core/MessageReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MessageReceiver.java"

# interfaces
.implements Lcom/avast/android/mobilesecurity/app/messageshield/b;


# instance fields
.field private a:Landroid/content/Intent;

.field private b:Lcom/avast/android/mobilesecurity/t;

.field private c:Lcom/avast/android/mobilesecurity/app/filter/core/f;

.field private d:Ljava/lang/String;

.field private e:J

.field private f:Lcom/avast/android/mobilesecurity/engine/o;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 58
    const-string v0, ""

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/core/MessageReceiver;->d:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/app/filter/core/MessageReceiver;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/core/MessageReceiver;->d:Ljava/lang/String;

    return-object v0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 276
    .line 277
    monitor-enter p0

    .line 278
    :try_start_0
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/core/MessageReceiver;->f:Lcom/avast/android/mobilesecurity/engine/o;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 279
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 280
    if-eqz v0, :cond_3

    .line 281
    const-string v0, "MessageReceiver: Scan finished in time."

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    .line 282
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/core/MessageReceiver;->f:Lcom/avast/android/mobilesecurity/engine/o;

    sget-object v1, Lcom/avast/android/mobilesecurity/engine/o;->j:Lcom/avast/android/mobilesecurity/engine/o;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/core/MessageReceiver;->f:Lcom/avast/android/mobilesecurity/engine/o;

    sget-object v1, Lcom/avast/android/mobilesecurity/engine/o;->k:Lcom/avast/android/mobilesecurity/engine/o;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/core/MessageReceiver;->f:Lcom/avast/android/mobilesecurity/engine/o;

    sget-object v1, Lcom/avast/android/mobilesecurity/engine/o;->i:Lcom/avast/android/mobilesecurity/engine/o;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/core/MessageReceiver;->f:Lcom/avast/android/mobilesecurity/engine/o;

    sget-object v1, Lcom/avast/android/mobilesecurity/engine/o;->h:Lcom/avast/android/mobilesecurity/engine/o;

    if-ne v0, v1, :cond_1

    .line 286
    :cond_0
    const-string v0, "MessageReceiver: Infected message, aborting."

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    .line 287
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/filter/core/MessageReceiver;->abortBroadcast()V

    .line 288
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/core/MessageReceiver;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/filter/core/g;->a(Ljava/lang/String;)V

    .line 293
    :cond_1
    :goto_1
    return-void

    .line 278
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 279
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 291
    :cond_3
    const-string v0, "MessageReceiver: Scan not finished in time."

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    goto :goto_1
.end method

.method private a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 151
    new-instance v0, Lcom/avast/android/mobilesecurity/app/filter/core/a/e;

    invoke-direct {v0}, Lcom/avast/android/mobilesecurity/app/filter/core/a/e;-><init>()V

    .line 152
    const-string v1, "data"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avast/android/mobilesecurity/app/filter/core/a/e;->a([B)Lcom/avast/android/mobilesecurity/app/filter/core/a/d;

    move-result-object v0

    .line 153
    if-nez v0, :cond_1

    .line 154
    const-string v0, "SmsReciever: Couldn\'t parse headers for WAP PUSH."

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->f(Ljava/lang/String;)I

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/filter/core/a/d;->a()I

    move-result v1

    .line 159
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SmsReciever: WAP PUSH message type: 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    .line 162
    const/16 v2, 0x82

    if-ne v1, v2, :cond_0

    .line 163
    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/filter/core/a/d;->b()Lcom/avast/android/mobilesecurity/app/filter/core/a/b;

    move-result-object v0

    .line 165
    if-eqz v0, :cond_0

    .line 166
    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/filter/core/a/b;->b()Ljava/lang/String;

    move-result-object v0

    .line 167
    const v1, 0x7f0c02b2

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/avast/android/mobilesecurity/app/filter/core/MessageReceiver;->d:Ljava/lang/String;

    .line 168
    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 169
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/filter/core/MessageReceiver;->c:Lcom/avast/android/mobilesecurity/app/filter/core/f;

    invoke-virtual {v1, v0}, Lcom/avast/android/mobilesecurity/app/filter/core/f;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 260
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/core/MessageReceiver;->b:Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/t;->aj()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/core/MessageReceiver;->b:Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/t;->ak()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 261
    const-wide/16 v0, 0x2710

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/avast/android/mobilesecurity/app/filter/core/MessageReceiver;->e:J

    sub-long/2addr v2, v4

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    long-to-int v9, v0

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MessageReceiver: Starting scan and waiting for result, time left: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    .line 263
    if-lez v9, :cond_0

    .line 264
    const-string v4, ""

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/core/MessageReceiver;->a:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v8, p0

    invoke-static/range {v0 .. v9}, Lcom/avast/android/mobilesecurity/app/messageshield/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;Lcom/avast/android/mobilesecurity/app/messageshield/b;I)V

    .line 267
    :cond_0
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/filter/core/MessageReceiver;->a()V

    .line 269
    :cond_1
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 333
    const-class v0, Lcom/avast/android/mobilesecurity/t;

    invoke-static {p1, v0}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/t;

    .line 334
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/filter/core/MessageReceiver;->getAbortBroadcast()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/t;->aj()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/t;->al()Z

    move-result v0

    if-nez v0, :cond_1

    .line 363
    :cond_0
    :goto_0
    return-void

    .line 339
    :cond_1
    if-eqz p3, :cond_3

    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/core/MessageReceiver;->b:Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/t;->M()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/core/MessageReceiver;->b:Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/t;->N()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 343
    :cond_2
    const-string v0, "MessageReceiver: Received SMS from Anti-Theft friend number, skipping block offer."

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    goto :goto_0

    .line 347
    :cond_3
    const-string v0, "MessageReceiver"

    const-string v1, "show proposal: %s, %s, %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p3, v2, v5

    aput-object p4, v2, v6

    const/4 v4, 0x2

    aput-object p5, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avast/android/generic/util/m;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    if-eqz p3, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 349
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v5

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 352
    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_5

    .line 353
    :cond_4
    const-string v0, "MessageReceiver: Aborting broadcast, showing proposal to deal with the message."

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    .line 354
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/core/MessageReceiver;->a:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const/high16 v6, 0x1000

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    invoke-static/range {v0 .. v6}, Lcom/avast/android/mobilesecurity/app/messageshield/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 356
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/filter/core/MessageReceiver;->abortBroadcast()V

    .line 357
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/core/MessageReceiver;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/filter/core/g;->a(Ljava/lang/String;)V

    .line 359
    :cond_5
    if-eqz v7, :cond_0

    .line 360
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 6
    .parameter

    .prologue
    .line 302
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/core/MessageReceiver;->b:Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/t;->M()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/core/MessageReceiver;->b:Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/t;->N()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 306
    :cond_0
    const-string v0, "MessageReceiver: Received SMS from Anti-Theft friend number, skipping filter."

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    .line 317
    :goto_0
    return-void

    .line 307
    :cond_1
    if-eqz p1, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MessageReceiver: smsLookup, lookupPhoneNumber: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    .line 309
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/core/MessageReceiver;->c:Lcom/avast/android/mobilesecurity/app/filter/core/f;

    invoke-virtual {v0, p1}, Lcom/avast/android/mobilesecurity/app/filter/core/f;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 311
    :cond_2
    const-string v0, "MessageReceiver: smsLookup, lookupHiddenNumber"

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    .line 314
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/core/MessageReceiver;->c:Lcom/avast/android/mobilesecurity/app/filter/core/f;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/filter/core/f;->a()V

    .line 315
    invoke-static {}, Lcom/avast/android/generic/util/ga/a;->a()Lcom/google/analytics/tracking/android/bo;

    move-result-object v0

    const-string v1, "error"

    const-string v2, "received SMS without sender number"

    const-string v3, ""

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/analytics/tracking/android/bo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0
.end method

.method private declared-synchronized a(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 383
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 385
    const-string v2, "pdus"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 386
    if-eqz v0, :cond_1

    .line 387
    array-length v2, v0

    new-array v2, v2, [Landroid/telephony/SmsMessage;

    move v3, v1

    .line 388
    :goto_0
    array-length v1, v0

    if-ge v3, v1, :cond_0

    .line 389
    aget-object v1, v0, v3

    check-cast v1, [B

    check-cast v1, [B

    invoke-static {v1}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v1

    aput-object v1, v2, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 388
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    :cond_0
    move-object v0, v2

    .line 393
    :goto_1
    monitor-exit p0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    :try_start_1
    new-array v0, v0, [Landroid/telephony/SmsMessage;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 383
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private b(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 184
    const-string v0, "MessageReceiver: onReceiveSMS"

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    .line 185
    invoke-direct {p0, p2}, Lcom/avast/android/mobilesecurity/app/filter/core/MessageReceiver;->a(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object v7

    .line 188
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/core/MessageReceiver;->g:Ljava/lang/String;

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MessageReceiver: Generating message UUID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/filter/core/MessageReceiver;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    .line 194
    const/4 v0, 0x0

    move v6, v0

    move-object v3, v5

    move-object v0, v5

    :goto_0
    array-length v1, v7

    if-ge v6, v1, :cond_4

    .line 196
    :try_start_0
    aget-object v1, v7, v6

    invoke-virtual {v1}, Landroid/telephony/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v3

    .line 197
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MessageReceiver: getDisplayOriginatingAddress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, v7, v6

    invoke-virtual {v2}, Landroid/telephony/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    .line 199
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MessageReceiver: getOriginatingAddress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, v7, v6

    invoke-virtual {v2}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 210
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MessageReceiver: receiving sms from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    .line 212
    const-string v1, ""

    .line 214
    :try_start_1
    aget-object v1, v7, v6

    invoke-virtual {v1}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    .line 222
    if-eqz v0, :cond_0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 223
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/avast/android/mobilesecurity/app/filter/core/MessageReceiver;->d:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/avast/android/mobilesecurity/app/filter/core/MessageReceiver;->d:Ljava/lang/String;

    .line 194
    :goto_2
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto :goto_0

    .line 215
    :catch_0
    move-exception v0

    .line 216
    const-string v1, "MessageReceiver: Error parsing SMS"

    invoke-static {v1, v0}, Lcom/avast/android/generic/util/m;->b(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 217
    invoke-static {}, Lcom/avast/android/generic/util/ga/a;->a()Lcom/google/analytics/tracking/android/bo;

    move-result-object v1

    const-string v2, "error"

    const-string v3, "received SMS parse error"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v1, v2, v3, v0, v4}, Lcom/google/analytics/tracking/android/bo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 243
    :cond_1
    :goto_3
    return-void

    .line 226
    :cond_2
    invoke-direct {p0, v3}, Lcom/avast/android/mobilesecurity/app/filter/core/MessageReceiver;->a(Ljava/lang/String;)V

    .line 227
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/filter/core/MessageReceiver;->getAbortBroadcast()Z

    move-result v0

    if-nez v0, :cond_3

    .line 228
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/core/MessageReceiver;->g:Ljava/lang/String;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/filter/core/MessageReceiver;->d:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v3, v1}, Lcom/avast/android/mobilesecurity/app/filter/core/MessageReceiver;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/filter/core/MessageReceiver;->g:Ljava/lang/String;

    iget-object v4, p0, Lcom/avast/android/mobilesecurity/app/filter/core/MessageReceiver;->d:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/avast/android/mobilesecurity/app/filter/core/MessageReceiver;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    :cond_3
    const-string v0, ""

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/core/MessageReceiver;->d:Ljava/lang/String;

    move-object v0, v3

    .line 233
    goto :goto_2

    .line 236
    :cond_4
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/core/MessageReceiver;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 237
    invoke-direct {p0, v3}, Lcom/avast/android/mobilesecurity/app/filter/core/MessageReceiver;->a(Ljava/lang/String;)V

    .line 238
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/filter/core/MessageReceiver;->getAbortBroadcast()Z

    move-result v0

    if-nez v0, :cond_1

    .line 239
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/core/MessageReceiver;->g:Ljava/lang/String;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/filter/core/MessageReceiver;->d:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v3, v1}, Lcom/avast/android/mobilesecurity/app/filter/core/MessageReceiver;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/filter/core/MessageReceiver;->g:Ljava/lang/String;

    iget-object v4, p0, Lcom/avast/android/mobilesecurity/app/filter/core/MessageReceiver;->d:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/avast/android/mobilesecurity/app/filter/core/MessageReceiver;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 200
    :catch_1
    move-exception v1

    goto/16 :goto_1
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/avast/android/mobilesecurity/engine/o;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 368
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MessageReceiver: onScanFinised for UUID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    .line 369
    monitor-enter p0

    .line 370
    :try_start_0
    iput-object p2, p0, Lcom/avast/android/mobilesecurity/app/filter/core/MessageReceiver;->f:Lcom/avast/android/mobilesecurity/engine/o;

    .line 371
    monitor-exit p0

    .line 372
    return-void

    .line 371
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 67
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/avast/android/mobilesecurity/app/filter/core/MessageReceiver;->e:J

    .line 69
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MessageReceiver: Received message, action: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MessageReceiver: isOrderedBroadcast: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/filter/core/MessageReceiver;->isOrderedBroadcast()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    .line 73
    const-class v0, Lcom/avast/android/mobilesecurity/t;

    invoke-static {p1, v0}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/t;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/core/MessageReceiver;->b:Lcom/avast/android/mobilesecurity/t;

    .line 74
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/core/MessageReceiver;->b:Lcom/avast/android/mobilesecurity/t;

    const-string v2, "eulaDone"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/avast/android/mobilesecurity/t;->b(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 76
    const-string v0, "MessageReceiver: EULA not approved, stop processing sms."

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    invoke-static {p1}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;->a(Landroid/content/Context;)Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;

    move-result-object v0

    .line 81
    iput-object p2, p0, Lcom/avast/android/mobilesecurity/app/filter/core/MessageReceiver;->a:Landroid/content/Intent;

    .line 82
    new-instance v2, Lcom/avast/android/mobilesecurity/app/filter/core/l;

    invoke-direct {v2, p0, p1, v0}, Lcom/avast/android/mobilesecurity/app/filter/core/l;-><init>(Lcom/avast/android/mobilesecurity/app/filter/core/MessageReceiver;Landroid/content/Context;Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;)V

    iput-object v2, p0, Lcom/avast/android/mobilesecurity/app/filter/core/MessageReceiver;->c:Lcom/avast/android/mobilesecurity/app/filter/core/f;

    .line 127
    const-string v0, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "android.provider.Telephony.DATA_SMS_RECEIVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "android.provider.Telephony.SMS_CB_RECEIVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 128
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/avast/android/mobilesecurity/app/filter/core/MessageReceiver;->b(Landroid/content/Context;Landroid/content/Intent;)V

    .line 131
    :cond_3
    const-string v0, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "application/vnd.wap.mms-message"

    invoke-virtual {p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    invoke-direct {p0, p1, p2}, Lcom/avast/android/mobilesecurity/app/filter/core/MessageReceiver;->a(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method

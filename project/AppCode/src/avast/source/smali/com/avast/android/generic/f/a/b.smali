.class public Lcom/avast/android/generic/f/a/b;
.super Landroid/telephony/PhoneStateListener;
.source "SmsSender.java"


# instance fields
.field private a:Ljava/lang/Object;

.field private b:Lcom/avast/android/generic/ae;

.field private c:Ljava/util/Random;

.field private d:Ljava/util/LinkedList;

.field private e:Ljava/util/LinkedList;

.field private f:Lcom/avast/android/generic/service/AvastService;

.field private g:Lcom/avast/android/generic/f/a/g;

.field private h:Lcom/avast/android/generic/f/a/f;

.field private i:Ljava/lang/Thread;

.field private j:Z

.field private k:Ljava/lang/Object;

.field private l:Landroid/telephony/TelephonyManager;

.field private m:Z


# direct methods
.method public constructor <init>(Lcom/avast/android/generic/service/AvastService;)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 225
    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/avast/android/generic/f/a/b;->a:Ljava/lang/Object;

    .line 59
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/avast/android/generic/f/a/b;->c:Ljava/util/Random;

    .line 60
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/avast/android/generic/f/a/b;->d:Ljava/util/LinkedList;

    .line 61
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/avast/android/generic/f/a/b;->e:Ljava/util/LinkedList;

    .line 63
    iput-object v3, p0, Lcom/avast/android/generic/f/a/b;->f:Lcom/avast/android/generic/service/AvastService;

    .line 64
    iput-object v3, p0, Lcom/avast/android/generic/f/a/b;->g:Lcom/avast/android/generic/f/a/g;

    .line 65
    iput-object v3, p0, Lcom/avast/android/generic/f/a/b;->h:Lcom/avast/android/generic/f/a/f;

    .line 66
    iput-object v3, p0, Lcom/avast/android/generic/f/a/b;->i:Ljava/lang/Thread;

    .line 67
    iput-boolean v2, p0, Lcom/avast/android/generic/f/a/b;->j:Z

    .line 68
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/avast/android/generic/f/a/b;->k:Ljava/lang/Object;

    .line 70
    iput-object v3, p0, Lcom/avast/android/generic/f/a/b;->l:Landroid/telephony/TelephonyManager;

    .line 76
    iput-boolean v1, p0, Lcom/avast/android/generic/f/a/b;->m:Z

    .line 226
    const-string v0, "AvastComms"

    const-string v3, "Initializing SMS sender..."

    invoke-static {v0, p1, v3}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    .line 228
    iput-object p1, p0, Lcom/avast/android/generic/f/a/b;->f:Lcom/avast/android/generic/service/AvastService;

    .line 230
    const-class v0, Lcom/avast/android/generic/ae;

    invoke-static {p1, v0}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/ae;

    iput-object v0, p0, Lcom/avast/android/generic/f/a/b;->b:Lcom/avast/android/generic/ae;

    .line 232
    iget-object v3, p0, Lcom/avast/android/generic/f/a/b;->k:Ljava/lang/Object;

    monitor-enter v3

    .line 234
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/avast/android/generic/f/a/b;->i:Ljava/lang/Thread;

    .line 235
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    invoke-static {p1}, Lcom/avast/android/generic/f/b/a;->c(Landroid/content/Context;)I

    move-result v0

    const/4 v3, 0x5

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/avast/android/generic/f/a/b;->m:Z

    .line 239
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Lcom/avast/android/generic/service/AvastService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/avast/android/generic/f/a/b;->l:Landroid/telephony/TelephonyManager;

    .line 241
    iget-object v0, p0, Lcom/avast/android/generic/f/a/b;->l:Landroid/telephony/TelephonyManager;

    const/4 v1, 0x3

    invoke-virtual {v0, p0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 244
    iget-object v1, p0, Lcom/avast/android/generic/f/a/b;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 246
    :try_start_1
    new-instance v0, Lcom/avast/android/generic/f/a/g;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/avast/android/generic/f/a/g;-><init>(Lcom/avast/android/generic/f/a/b;Lcom/avast/android/generic/f/a/c;)V

    iput-object v0, p0, Lcom/avast/android/generic/f/a/b;->g:Lcom/avast/android/generic/f/a/g;

    .line 247
    new-instance v0, Lcom/avast/android/generic/f/a/f;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/avast/android/generic/f/a/f;-><init>(Lcom/avast/android/generic/f/a/b;Lcom/avast/android/generic/f/a/c;)V

    iput-object v0, p0, Lcom/avast/android/generic/f/a/b;->h:Lcom/avast/android/generic/f/a/f;

    .line 249
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "com.avast.android.antitheft.SMS_SENT"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 250
    const-string v2, "avsms"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 251
    iget-object v2, p0, Lcom/avast/android/generic/f/a/b;->g:Lcom/avast/android/generic/f/a/g;

    invoke-virtual {p1, v2, v0}, Lcom/avast/android/generic/service/AvastService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 252
    iget-object v0, p0, Lcom/avast/android/generic/f/a/b;->h:Lcom/avast/android/generic/f/a/f;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.avast.android.antitheft.PART_SMS_SENT"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v2}, Lcom/avast/android/generic/service/AvastService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 253
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 255
    const-string v0, "AvastComms"

    const-string v1, "Initialized SMS sender"

    invoke-static {v0, p1, v1}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    .line 256
    return-void

    .line 235
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_0
    move v0, v2

    .line 237
    goto :goto_0

    .line 253
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method static synthetic a(Lcom/avast/android/generic/f/a/b;)Lcom/avast/android/generic/service/AvastService;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/avast/android/generic/f/a/b;->f:Lcom/avast/android/generic/service/AvastService;

    return-object v0
.end method

.method static synthetic a(Lcom/avast/android/generic/f/a/b;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, Lcom/avast/android/generic/f/a/b;->i:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic a(Lcom/avast/android/generic/f/a/b;Lcom/avast/android/generic/f/a/e;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/avast/android/generic/f/a/b;->a(Lcom/avast/android/generic/f/a/e;)V

    return-void
.end method

.method static synthetic a(Lcom/avast/android/generic/f/a/b;Lcom/avast/android/generic/f/a/e;IZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/avast/android/generic/f/a/b;->a(Lcom/avast/android/generic/f/a/e;IZ)V

    return-void
.end method

.method private a(Lcom/avast/android/generic/f/a/e;)V
    .locals 4
    .parameter

    .prologue
    .line 152
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/avast/android/generic/f/a/e;->c:Lcom/avast/android/generic/f/a/a;

    if-eqz v0, :cond_0

    .line 156
    :try_start_0
    iget-object v0, p1, Lcom/avast/android/generic/f/a/e;->c:Lcom/avast/android/generic/f/a/a;

    invoke-interface {v0}, Lcom/avast/android/generic/f/a/a;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/avast/android/generic/f/a/b;->g()V

    .line 164
    iget-object v1, p0, Lcom/avast/android/generic/f/a/b;->e:Ljava/util/LinkedList;

    monitor-enter v1

    .line 166
    :try_start_1
    iget-object v0, p0, Lcom/avast/android/generic/f/a/b;->e:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 167
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 169
    invoke-virtual {p0}, Lcom/avast/android/generic/f/a/b;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 170
    iget-object v0, p0, Lcom/avast/android/generic/f/a/b;->f:Lcom/avast/android/generic/service/AvastService;

    invoke-virtual {v0}, Lcom/avast/android/generic/service/AvastService;->b()V

    .line 171
    :cond_1
    return-void

    .line 157
    :catch_0
    move-exception v0

    .line 159
    const-string v1, "AvastComms"

    iget-object v2, p0, Lcom/avast/android/generic/f/a/b;->f:Lcom/avast/android/generic/service/AvastService;

    const-string v3, "SMS sender SMS callback error"

    invoke-static {v1, v2, v3, v0}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 167
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private a(Lcom/avast/android/generic/f/a/e;IZ)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 174
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/avast/android/generic/f/a/e;->c:Lcom/avast/android/generic/f/a/a;

    if-eqz v0, :cond_0

    .line 178
    :try_start_0
    iget-object v0, p1, Lcom/avast/android/generic/f/a/e;->c:Lcom/avast/android/generic/f/a/a;

    invoke-interface {v0, p2}, Lcom/avast/android/generic/f/a/a;->a(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/avast/android/generic/f/a/b;->g()V

    .line 187
    if-eqz p3, :cond_2

    .line 189
    invoke-direct {p0, p1}, Lcom/avast/android/generic/f/a/b;->c(Lcom/avast/android/generic/f/a/e;)Z

    .line 195
    :goto_1
    invoke-virtual {p0}, Lcom/avast/android/generic/f/a/b;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 196
    iget-object v0, p0, Lcom/avast/android/generic/f/a/b;->f:Lcom/avast/android/generic/service/AvastService;

    invoke-virtual {v0}, Lcom/avast/android/generic/service/AvastService;->b()V

    .line 197
    :cond_1
    return-void

    .line 179
    :catch_0
    move-exception v0

    .line 181
    const-string v1, "AvastComms"

    iget-object v2, p0, Lcom/avast/android/generic/f/a/b;->f:Lcom/avast/android/generic/service/AvastService;

    const-string v3, "SMS sender SMS callback error"

    invoke-static {v1, v2, v3, v0}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 192
    :cond_2
    invoke-direct {p0, p1}, Lcom/avast/android/generic/f/a/b;->d(Lcom/avast/android/generic/f/a/e;)Z

    goto :goto_1
.end method

.method private a(Lcom/avast/android/generic/f/a/e;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 669
    const-string v0, "AvastComms"

    iget-object v3, p0, Lcom/avast/android/generic/f/a/b;->f:Lcom/avast/android/generic/service/AvastService;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SMS sender is sending outgoing SMS to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    .line 677
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/avast/android/generic/f/a/e;->c:Lcom/avast/android/generic/f/a/a;

    if-eqz v0, :cond_0

    .line 679
    iget-object v0, p1, Lcom/avast/android/generic/f/a/e;->c:Lcom/avast/android/generic/f/a/a;

    invoke-interface {v0}, Lcom/avast/android/generic/f/a/a;->a()V

    .line 682
    :cond_0
    iget-object v0, p1, Lcom/avast/android/generic/f/a/e;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    .line 683
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.avast.android.antitheft.SMS_SENT"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "avsms://sent/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 684
    const-string v4, "smsId"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 686
    iget-object v0, p0, Lcom/avast/android/generic/f/a/b;->f:Lcom/avast/android/generic/service/AvastService;

    invoke-static {v0, v1, v3, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 688
    iget-object v0, p0, Lcom/avast/android/generic/f/a/b;->f:Lcom/avast/android/generic/service/AvastService;

    new-instance v3, Landroid/content/Intent;

    const-string v5, "com.avast.android.antitheft.PART_SMS_SENT"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v3, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 691
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    .line 692
    invoke-virtual {v0, p3}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 693
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    if-gt v6, v7, :cond_2

    move-object v1, p2

    move-object v3, p3

    move-object v5, v2

    .line 695
    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 726
    :cond_1
    :goto_0
    return-void

    .line 698
    :cond_2
    iget-object v6, p0, Lcom/avast/android/generic/f/a/b;->b:Lcom/avast/android/generic/ae;

    invoke-virtual {v6}, Lcom/avast/android/generic/ae;->L()Z

    move-result v6

    if-nez v6, :cond_5

    .line 700
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 701
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v1, v7, :cond_4

    .line 703
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ge v1, v7, :cond_3

    .line 705
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 701
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 708
    :cond_3
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    move-object v1, p2

    move-object v4, v6

    move-object v5, v2

    .line 711
    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 714
    :cond_5
    :goto_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 716
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_6

    .line 718
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    move-object v5, v0

    move-object v6, p2

    move-object v7, v2

    move-object v9, v2

    move-object v10, v2

    invoke-virtual/range {v5 .. v10}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 714
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 721
    :cond_6
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    move-object v5, v0

    move-object v6, p2

    move-object v7, v2

    move-object v9, v4

    move-object v10, v2

    invoke-virtual/range {v5 .. v10}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto :goto_4
.end method

.method static synthetic a(Lcom/avast/android/generic/f/a/b;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/avast/android/generic/f/a/b;->j:Z

    return p1
.end method

.method static synthetic b(Lcom/avast/android/generic/f/a/b;)Ljava/util/LinkedList;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/avast/android/generic/f/a/b;->e:Ljava/util/LinkedList;

    return-object v0
.end method

.method private b(Lcom/avast/android/generic/f/a/e;)V
    .locals 5
    .parameter

    .prologue
    .line 407
    iget-object v1, p0, Lcom/avast/android/generic/f/a/b;->d:Ljava/util/LinkedList;

    monitor-enter v1

    .line 409
    :try_start_0
    const-string v0, "AvastComms"

    iget-object v2, p0, Lcom/avast/android/generic/f/a/b;->f:Lcom/avast/android/generic/service/AvastService;

    const-string v3, "SMS sender is queueing SMS traffic..."

    invoke-static {v0, v2, v3}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    .line 410
    iget-object v0, p0, Lcom/avast/android/generic/f/a/b;->d:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 412
    iget-object v0, p0, Lcom/avast/android/generic/f/a/b;->d:Ljava/util/LinkedList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 414
    const-string v0, "AvastComms"

    iget-object v2, p0, Lcom/avast/android/generic/f/a/b;->f:Lcom/avast/android/generic/service/AvastService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SMS sender queued SMS traffic (length "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/avast/android/generic/f/a/b;->d:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    .line 415
    monitor-exit v1

    .line 416
    return-void

    .line 415
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic c(Lcom/avast/android/generic/f/a/b;)Z
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/avast/android/generic/f/a/b;->j:Z

    return v0
.end method

.method private c(Lcom/avast/android/generic/f/a/e;)Z
    .locals 3
    .parameter

    .prologue
    .line 729
    iget-object v1, p0, Lcom/avast/android/generic/f/a/b;->e:Ljava/util/LinkedList;

    monitor-enter v1

    .line 731
    :try_start_0
    iget-object v2, p0, Lcom/avast/android/generic/f/a/b;->d:Ljava/util/LinkedList;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 733
    :try_start_1
    iget-object v0, p0, Lcom/avast/android/generic/f/a/b;->e:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 735
    invoke-direct {p0, p1}, Lcom/avast/android/generic/f/a/b;->e(Lcom/avast/android/generic/f/a/e;)Z

    move-result v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return v0

    .line 736
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 737
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method static synthetic d(Lcom/avast/android/generic/f/a/b;)Ljava/util/LinkedList;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/avast/android/generic/f/a/b;->d:Ljava/util/LinkedList;

    return-object v0
.end method

.method private d(Lcom/avast/android/generic/f/a/e;)Z
    .locals 3
    .parameter

    .prologue
    .line 741
    iget-object v1, p0, Lcom/avast/android/generic/f/a/b;->d:Ljava/util/LinkedList;

    monitor-enter v1

    .line 743
    :try_start_0
    iget-object v2, p0, Lcom/avast/android/generic/f/a/b;->e:Ljava/util/LinkedList;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 745
    :try_start_1
    iget-object v0, p0, Lcom/avast/android/generic/f/a/b;->d:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 747
    invoke-direct {p0, p1}, Lcom/avast/android/generic/f/a/b;->e(Lcom/avast/android/generic/f/a/e;)Z

    move-result v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return v0

    .line 748
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 749
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method static synthetic e(Lcom/avast/android/generic/f/a/b;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/avast/android/generic/f/a/b;->h()V

    return-void
.end method

.method private e(Lcom/avast/android/generic/f/a/e;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 753
    iget-boolean v1, p1, Lcom/avast/android/generic/f/a/e;->d:Z

    if-eqz v1, :cond_3

    .line 755
    iget v1, p1, Lcom/avast/android/generic/f/a/e;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p1, Lcom/avast/android/generic/f/a/e;->e:I

    .line 756
    iget v1, p1, Lcom/avast/android/generic/f/a/e;->e:I

    const/4 v2, 0x3

    if-gt v1, v2, :cond_2

    .line 758
    iget v0, p1, Lcom/avast/android/generic/f/a/e;->e:I

    iget v1, p1, Lcom/avast/android/generic/f/a/e;->e:I

    mul-int/2addr v0, v1

    mul-int/lit16 v0, v0, 0x7d0

    int-to-long v0, v0

    .line 759
    const-string v2, "AvastComms"

    iget-object v3, p0, Lcom/avast/android/generic/f/a/b;->f:Lcom/avast/android/generic/service/AvastService;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SMS sender is requeueing reliable SMS descriptor (retry count "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Lcom/avast/android/generic/f/a/e;->e:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", timeout "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms)..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    .line 761
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p1, Lcom/avast/android/generic/f/a/e;->f:J

    .line 763
    invoke-direct {p0, p1}, Lcom/avast/android/generic/f/a/b;->b(Lcom/avast/android/generic/f/a/e;)V

    .line 765
    iget-boolean v0, p0, Lcom/avast/android/generic/f/a/b;->m:Z

    if-nez v0, :cond_1

    .line 767
    invoke-virtual {p0}, Lcom/avast/android/generic/f/a/b;->d()V

    .line 769
    iget-object v0, p1, Lcom/avast/android/generic/f/a/e;->c:Lcom/avast/android/generic/f/a/a;

    if-eqz v0, :cond_0

    .line 773
    :try_start_0
    iget-object v0, p1, Lcom/avast/android/generic/f/a/e;->c:Lcom/avast/android/generic/f/a/a;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/avast/android/generic/f/a/a;->a(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 783
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 794
    :goto_1
    return v0

    .line 780
    :cond_1
    invoke-direct {p0}, Lcom/avast/android/generic/f/a/b;->f()V

    goto :goto_0

    .line 786
    :cond_2
    const-string v1, "AvastComms"

    iget-object v2, p0, Lcom/avast/android/generic/f/a/b;->f:Lcom/avast/android/generic/service/AvastService;

    const-string v3, "SMS sender is junking reliable SMS descriptor because of too much failures"

    invoke-static {v1, v2, v3}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 792
    :cond_3
    const-string v1, "AvastComms"

    iget-object v2, p0, Lcom/avast/android/generic/f/a/b;->f:Lcom/avast/android/generic/service/AvastService;

    const-string v3, "SMS sender is junking non-reliable SMS descriptor"

    invoke-static {v1, v2, v3}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 774
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic f(Lcom/avast/android/generic/f/a/b;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/avast/android/generic/f/a/b;->k:Ljava/lang/Object;

    return-object v0
.end method

.method private f()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 420
    .line 421
    iget-object v1, p0, Lcom/avast/android/generic/f/a/b;->d:Ljava/util/LinkedList;

    monitor-enter v1

    .line 423
    :try_start_0
    iget-object v2, p0, Lcom/avast/android/generic/f/a/b;->d:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-lez v2, :cond_0

    iget-boolean v2, p0, Lcom/avast/android/generic/f/a/b;->m:Z

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 424
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 426
    if-eqz v0, :cond_1

    .line 428
    iget-object v1, p0, Lcom/avast/android/generic/f/a/b;->k:Ljava/lang/Object;

    monitor-enter v1

    .line 430
    :try_start_1
    iget-object v0, p0, Lcom/avast/android/generic/f/a/b;->i:Ljava/lang/Thread;

    if-eqz v0, :cond_3

    .line 432
    iget-object v0, p0, Lcom/avast/android/generic/f/a/b;->i:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 434
    iget-object v0, p0, Lcom/avast/android/generic/f/a/b;->i:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 435
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 510
    :cond_1
    :goto_0
    return-void

    .line 424
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 438
    :cond_2
    const/4 v0, 0x0

    :try_start_3
    iput-object v0, p0, Lcom/avast/android/generic/f/a/b;->i:Ljava/lang/Thread;

    .line 441
    :cond_3
    const-string v0, "AvastComms"

    iget-object v2, p0, Lcom/avast/android/generic/f/a/b;->f:Lcom/avast/android/generic/service/AvastService;

    const-string v3, "SMS sender is starting SMS thread..."

    invoke-static {v0, v2, v3}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    .line 443
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/avast/android/generic/f/a/b;->j:Z

    .line 445
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/avast/android/generic/f/a/c;

    invoke-direct {v2, p0}, Lcom/avast/android/generic/f/a/c;-><init>(Lcom/avast/android/generic/f/a/b;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/avast/android/generic/f/a/b;->i:Ljava/lang/Thread;

    .line 505
    iget-object v0, p0, Lcom/avast/android/generic/f/a/b;->i:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 507
    const-string v0, "AvastComms"

    iget-object v2, p0, Lcom/avast/android/generic/f/a/b;->f:Lcom/avast/android/generic/service/AvastService;

    const-string v3, "Started SMS sender thread"

    invoke-static {v0, v2, v3}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    .line 508
    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method static synthetic g(Lcom/avast/android/generic/f/a/b;)Ljava/lang/Thread;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/avast/android/generic/f/a/b;->i:Ljava/lang/Thread;

    return-object v0
.end method

.method private g()V
    .locals 6

    .prologue
    .line 605
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 606
    iget-object v2, p0, Lcom/avast/android/generic/f/a/b;->d:Ljava/util/LinkedList;

    monitor-enter v2

    .line 608
    :try_start_0
    iget-object v0, p0, Lcom/avast/android/generic/f/a/b;->d:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 609
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 611
    const/4 v0, 0x1

    .line 613
    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    .line 614
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 616
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/f/a/e;

    .line 617
    iget-object v3, v0, Lcom/avast/android/generic/f/a/e;->c:Lcom/avast/android/generic/f/a/a;

    if-eqz v3, :cond_0

    .line 620
    :try_start_1
    iget-object v0, v0, Lcom/avast/android/generic/f/a/e;->c:Lcom/avast/android/generic/f/a/a;

    invoke-interface {v0, v1}, Lcom/avast/android/generic/f/a/a;->b(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 626
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 627
    goto :goto_0

    .line 609
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 621
    :catch_0
    move-exception v0

    .line 622
    const-string v3, "AvastComms"

    iget-object v4, p0, Lcom/avast/android/generic/f/a/b;->f:Lcom/avast/android/generic/service/AvastService;

    const-string v5, "SMS sender callback error"

    invoke-static {v3, v4, v5, v0}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 628
    :cond_1
    return-void
.end method

.method private h()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 632
    .line 636
    :try_start_0
    iget-object v1, p0, Lcom/avast/android/generic/f/a/b;->e:Ljava/util/LinkedList;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 638
    :try_start_1
    iget-object v2, p0, Lcom/avast/android/generic/f/a/b;->d:Ljava/util/LinkedList;

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 640
    :try_start_2
    iget-object v0, p0, Lcom/avast/android/generic/f/a/b;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/f/a/e;

    .line 641
    if-nez v0, :cond_0

    .line 642
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 664
    :goto_0
    return-void

    .line 644
    :cond_0
    :try_start_4
    iget-object v3, v0, Lcom/avast/android/generic/f/a/e;->a:Lcom/avast/android/generic/util/bc;

    .line 645
    iget-object v4, p0, Lcom/avast/android/generic/f/a/b;->e:Ljava/util/LinkedList;

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 646
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 647
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 654
    invoke-direct {p0}, Lcom/avast/android/generic/f/a/b;->g()V

    .line 658
    :try_start_6
    iget-object v1, v3, Lcom/avast/android/generic/util/bc;->e:Ljava/lang/String;

    iget-object v2, v3, Lcom/avast/android/generic/util/bc;->b:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/avast/android/generic/f/a/b;->a(Lcom/avast/android/generic/f/a/e;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_0

    .line 659
    :catch_0
    move-exception v1

    .line 661
    const-string v2, "AvastComms"

    iget-object v3, p0, Lcom/avast/android/generic/f/a/b;->f:Lcom/avast/android/generic/service/AvastService;

    const-string v4, "SMS sender sending error"

    invoke-static {v2, v3, v4, v1}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 662
    invoke-direct {p0, v0, v5, v5}, Lcom/avast/android/generic/f/a/b;->a(Lcom/avast/android/generic/f/a/e;IZ)V

    goto :goto_0

    .line 646
    :catchall_0
    move-exception v0

    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v0

    .line 647
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    .line 648
    :catch_1
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized a(Lcom/avast/android/generic/util/bc;Lcom/avast/android/generic/f/a/a;Z)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 343
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/avast/android/generic/f/a/b;->f:Lcom/avast/android/generic/service/AvastService;

    invoke-static {v0}, Lcom/avast/android/generic/service/AvastService;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 345
    const-string v0, "AvastComms"

    iget-object v1, p0, Lcom/avast/android/generic/f/a/b;->f:Lcom/avast/android/generic/service/AvastService;

    const-string v2, "SMS permission is not available, junking SMS"

    invoke-static {v0, v1, v2}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 347
    if-eqz p2, :cond_0

    .line 351
    const/4 v0, 0x1

    :try_start_1
    invoke-interface {p2, v0}, Lcom/avast/android/generic/f/a/a;->a(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 404
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 360
    :cond_1
    :try_start_2
    iget-object v0, p1, Lcom/avast/android/generic/util/bc;->e:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 362
    const-string v0, "AvastComms"

    iget-object v1, p0, Lcom/avast/android/generic/f/a/b;->f:Lcom/avast/android/generic/service/AvastService;

    const-string v2, "SMS sender no target number given for SMS"

    invoke-static {v0, v1, v2}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 364
    if-eqz p2, :cond_0

    .line 368
    const/4 v0, 0x1

    :try_start_3
    invoke-interface {p2, v0}, Lcom/avast/android/generic/f/a/a;->a(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 369
    :catch_0
    move-exception v0

    goto :goto_0

    .line 375
    :cond_2
    :try_start_4
    new-instance v0, Lcom/avast/android/generic/f/a/e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/avast/android/generic/f/a/e;-><init>(Lcom/avast/android/generic/f/a/b;Lcom/avast/android/generic/f/a/c;)V

    .line 376
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/avast/android/generic/f/a/b;->c:Ljava/util/Random;

    const v3, 0x186a0

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 377
    iput-object v1, v0, Lcom/avast/android/generic/f/a/e;->b:Ljava/lang/String;

    .line 378
    iput-object p1, v0, Lcom/avast/android/generic/f/a/e;->a:Lcom/avast/android/generic/util/bc;

    .line 379
    iput-object p2, v0, Lcom/avast/android/generic/f/a/e;->c:Lcom/avast/android/generic/f/a/a;

    .line 380
    iput-boolean p3, v0, Lcom/avast/android/generic/f/a/e;->d:Z

    .line 381
    invoke-direct {p0, v0}, Lcom/avast/android/generic/f/a/b;->b(Lcom/avast/android/generic/f/a/e;)V

    .line 382
    const-string v1, "AvastComms"

    iget-object v2, p0, Lcom/avast/android/generic/f/a/b;->f:Lcom/avast/android/generic/service/AvastService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SMS sender added SMS ID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v0, Lcom/avast/android/generic/f/a/e;->b:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " to queue: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p1, Lcom/avast/android/generic/util/bc;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    .line 384
    invoke-direct {p0}, Lcom/avast/android/generic/f/a/b;->g()V

    .line 386
    iget-boolean v0, p0, Lcom/avast/android/generic/f/a/b;->m:Z

    if-nez v0, :cond_3

    .line 388
    invoke-virtual {p0}, Lcom/avast/android/generic/f/a/b;->d()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 390
    if-eqz p2, :cond_0

    .line 394
    const/4 v0, 0x4

    :try_start_5
    invoke-interface {p2, v0}, Lcom/avast/android/generic/f/a/a;->a(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    .line 395
    :catch_1
    move-exception v0

    goto/16 :goto_0

    .line 401
    :cond_3
    :try_start_6
    invoke-direct {p0}, Lcom/avast/android/generic/f/a/b;->f()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .line 343
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 352
    :catch_2
    move-exception v0

    goto/16 :goto_0
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/util/List;Lcom/avast/android/generic/f/a/a;Z)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 275
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/avast/android/generic/f/a/b;->f:Lcom/avast/android/generic/service/AvastService;

    invoke-static {v0}, Lcom/avast/android/generic/service/AvastService;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 277
    const-string v0, "AvastComms"

    iget-object v1, p0, Lcom/avast/android/generic/f/a/b;->f:Lcom/avast/android/generic/service/AvastService;

    const-string v2, "SMS permission is not available, junking SMS"

    invoke-static {v0, v1, v2}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 279
    if-eqz p3, :cond_0

    .line 283
    const/4 v0, 0x1

    :try_start_1
    invoke-interface {p3, v0}, Lcom/avast/android/generic/f/a/a;->a(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 339
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 292
    :cond_1
    if-nez p1, :cond_2

    .line 294
    :try_start_2
    const-string v0, "AvastComms"

    iget-object v1, p0, Lcom/avast/android/generic/f/a/b;->f:Lcom/avast/android/generic/service/AvastService;

    const-string v2, "SMS sender no target number given for SMS"

    invoke-static {v0, v1, v2}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 296
    if-eqz p3, :cond_0

    .line 300
    const/4 v0, 0x1

    :try_start_3
    invoke-interface {p3, v0}, Lcom/avast/android/generic/f/a/a;->a(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 301
    :catch_0
    move-exception v0

    goto :goto_0

    .line 307
    :cond_2
    :try_start_4
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/util/bc;

    .line 309
    iput-object p1, v0, Lcom/avast/android/generic/util/bc;->e:Ljava/lang/String;

    .line 310
    new-instance v2, Lcom/avast/android/generic/f/a/e;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/avast/android/generic/f/a/e;-><init>(Lcom/avast/android/generic/f/a/b;Lcom/avast/android/generic/f/a/c;)V

    .line 311
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/avast/android/generic/f/a/b;->c:Ljava/util/Random;

    const v5, 0x186a0

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 312
    iput-object v3, v2, Lcom/avast/android/generic/f/a/e;->b:Ljava/lang/String;

    .line 313
    iput-object v0, v2, Lcom/avast/android/generic/f/a/e;->a:Lcom/avast/android/generic/util/bc;

    .line 314
    iput-object p3, v2, Lcom/avast/android/generic/f/a/e;->c:Lcom/avast/android/generic/f/a/a;

    .line 315
    iput-boolean p4, v2, Lcom/avast/android/generic/f/a/e;->d:Z

    .line 316
    invoke-direct {p0, v2}, Lcom/avast/android/generic/f/a/b;->b(Lcom/avast/android/generic/f/a/e;)V

    .line 317
    const-string v3, "AvastComms"

    iget-object v4, p0, Lcom/avast/android/generic/f/a/b;->f:Lcom/avast/android/generic/service/AvastService;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SMS sender added SMS ID "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v2, v2, Lcom/avast/android/generic/f/a/e;->b:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " to queue: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Lcom/avast/android/generic/util/bc;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v4, v0}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 275
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 320
    :cond_3
    :try_start_5
    invoke-direct {p0}, Lcom/avast/android/generic/f/a/b;->g()V

    .line 322
    iget-boolean v0, p0, Lcom/avast/android/generic/f/a/b;->m:Z

    if-nez v0, :cond_4

    .line 324
    invoke-virtual {p0}, Lcom/avast/android/generic/f/a/b;->d()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 325
    if-eqz p3, :cond_0

    .line 329
    const/4 v0, 0x4

    :try_start_6
    invoke-interface {p3, v0}, Lcom/avast/android/generic/f/a/a;->a(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_0

    .line 330
    :catch_1
    move-exception v0

    goto/16 :goto_0

    .line 336
    :cond_4
    :try_start_7
    invoke-direct {p0}, Lcom/avast/android/generic/f/a/b;->f()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    .line 284
    :catch_2
    move-exception v0

    goto/16 :goto_0
.end method

.method public declared-synchronized a()Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 201
    monitor-enter p0

    :try_start_0
    const-string v2, "AvastComms"

    iget-object v3, p0, Lcom/avast/android/generic/f/a/b;->f:Lcom/avast/android/generic/service/AvastService;

    const-string v4, "Checking SMS sender sending state..."

    invoke-static {v2, v3, v4}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    .line 206
    iget-object v2, p0, Lcom/avast/android/generic/f/a/b;->e:Ljava/util/LinkedList;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 208
    :try_start_1
    const-string v3, "AvastComms"

    iget-object v4, p0, Lcom/avast/android/generic/f/a/b;->f:Lcom/avast/android/generic/service/AvastService;

    const-string v5, "Got inProgress lock"

    invoke-static {v3, v4, v5}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    .line 209
    iget-object v5, p0, Lcom/avast/android/generic/f/a/b;->d:Ljava/util/LinkedList;

    monitor-enter v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 211
    :try_start_2
    const-string v3, "AvastComms"

    iget-object v4, p0, Lcom/avast/android/generic/f/a/b;->f:Lcom/avast/android/generic/service/AvastService;

    const-string v6, "Got queue lock"

    invoke-static {v3, v4, v6}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    .line 212
    iget-object v3, p0, Lcom/avast/android/generic/f/a/b;->e:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-lez v3, :cond_3

    move v4, v1

    .line 213
    :goto_0
    iget-object v3, p0, Lcom/avast/android/generic/f/a/b;->d:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-lez v3, :cond_4

    move v3, v1

    .line 214
    :goto_1
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 215
    :try_start_3
    const-string v5, "AvastComms"

    iget-object v6, p0, Lcom/avast/android/generic/f/a/b;->f:Lcom/avast/android/generic/service/AvastService;

    const-string v7, "Released queue lock"

    invoke-static {v5, v6, v7}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    .line 216
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 217
    :try_start_4
    const-string v2, "AvastComms"

    iget-object v5, p0, Lcom/avast/android/generic/f/a/b;->f:Lcom/avast/android/generic/service/AvastService;

    const-string v6, "Released inProgress lock"

    invoke-static {v2, v5, v6}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    .line 219
    const-string v5, "AvastComms"

    iget-object v6, p0, Lcom/avast/android/generic/f/a/b;->f:Lcom/avast/android/generic/service/AvastService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Checked SMS sender sending state ("

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-nez v4, :cond_0

    if-eqz v3, :cond_5

    :cond_0
    move v2, v1

    :goto_2
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ")"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v6, v2}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 221
    if-nez v4, :cond_1

    if-eqz v3, :cond_2

    :cond_1
    move v0, v1

    :cond_2
    monitor-exit p0

    return v0

    :cond_3
    move v4, v0

    .line 212
    goto :goto_0

    :cond_4
    move v3, v0

    .line 213
    goto :goto_1

    .line 214
    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0

    .line 216
    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 201
    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_5
    move v2, v0

    .line 219
    goto :goto_2
.end method

.method public b()V
    .locals 3

    .prologue
    .line 261
    const-string v0, "AvastComms"

    iget-object v1, p0, Lcom/avast/android/generic/f/a/b;->f:Lcom/avast/android/generic/service/AvastService;

    const-string v2, "SMS sender went online"

    invoke-static {v0, v1, v2}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    .line 262
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/avast/android/generic/f/a/b;->m:Z

    .line 263
    invoke-direct {p0}, Lcom/avast/android/generic/f/a/b;->f()V

    .line 264
    return-void
.end method

.method public c()V
    .locals 3

    .prologue
    .line 268
    const-string v0, "AvastComms"

    iget-object v1, p0, Lcom/avast/android/generic/f/a/b;->f:Lcom/avast/android/generic/service/AvastService;

    const-string v2, "SMS sender went offline"

    invoke-static {v0, v1, v2}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    .line 269
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/avast/android/generic/f/a/b;->m:Z

    .line 270
    invoke-virtual {p0}, Lcom/avast/android/generic/f/a/b;->d()V

    .line 271
    return-void
.end method

.method public d()V
    .locals 4

    .prologue
    .line 514
    .line 515
    iget-object v1, p0, Lcom/avast/android/generic/f/a/b;->d:Ljava/util/LinkedList;

    monitor-enter v1

    .line 517
    :try_start_0
    iget-object v0, p0, Lcom/avast/android/generic/f/a/b;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    .line 518
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 520
    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/avast/android/generic/f/a/b;->m:Z

    if-nez v0, :cond_3

    .line 522
    :cond_0
    iget-object v1, p0, Lcom/avast/android/generic/f/a/b;->k:Ljava/lang/Object;

    monitor-enter v1

    .line 524
    :try_start_1
    iget-object v0, p0, Lcom/avast/android/generic/f/a/b;->i:Ljava/lang/Thread;

    if-eqz v0, :cond_2

    .line 526
    const-string v0, "AvastComms"

    iget-object v2, p0, Lcom/avast/android/generic/f/a/b;->f:Lcom/avast/android/generic/service/AvastService;

    const-string v3, "Stopping SMS sender thread..."

    invoke-static {v0, v2, v3}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    .line 528
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/avast/android/generic/f/a/b;->j:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 531
    :try_start_2
    iget-object v0, p0, Lcom/avast/android/generic/f/a/b;->i:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 533
    iget-object v0, p0, Lcom/avast/android/generic/f/a/b;->i:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 534
    iget-object v0, p0, Lcom/avast/android/generic/f/a/b;->i:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 539
    :cond_1
    :goto_0
    const/4 v0, 0x0

    :try_start_3
    iput-boolean v0, p0, Lcom/avast/android/generic/f/a/b;->j:Z

    .line 540
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/avast/android/generic/f/a/b;->i:Ljava/lang/Thread;

    .line 542
    const-string v0, "AvastComms"

    iget-object v2, p0, Lcom/avast/android/generic/f/a/b;->f:Lcom/avast/android/generic/service/AvastService;

    const-string v3, "Stopped SMS sender thread"

    invoke-static {v0, v2, v3}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    .line 545
    :cond_2
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 548
    :cond_3
    return-void

    .line 518
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 546
    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    .line 536
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public e()V
    .locals 3

    .prologue
    .line 552
    iget-object v1, p0, Lcom/avast/android/generic/f/a/b;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 554
    :try_start_0
    iget-object v0, p0, Lcom/avast/android/generic/f/a/b;->h:Lcom/avast/android/generic/f/a/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 558
    :try_start_1
    iget-object v0, p0, Lcom/avast/android/generic/f/a/b;->f:Lcom/avast/android/generic/service/AvastService;

    iget-object v2, p0, Lcom/avast/android/generic/f/a/b;->h:Lcom/avast/android/generic/f/a/f;

    invoke-virtual {v0, v2}, Lcom/avast/android/generic/service/AvastService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 563
    :goto_0
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/avast/android/generic/f/a/b;->h:Lcom/avast/android/generic/f/a/f;

    .line 565
    :cond_0
    iget-object v0, p0, Lcom/avast/android/generic/f/a/b;->g:Lcom/avast/android/generic/f/a/g;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_1

    .line 569
    :try_start_3
    iget-object v0, p0, Lcom/avast/android/generic/f/a/b;->f:Lcom/avast/android/generic/service/AvastService;

    iget-object v2, p0, Lcom/avast/android/generic/f/a/b;->g:Lcom/avast/android/generic/f/a/g;

    invoke-virtual {v0, v2}, Lcom/avast/android/generic/service/AvastService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 574
    :goto_1
    const/4 v0, 0x0

    :try_start_4
    iput-object v0, p0, Lcom/avast/android/generic/f/a/b;->g:Lcom/avast/android/generic/f/a/g;

    .line 576
    :cond_1
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 577
    iget-object v0, p0, Lcom/avast/android/generic/f/a/b;->l:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_2

    .line 579
    iget-object v0, p0, Lcom/avast/android/generic/f/a/b;->l:Landroid/telephony/TelephonyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 582
    :cond_2
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/avast/android/generic/f/a/d;

    invoke-direct {v1, p0}, Lcom/avast/android/generic/f/a/d;-><init>(Lcom/avast/android/generic/f/a/b;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 601
    return-void

    .line 576
    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0

    .line 570
    :catch_0
    move-exception v0

    goto :goto_1

    .line 559
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 1
    .parameter

    .prologue
    .line 80
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-nez v0, :cond_0

    .line 82
    invoke-virtual {p0}, Lcom/avast/android/generic/f/a/b;->b()V

    .line 87
    :goto_0
    return-void

    .line 85
    :cond_0
    invoke-virtual {p0}, Lcom/avast/android/generic/f/a/b;->c()V

    goto :goto_0
.end method

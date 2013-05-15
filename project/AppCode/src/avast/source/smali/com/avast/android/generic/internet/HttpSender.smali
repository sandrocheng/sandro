.class public Lcom/avast/android/generic/internet/HttpSender;
.super Ljava/lang/Object;
.source "HttpSender.java"


# instance fields
.field private a:Lcom/avast/android/generic/service/AvastService;

.field private b:Lcom/avast/android/generic/ae;

.field private c:Lcom/avast/android/generic/ae;

.field private d:Z

.field private e:Ljava/lang/Thread;

.field private f:Z

.field private g:Lcom/avast/android/generic/internet/b;

.field private h:Ljava/lang/Object;

.field private i:Ljava/lang/Object;

.field private j:Lcom/avast/android/generic/internet/HttpSender$HttpStatusChangedBroadcastReceiver;

.field private k:Landroid/net/ConnectivityManager;

.field private l:Ljava/util/LinkedList;


# direct methods
.method public constructor <init>(Lcom/avast/android/generic/service/AvastService;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object v1, p0, Lcom/avast/android/generic/internet/HttpSender;->a:Lcom/avast/android/generic/service/AvastService;

    .line 47
    iput-object v1, p0, Lcom/avast/android/generic/internet/HttpSender;->b:Lcom/avast/android/generic/ae;

    .line 48
    iput-object v1, p0, Lcom/avast/android/generic/internet/HttpSender;->c:Lcom/avast/android/generic/ae;

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/avast/android/generic/internet/HttpSender;->d:Z

    .line 50
    iput-object v1, p0, Lcom/avast/android/generic/internet/HttpSender;->e:Ljava/lang/Thread;

    .line 51
    iput-boolean v2, p0, Lcom/avast/android/generic/internet/HttpSender;->f:Z

    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/avast/android/generic/internet/HttpSender;->h:Ljava/lang/Object;

    .line 55
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/avast/android/generic/internet/HttpSender;->i:Ljava/lang/Object;

    .line 57
    iput-object v1, p0, Lcom/avast/android/generic/internet/HttpSender;->j:Lcom/avast/android/generic/internet/HttpSender$HttpStatusChangedBroadcastReceiver;

    .line 59
    iput-object v1, p0, Lcom/avast/android/generic/internet/HttpSender;->k:Landroid/net/ConnectivityManager;

    .line 128
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/avast/android/generic/internet/HttpSender;->l:Ljava/util/LinkedList;

    .line 132
    const-string v0, "AvastComms"

    const-string v1, "Initializing HTTP sender..."

    invoke-static {v0, p1, v1}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    .line 134
    iput-object p1, p0, Lcom/avast/android/generic/internet/HttpSender;->a:Lcom/avast/android/generic/service/AvastService;

    .line 136
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Lcom/avast/android/generic/service/AvastService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/avast/android/generic/internet/HttpSender;->k:Landroid/net/ConnectivityManager;

    .line 138
    const-class v0, Lcom/avast/android/generic/internet/b;

    invoke-static {p1, v0}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/internet/b;

    iput-object v0, p0, Lcom/avast/android/generic/internet/HttpSender;->g:Lcom/avast/android/generic/internet/b;

    .line 140
    const-class v0, Lcom/avast/android/generic/ag;

    invoke-static {p1, v0}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/ae;

    iput-object v0, p0, Lcom/avast/android/generic/internet/HttpSender;->b:Lcom/avast/android/generic/ae;

    .line 141
    const-class v0, Lcom/avast/android/generic/ah;

    invoke-static {p1, v0}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/ae;

    iput-object v0, p0, Lcom/avast/android/generic/internet/HttpSender;->c:Lcom/avast/android/generic/ae;

    .line 143
    iget-object v1, p0, Lcom/avast/android/generic/internet/HttpSender;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 145
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/avast/android/generic/internet/HttpSender;->e:Ljava/lang/Thread;

    .line 146
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    iput-boolean v2, p0, Lcom/avast/android/generic/internet/HttpSender;->d:Z

    .line 150
    iget-object v1, p0, Lcom/avast/android/generic/internet/HttpSender;->i:Ljava/lang/Object;

    monitor-enter v1

    .line 152
    :try_start_1
    new-instance v0, Lcom/avast/android/generic/internet/HttpSender$HttpStatusChangedBroadcastReceiver;

    invoke-direct {v0, p0}, Lcom/avast/android/generic/internet/HttpSender$HttpStatusChangedBroadcastReceiver;-><init>(Lcom/avast/android/generic/internet/HttpSender;)V

    iput-object v0, p0, Lcom/avast/android/generic/internet/HttpSender;->j:Lcom/avast/android/generic/internet/HttpSender$HttpStatusChangedBroadcastReceiver;

    .line 154
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 155
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 156
    iget-object v2, p0, Lcom/avast/android/generic/internet/HttpSender;->j:Lcom/avast/android/generic/internet/HttpSender$HttpStatusChangedBroadcastReceiver;

    invoke-virtual {p1, v2, v0}, Lcom/avast/android/generic/service/AvastService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 157
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 159
    const-string v0, "AvastComms"

    const-string v1, "Initialized HTTP sender"

    invoke-static {v0, p1, v1}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    .line 160
    return-void

    .line 146
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 157
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method static synthetic a(Lcom/avast/android/generic/internet/HttpSender;)Landroid/net/ConnectivityManager;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/avast/android/generic/internet/HttpSender;->k:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic a(Lcom/avast/android/generic/internet/HttpSender;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/avast/android/generic/internet/HttpSender;->e:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic a(Lcom/avast/android/generic/internet/HttpSender;Lcom/avast/android/generic/internet/h;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/avast/android/generic/internet/HttpSender;->c(Lcom/avast/android/generic/internet/h;)V

    return-void
.end method

.method private a(Lcom/avast/android/generic/internet/h;)V
    .locals 5
    .parameter

    .prologue
    .line 295
    iget-object v1, p0, Lcom/avast/android/generic/internet/HttpSender;->l:Ljava/util/LinkedList;

    monitor-enter v1

    .line 297
    :try_start_0
    const-string v0, "AvastComms"

    iget-object v2, p0, Lcom/avast/android/generic/internet/HttpSender;->a:Lcom/avast/android/generic/service/AvastService;

    const-string v3, "HTTP sender is queueing HTTP traffic..."

    invoke-static {v0, v2, v3}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    .line 298
    iget-object v0, p0, Lcom/avast/android/generic/internet/HttpSender;->l:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 300
    iget-object v0, p0, Lcom/avast/android/generic/internet/HttpSender;->l:Ljava/util/LinkedList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 302
    const-string v0, "AvastComms"

    iget-object v2, p0, Lcom/avast/android/generic/internet/HttpSender;->a:Lcom/avast/android/generic/service/AvastService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HTTP sender queued HTTP traffic (length "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/avast/android/generic/internet/HttpSender;->l:Ljava/util/LinkedList;

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

    .line 303
    monitor-exit v1

    .line 304
    return-void

    .line 303
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/avast/android/generic/internet/HttpSender;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/avast/android/generic/internet/HttpSender;->f:Z

    return p1
.end method

.method static synthetic b(Lcom/avast/android/generic/internet/HttpSender;)Z
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/avast/android/generic/internet/HttpSender;->f:Z

    return v0
.end method

.method private b(Lcom/avast/android/generic/internet/h;)Z
    .locals 8
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 614
    iget-object v2, p0, Lcom/avast/android/generic/internet/HttpSender;->l:Ljava/util/LinkedList;

    monitor-enter v2

    .line 616
    :try_start_0
    iget-object v3, p0, Lcom/avast/android/generic/internet/HttpSender;->l:Ljava/util/LinkedList;

    invoke-virtual {v3, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 618
    iget v3, p1, Lcom/avast/android/generic/internet/h;->g:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p1, Lcom/avast/android/generic/internet/h;->g:I

    .line 619
    iget v3, p1, Lcom/avast/android/generic/internet/h;->g:I

    const/4 v4, 0x3

    if-gt v3, v4, :cond_0

    .line 621
    iget v1, p1, Lcom/avast/android/generic/internet/h;->g:I

    iget v3, p1, Lcom/avast/android/generic/internet/h;->g:I

    mul-int/2addr v1, v3

    mul-int/lit16 v1, v1, 0x7d0

    int-to-long v3, v1

    .line 622
    const-string v1, "AvastComms"

    iget-object v5, p0, Lcom/avast/android/generic/internet/HttpSender;->a:Lcom/avast/android/generic/service/AvastService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HTTP sender is requeueing reliable HTTP descriptor (retry count "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Lcom/avast/android/generic/internet/h;->g:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", timeout "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ms)..."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v5, v6}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    .line 624
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    add-long/2addr v3, v5

    iput-wide v3, p1, Lcom/avast/android/generic/internet/h;->h:J

    .line 626
    invoke-direct {p0, p1}, Lcom/avast/android/generic/internet/HttpSender;->a(Lcom/avast/android/generic/internet/h;)V

    .line 628
    monitor-exit v2

    .line 653
    :goto_0
    return v0

    .line 631
    :cond_0
    iget-object v0, p0, Lcom/avast/android/generic/internet/HttpSender;->a:Lcom/avast/android/generic/service/AvastService;

    invoke-static {v0}, Lcom/avast/android/generic/service/AvastService;->b(Landroid/content/Context;)Z

    move-result v0

    .line 632
    if-nez v0, :cond_2

    .line 634
    const-string v0, "AvastComms"

    iget-object v3, p0, Lcom/avast/android/generic/internet/HttpSender;->a:Lcom/avast/android/generic/service/AvastService;

    const-string v4, "HTTP sender is not able to forward reliable HTTP descriptor because SMS permission is missing"

    invoke-static {v0, v3, v4}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    .line 636
    iget-object v0, p1, Lcom/avast/android/generic/internet/h;->c:Lcom/avast/android/generic/internet/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 639
    :try_start_1
    iget-object v0, p1, Lcom/avast/android/generic/internet/h;->c:Lcom/avast/android/generic/internet/d;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Lcom/avast/android/generic/internet/d;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 645
    :cond_1
    :goto_1
    :try_start_2
    monitor-exit v2

    move v0, v1

    goto :goto_0

    .line 640
    :catch_0
    move-exception v0

    .line 641
    const-string v3, "AvastComms"

    iget-object v4, p0, Lcom/avast/android/generic/internet/HttpSender;->a:Lcom/avast/android/generic/service/AvastService;

    const-string v5, "HTTP sender error callback error"

    invoke-static {v3, v4, v5, v0}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 655
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 648
    :cond_2
    :try_start_3
    const-string v0, "AvastComms"

    iget-object v3, p0, Lcom/avast/android/generic/internet/HttpSender;->a:Lcom/avast/android/generic/service/AvastService;

    const-string v4, "HTTP sender is SMSing reliable HTTP descriptor because of too much failures"

    invoke-static {v0, v3, v4}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    .line 649
    const/4 v0, 0x0

    iput v0, p1, Lcom/avast/android/generic/internet/h;->g:I

    .line 651
    invoke-direct {p0, p1}, Lcom/avast/android/generic/internet/HttpSender;->c(Lcom/avast/android/generic/internet/h;)V

    .line 653
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v0, v1

    goto :goto_0
.end method

.method static synthetic c(Lcom/avast/android/generic/internet/HttpSender;)Lcom/avast/android/generic/service/AvastService;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/avast/android/generic/internet/HttpSender;->a:Lcom/avast/android/generic/service/AvastService;

    return-object v0
.end method

.method private c(Lcom/avast/android/generic/internet/h;)V
    .locals 4
    .parameter

    .prologue
    .line 660
    iget-object v0, p1, Lcom/avast/android/generic/internet/h;->d:Lcom/avast/android/generic/b/a;

    .line 661
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/avast/android/generic/b/a;->b()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p1, Lcom/avast/android/generic/internet/h;->d:Lcom/avast/android/generic/b/a;

    invoke-virtual {v1}, Lcom/avast/android/generic/b/a;->e()Lcom/avast/android/generic/b/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avast/android/generic/b/d;->A()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 663
    invoke-virtual {v0}, Lcom/avast/android/generic/b/a;->f()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 706
    :cond_0
    :goto_0
    return-void

    .line 666
    :cond_1
    invoke-virtual {v0}, Lcom/avast/android/generic/b/a;->e()Lcom/avast/android/generic/b/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avast/android/generic/b/d;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/avast/android/generic/b/a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 670
    :cond_2
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/b/a;->b(Z)V

    .line 673
    :try_start_0
    invoke-virtual {v0}, Lcom/avast/android/generic/b/a;->j()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 675
    iget-boolean v1, p1, Lcom/avast/android/generic/internet/h;->e:Z

    if-eqz v1, :cond_3

    .line 677
    invoke-virtual {v0}, Lcom/avast/android/generic/b/a;->m()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 691
    :goto_1
    const-string v0, "AvastComms"

    iget-object v1, p0, Lcom/avast/android/generic/internet/HttpSender;->a:Lcom/avast/android/generic/service/AvastService;

    const-string v2, "HTTP sender finished SMS forwarding"

    invoke-static {v0, v1, v2}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 680
    :cond_3
    :try_start_1
    invoke-virtual {v0}, Lcom/avast/android/generic/b/a;->k()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 686
    :catch_0
    move-exception v0

    .line 688
    const-string v1, "AvastComms"

    iget-object v2, p0, Lcom/avast/android/generic/internet/HttpSender;->a:Lcom/avast/android/generic/service/AvastService;

    const-string v3, "HTTP sender error in handler handling"

    invoke-static {v1, v2, v3, v0}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 684
    :cond_4
    :try_start_2
    invoke-virtual {v0}, Lcom/avast/android/generic/b/a;->l()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 694
    :cond_5
    const-string v0, "AvastComms"

    iget-object v1, p0, Lcom/avast/android/generic/internet/HttpSender;->a:Lcom/avast/android/generic/service/AvastService;

    const-string v2, "HTTP sender, SMSing is disabled"

    invoke-static {v0, v1, v2}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    .line 696
    iget-object v0, p1, Lcom/avast/android/generic/internet/h;->c:Lcom/avast/android/generic/internet/d;

    if-eqz v0, :cond_0

    .line 699
    :try_start_3
    iget-object v0, p1, Lcom/avast/android/generic/internet/h;->c:Lcom/avast/android/generic/internet/d;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/avast/android/generic/internet/d;->a(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 700
    :catch_1
    move-exception v0

    .line 701
    const-string v1, "AvastComms"

    iget-object v2, p0, Lcom/avast/android/generic/internet/HttpSender;->a:Lcom/avast/android/generic/service/AvastService;

    const-string v3, "HTTP sender error callback error"

    invoke-static {v1, v2, v3, v0}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/avast/android/generic/internet/HttpSender;)Ljava/util/LinkedList;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/avast/android/generic/internet/HttpSender;->l:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic e(Lcom/avast/android/generic/internet/HttpSender;)V
    .locals 0
    .parameter

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/avast/android/generic/internet/HttpSender;->g()V

    return-void
.end method

.method static synthetic f(Lcom/avast/android/generic/internet/HttpSender;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/avast/android/generic/internet/HttpSender;->h:Ljava/lang/Object;

    return-object v0
.end method

.method private f()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 308
    .line 309
    iget-object v1, p0, Lcom/avast/android/generic/internet/HttpSender;->l:Ljava/util/LinkedList;

    monitor-enter v1

    .line 311
    :try_start_0
    iget-object v2, p0, Lcom/avast/android/generic/internet/HttpSender;->l:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-lez v2, :cond_0

    iget-boolean v2, p0, Lcom/avast/android/generic/internet/HttpSender;->d:Z

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 312
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 314
    if-eqz v0, :cond_1

    .line 316
    iget-object v1, p0, Lcom/avast/android/generic/internet/HttpSender;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 318
    :try_start_1
    iget-object v0, p0, Lcom/avast/android/generic/internet/HttpSender;->e:Ljava/lang/Thread;

    if-eqz v0, :cond_3

    .line 320
    iget-object v0, p0, Lcom/avast/android/generic/internet/HttpSender;->e:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 322
    iget-object v0, p0, Lcom/avast/android/generic/internet/HttpSender;->e:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 323
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 437
    :cond_1
    :goto_0
    return-void

    .line 312
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 326
    :cond_2
    const/4 v0, 0x0

    :try_start_3
    iput-object v0, p0, Lcom/avast/android/generic/internet/HttpSender;->e:Ljava/lang/Thread;

    .line 329
    :cond_3
    const-string v0, "AvastComms"

    iget-object v2, p0, Lcom/avast/android/generic/internet/HttpSender;->a:Lcom/avast/android/generic/service/AvastService;

    const-string v3, "Starting HTTP sender thread..."

    invoke-static {v0, v2, v3}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    .line 331
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/avast/android/generic/internet/HttpSender;->f:Z

    .line 333
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/avast/android/generic/internet/f;

    invoke-direct {v2, p0}, Lcom/avast/android/generic/internet/f;-><init>(Lcom/avast/android/generic/internet/HttpSender;)V

    const-string v3, "httpSender"

    invoke-direct {v0, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/avast/android/generic/internet/HttpSender;->e:Ljava/lang/Thread;

    .line 432
    iget-object v0, p0, Lcom/avast/android/generic/internet/HttpSender;->e:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 434
    const-string v0, "AvastComms"

    iget-object v2, p0, Lcom/avast/android/generic/internet/HttpSender;->a:Lcom/avast/android/generic/service/AvastService;

    const-string v3, "Started HTTP sender thread"

    invoke-static {v0, v2, v3}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    .line 435
    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method static synthetic g(Lcom/avast/android/generic/internet/HttpSender;)Ljava/lang/Thread;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/avast/android/generic/internet/HttpSender;->e:Ljava/lang/Thread;

    return-object v0
.end method

.method private g()V
    .locals 14

    .prologue
    .line 480
    .line 482
    iget-object v2, p0, Lcom/avast/android/generic/internet/HttpSender;->l:Ljava/util/LinkedList;

    monitor-enter v2

    .line 484
    :try_start_0
    iget-object v1, p0, Lcom/avast/android/generic/internet/HttpSender;->l:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/avast/android/generic/internet/h;

    move-object v9, v0

    .line 485
    if-nez v9, :cond_1

    .line 486
    monitor-exit v2

    .line 611
    :cond_0
    :goto_0
    return-void

    .line 487
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 489
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    .line 491
    iget-wide v3, v9, Lcom/avast/android/generic/internet/h;->h:J

    cmp-long v1, v3, v1

    if-gtz v1, :cond_0

    .line 494
    const-string v1, "AvastComms"

    iget-object v2, p0, Lcom/avast/android/generic/internet/HttpSender;->a:Lcom/avast/android/generic/service/AvastService;

    const-string v3, "HTTP sender thread begins sending"

    invoke-static {v1, v2, v3}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    .line 496
    iget-object v1, v9, Lcom/avast/android/generic/internet/h;->c:Lcom/avast/android/generic/internet/d;

    if-eqz v1, :cond_2

    .line 499
    :try_start_1
    iget-object v1, v9, Lcom/avast/android/generic/internet/h;->c:Lcom/avast/android/generic/internet/d;

    invoke-interface {v1}, Lcom/avast/android/generic/internet/d;->a()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 507
    :cond_2
    :goto_1
    :try_start_2
    const-string v1, "com.avast.android.backup"

    iget-object v2, p0, Lcom/avast/android/generic/internet/HttpSender;->a:Lcom/avast/android/generic/service/AvastService;

    invoke-virtual {v2}, Lcom/avast/android/generic/service/AvastService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 509
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v1, :cond_5

    const-string v1, "https://ff-backup.avast.com"

    :goto_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 513
    iget-object v1, p0, Lcom/avast/android/generic/internet/HttpSender;->b:Lcom/avast/android/generic/ae;

    invoke-virtual {v1}, Lcom/avast/android/generic/ae;->u()Z

    move-result v13

    .line 514
    const-wide/16 v7, 0x0

    .line 516
    iget-object v1, v9, Lcom/avast/android/generic/internet/h;->a:Lcom/avast/a/a/a/ak;

    if-eqz v1, :cond_6

    iget-object v1, v9, Lcom/avast/android/generic/internet/h;->a:Lcom/avast/a/a/a/ak;

    invoke-virtual {v1}, Lcom/avast/a/a/a/ak;->a()Lcom/avast/a/a/a/ak;

    move-result-object v5

    .line 518
    :goto_3
    if-eqz v13, :cond_7

    .line 520
    const-string v1, "AvastGenericSync"

    const-string v2, "Getting sync data for internet communications"

    invoke-static {v1, v2}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    iget-object v1, p0, Lcom/avast/android/generic/internet/HttpSender;->a:Lcom/avast/android/generic/service/AvastService;

    invoke-virtual {v1}, Lcom/avast/android/generic/service/AvastService;->n()V

    .line 523
    iget-object v1, p0, Lcom/avast/android/generic/internet/HttpSender;->a:Lcom/avast/android/generic/service/AvastService;

    invoke-virtual {v1}, Lcom/avast/android/generic/service/AvastService;->m()V

    .line 525
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 527
    iget-object v1, p0, Lcom/avast/android/generic/internet/HttpSender;->g:Lcom/avast/android/generic/internet/b;

    iget-object v2, p0, Lcom/avast/android/generic/internet/HttpSender;->a:Lcom/avast/android/generic/service/AvastService;

    iget-object v3, p0, Lcom/avast/android/generic/internet/HttpSender;->b:Lcom/avast/android/generic/ae;

    iget-object v4, p0, Lcom/avast/android/generic/internet/HttpSender;->c:Lcom/avast/android/generic/ae;

    iget v6, v9, Lcom/avast/android/generic/internet/h;->i:I

    invoke-virtual/range {v1 .. v8}, Lcom/avast/android/generic/internet/b;->a(Lcom/avast/android/generic/service/AvastService;Lcom/avast/android/generic/ae;Lcom/avast/android/generic/ae;Lcom/avast/a/a/a/ak;IJ)Z

    .line 529
    iget-object v1, p0, Lcom/avast/android/generic/internet/HttpSender;->a:Lcom/avast/android/generic/service/AvastService;

    invoke-static {v1, v5, v7, v8}, Lcom/avast/android/generic/internet/b;->a(Landroid/content/Context;Lcom/avast/a/a/a/ak;J)Z

    .line 531
    const-string v1, "AvastGenericSync"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got sync data for internet communications (took "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v7

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v10, v7

    .line 543
    :goto_4
    iget v1, v9, Lcom/avast/android/generic/internet/h;->g:I

    rsub-int/lit8 v1, v1, 0x3

    if-lez v1, :cond_8

    const/4 v7, 0x1

    .line 545
    :goto_5
    iget-object v1, v9, Lcom/avast/android/generic/internet/h;->b:Lcom/avast/android/generic/internet/k;

    if-nez v1, :cond_9

    .line 547
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "rest/upload?v=1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 548
    const-string v2, "AvastComms"

    iget-object v3, p0, Lcom/avast/android/generic/internet/HttpSender;->a:Lcom/avast/android/generic/service/AvastService;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HTTP sender internet text send to "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ": "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v9}, Lcom/avast/android/generic/internet/h;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    .line 550
    iget-object v2, p0, Lcom/avast/android/generic/internet/HttpSender;->g:Lcom/avast/android/generic/internet/b;

    iget-object v3, p0, Lcom/avast/android/generic/internet/HttpSender;->a:Lcom/avast/android/generic/service/AvastService;

    invoke-virtual {v2, v3, v1, v5, v7}, Lcom/avast/android/generic/internet/b;->a(Landroid/content/Context;Ljava/lang/String;Lcom/avast/a/a/a/ak;Z)Lcom/avast/a/a/a/h;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/avast/android/generic/internet/HttpSender;->a(Lcom/avast/a/a/a/h;)Z

    move-result v1

    .line 562
    :goto_6
    if-eqz v13, :cond_3

    if-nez v1, :cond_3

    .line 566
    const-string v1, "AvastGenericSync"

    const-string v2, "Committing sync"

    invoke-static {v1, v2}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    invoke-static {}, Lcom/avast/android/generic/internet/b;->a()V

    .line 570
    iget-object v1, p0, Lcom/avast/android/generic/internet/HttpSender;->b:Lcom/avast/android/generic/ae;

    invoke-virtual {v1, v10, v11}, Lcom/avast/android/generic/ae;->f(J)V

    .line 571
    iget-object v1, p0, Lcom/avast/android/generic/internet/HttpSender;->c:Lcom/avast/android/generic/ae;

    invoke-virtual {v1, v10, v11}, Lcom/avast/android/generic/ae;->f(J)V

    .line 573
    const-string v1, "AvastGenericSync"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Committed sync (took "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v10

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    :cond_3
    iget-object v1, v9, Lcom/avast/android/generic/internet/h;->c:Lcom/avast/android/generic/internet/d;

    if-eqz v1, :cond_4

    .line 580
    iget-object v1, v9, Lcom/avast/android/generic/internet/h;->c:Lcom/avast/android/generic/internet/d;

    invoke-interface {v1}, Lcom/avast/android/generic/internet/d;->b()V

    .line 583
    :cond_4
    iget-object v2, p0, Lcom/avast/android/generic/internet/HttpSender;->l:Ljava/util/LinkedList;

    monitor-enter v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 585
    :try_start_3
    iget-object v1, p0, Lcom/avast/android/generic/internet/HttpSender;->l:Ljava/util/LinkedList;

    invoke-virtual {v1, v9}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 586
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 588
    :try_start_4
    const-string v1, "AvastComms"

    iget-object v2, p0, Lcom/avast/android/generic/internet/HttpSender;->a:Lcom/avast/android/generic/service/AvastService;

    const-string v3, "HTTP sender send succeeded"

    invoke-static {v1, v2, v3}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    .line 589
    invoke-virtual {p0}, Lcom/avast/android/generic/internet/HttpSender;->c()Z

    move-result v1

    if-nez v1, :cond_0

    .line 590
    iget-object v1, p0, Lcom/avast/android/generic/internet/HttpSender;->a:Lcom/avast/android/generic/service/AvastService;

    invoke-virtual {v1}, Lcom/avast/android/generic/service/AvastService;->b()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 592
    :catch_0
    move-exception v1

    .line 594
    const-string v2, "AvastComms"

    iget-object v3, p0, Lcom/avast/android/generic/internet/HttpSender;->a:Lcom/avast/android/generic/service/AvastService;

    const-string v4, "HTTP sender IO Exception"

    invoke-static {v2, v3, v4, v1}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 596
    invoke-direct {p0, v9}, Lcom/avast/android/generic/internet/HttpSender;->b(Lcom/avast/android/generic/internet/h;)Z

    .line 598
    invoke-virtual {p0}, Lcom/avast/android/generic/internet/HttpSender;->c()Z

    move-result v1

    if-nez v1, :cond_0

    .line 599
    iget-object v1, p0, Lcom/avast/android/generic/internet/HttpSender;->a:Lcom/avast/android/generic/service/AvastService;

    invoke-virtual {v1}, Lcom/avast/android/generic/service/AvastService;->b()V

    goto/16 :goto_0

    .line 487
    :catchall_0
    move-exception v1

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v1

    .line 500
    :catch_1
    move-exception v1

    .line 501
    const-string v2, "AvastComms"

    iget-object v3, p0, Lcom/avast/android/generic/internet/HttpSender;->a:Lcom/avast/android/generic/service/AvastService;

    const-string v4, "HTTP sender callback error"

    invoke-static {v2, v3, v4, v1}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 509
    :cond_5
    :try_start_6
    const-string v1, "https://ff-at.avast.com"

    goto/16 :goto_2

    .line 516
    :cond_6
    const/4 v5, 0x0

    goto/16 :goto_3

    .line 534
    :cond_7
    const-string v1, "AvastGenericSync"

    const-string v2, "Internet NOT enabled, getting basic data structure"

    invoke-static {v1, v2}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    iget-object v1, p0, Lcom/avast/android/generic/internet/HttpSender;->g:Lcom/avast/android/generic/internet/b;

    iget-object v2, p0, Lcom/avast/android/generic/internet/HttpSender;->a:Lcom/avast/android/generic/service/AvastService;

    iget-object v3, p0, Lcom/avast/android/generic/internet/HttpSender;->b:Lcom/avast/android/generic/ae;

    iget-object v4, p0, Lcom/avast/android/generic/internet/HttpSender;->c:Lcom/avast/android/generic/ae;

    iget v6, v9, Lcom/avast/android/generic/internet/h;->i:I

    invoke-virtual/range {v1 .. v6}, Lcom/avast/android/generic/internet/b;->a(Lcom/avast/android/generic/service/AvastService;Lcom/avast/android/generic/ae;Lcom/avast/android/generic/ae;Lcom/avast/a/a/a/ak;I)Z

    .line 537
    iget-object v1, p0, Lcom/avast/android/generic/internet/HttpSender;->a:Lcom/avast/android/generic/service/AvastService;

    invoke-static {v1, v5, v7, v8}, Lcom/avast/android/generic/internet/b;->a(Landroid/content/Context;Lcom/avast/a/a/a/ak;J)Z

    move-wide v10, v7

    goto/16 :goto_4

    .line 543
    :cond_8
    const/4 v7, 0x0

    goto/16 :goto_5

    .line 554
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "rest/mime?v=1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 555
    const-string v1, "AvastComms"

    iget-object v2, p0, Lcom/avast/android/generic/internet/HttpSender;->a:Lcom/avast/android/generic/service/AvastService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HTTP sender internet file send to "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ": "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v9}, Lcom/avast/android/generic/internet/h;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " bytes"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    .line 558
    iget-object v2, p0, Lcom/avast/android/generic/internet/HttpSender;->g:Lcom/avast/android/generic/internet/b;

    iget-object v3, p0, Lcom/avast/android/generic/internet/HttpSender;->a:Lcom/avast/android/generic/service/AvastService;

    iget-object v6, v9, Lcom/avast/android/generic/internet/h;->b:Lcom/avast/android/generic/internet/k;

    invoke-virtual/range {v2 .. v7}, Lcom/avast/android/generic/internet/b;->a(Landroid/content/Context;Ljava/lang/String;Lcom/avast/a/a/a/ak;Lcom/avast/android/generic/internet/k;Z)Lcom/avast/a/a/a/h;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/avast/android/generic/internet/HttpSender;->a(Lcom/avast/a/a/a/h;)Z
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    move-result v1

    goto/16 :goto_6

    .line 586
    :catchall_1
    move-exception v1

    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v1
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    .line 602
    :catch_2
    move-exception v1

    .line 604
    const-string v2, "AvastComms"

    iget-object v3, p0, Lcom/avast/android/generic/internet/HttpSender;->a:Lcom/avast/android/generic/service/AvastService;

    const-string v4, "HTTP sender general exception"

    invoke-static {v2, v3, v4, v1}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 606
    invoke-direct {p0, v9}, Lcom/avast/android/generic/internet/HttpSender;->b(Lcom/avast/android/generic/internet/h;)Z

    .line 608
    invoke-virtual {p0}, Lcom/avast/android/generic/internet/HttpSender;->c()Z

    move-result v1

    if-nez v1, :cond_0

    .line 609
    iget-object v1, p0, Lcom/avast/android/generic/internet/HttpSender;->a:Lcom/avast/android/generic/service/AvastService;

    invoke-virtual {v1}, Lcom/avast/android/generic/service/AvastService;->b()V

    goto/16 :goto_0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 164
    const-string v0, "AvastComms"

    iget-object v1, p0, Lcom/avast/android/generic/internet/HttpSender;->a:Lcom/avast/android/generic/service/AvastService;

    const-string v2, "HTTP sender went online"

    invoke-static {v0, v1, v2}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lcom/avast/android/generic/internet/HttpSender;->k:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 166
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/avast/android/generic/internet/HttpSender;->d:Z

    .line 169
    invoke-direct {p0}, Lcom/avast/android/generic/internet/HttpSender;->f()V

    .line 174
    :goto_0
    return-void

    .line 172
    :cond_0
    invoke-virtual {p0}, Lcom/avast/android/generic/internet/HttpSender;->b()V

    goto :goto_0
.end method

.method public a(Lcom/avast/android/generic/internet/e;Lcom/avast/android/generic/b/a;Z)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 205
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/avast/android/generic/internet/e;->c()Lcom/avast/a/a/a/ak;

    move-result-object v0

    if-nez v0, :cond_1

    .line 292
    :cond_0
    :goto_0
    return-void

    .line 208
    :cond_1
    new-instance v3, Lcom/avast/android/generic/internet/h;

    invoke-direct {v3, p0}, Lcom/avast/android/generic/internet/h;-><init>(Lcom/avast/android/generic/internet/HttpSender;)V

    .line 209
    invoke-virtual {p1}, Lcom/avast/android/generic/internet/e;->c()Lcom/avast/a/a/a/ak;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 211
    invoke-virtual {p1}, Lcom/avast/android/generic/internet/e;->c()Lcom/avast/a/a/a/ak;

    move-result-object v0

    iput-object v0, v3, Lcom/avast/android/generic/internet/h;->a:Lcom/avast/a/a/a/ak;

    .line 217
    :goto_1
    if-eqz p2, :cond_2

    .line 218
    invoke-virtual {p2}, Lcom/avast/android/generic/b/a;->q()I

    move-result v0

    iput v0, v3, Lcom/avast/android/generic/internet/h;->i:I

    .line 220
    :cond_2
    iput-object p2, v3, Lcom/avast/android/generic/internet/h;->d:Lcom/avast/android/generic/b/a;

    .line 221
    iput-boolean p3, v3, Lcom/avast/android/generic/internet/h;->e:Z

    .line 222
    invoke-virtual {p1}, Lcom/avast/android/generic/internet/e;->d()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, v3, Lcom/avast/android/generic/internet/h;->j:Landroid/os/Bundle;

    .line 223
    invoke-virtual {p1}, Lcom/avast/android/generic/internet/e;->b()Lcom/avast/android/generic/internet/k;

    move-result-object v0

    iput-object v0, v3, Lcom/avast/android/generic/internet/h;->b:Lcom/avast/android/generic/internet/k;

    .line 224
    if-eqz p2, :cond_a

    invoke-virtual {p2}, Lcom/avast/android/generic/b/a;->e()Lcom/avast/android/generic/b/d;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 225
    new-instance v0, Lcom/avast/android/generic/b/g;

    invoke-virtual {p2}, Lcom/avast/android/generic/b/a;->e()Lcom/avast/android/generic/b/d;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/avast/android/generic/b/g;-><init>(Lcom/avast/android/generic/b/d;)V

    iput-object v0, v3, Lcom/avast/android/generic/internet/h;->c:Lcom/avast/android/generic/internet/d;

    .line 229
    :goto_2
    if-eqz p2, :cond_3

    iget-object v0, v3, Lcom/avast/android/generic/internet/h;->b:Lcom/avast/android/generic/internet/k;

    if-eqz v0, :cond_3

    .line 231
    invoke-virtual {p2, v2}, Lcom/avast/android/generic/b/a;->a(Z)V

    .line 234
    :cond_3
    invoke-virtual {p1}, Lcom/avast/android/generic/internet/e;->a()Z

    move-result v0

    iput-boolean v0, v3, Lcom/avast/android/generic/internet/h;->f:Z

    .line 237
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lcom/avast/android/generic/b/a;->f()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_f

    :cond_4
    move v0, v1

    .line 240
    :goto_3
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Lcom/avast/android/generic/b/a;->e()Lcom/avast/android/generic/b/d;

    move-result-object v4

    invoke-virtual {v4}, Lcom/avast/android/generic/b/d;->c()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {p2}, Lcom/avast/android/generic/b/a;->f()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    move v0, v1

    .line 244
    :cond_5
    iget-object v4, p0, Lcom/avast/android/generic/internet/HttpSender;->a:Lcom/avast/android/generic/service/AvastService;

    invoke-static {v4}, Lcom/avast/android/generic/service/AvastService;->b(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 246
    const-string v0, "AvastComms"

    iget-object v4, p0, Lcom/avast/android/generic/internet/HttpSender;->a:Lcom/avast/android/generic/service/AvastService;

    const-string v5, "SMS permission is not available"

    invoke-static {v0, v4, v5}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    move v0, v1

    .line 250
    :cond_6
    if-nez v0, :cond_7

    .line 252
    const-string v4, "AvastComms"

    iget-object v5, p0, Lcom/avast/android/generic/internet/HttpSender;->a:Lcom/avast/android/generic/service/AvastService;

    const-string v6, "HTTP sender: SMS is not available for command reply"

    invoke-static {v4, v5, v6}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    .line 257
    :cond_7
    iget-boolean v4, p0, Lcom/avast/android/generic/internet/HttpSender;->d:Z

    if-nez v4, :cond_8

    .line 259
    iget-object v4, p0, Lcom/avast/android/generic/internet/HttpSender;->k:Landroid/net/ConnectivityManager;

    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v4

    .line 260
    if-eqz v4, :cond_b

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_b

    move v1, v2

    .line 277
    :cond_8
    :goto_4
    invoke-direct {p0, v3}, Lcom/avast/android/generic/internet/HttpSender;->a(Lcom/avast/android/generic/internet/h;)V

    .line 279
    if-eqz v1, :cond_d

    .line 281
    invoke-virtual {p0}, Lcom/avast/android/generic/internet/HttpSender;->a()V

    goto/16 :goto_0

    .line 214
    :cond_9
    iput-object v4, v3, Lcom/avast/android/generic/internet/h;->a:Lcom/avast/a/a/a/ak;

    goto/16 :goto_1

    .line 227
    :cond_a
    iput-object v4, v3, Lcom/avast/android/generic/internet/h;->c:Lcom/avast/android/generic/internet/d;

    goto :goto_2

    .line 265
    :cond_b
    iget-object v2, v3, Lcom/avast/android/generic/internet/h;->d:Lcom/avast/android/generic/b/a;

    if-eqz v2, :cond_c

    iget-object v2, v3, Lcom/avast/android/generic/internet/h;->d:Lcom/avast/android/generic/b/a;

    invoke-virtual {v2}, Lcom/avast/android/generic/b/a;->b()Z

    move-result v2

    if-nez v2, :cond_c

    if-eqz v0, :cond_c

    iget-object v0, v3, Lcom/avast/android/generic/internet/h;->d:Lcom/avast/android/generic/b/a;

    invoke-virtual {v0}, Lcom/avast/android/generic/b/a;->e()Lcom/avast/android/generic/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avast/android/generic/b/d;->A()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 267
    invoke-direct {p0, v3}, Lcom/avast/android/generic/internet/HttpSender;->c(Lcom/avast/android/generic/internet/h;)V

    goto/16 :goto_0

    .line 271
    :cond_c
    const-string v0, "AvastComms"

    iget-object v2, p0, Lcom/avast/android/generic/internet/HttpSender;->a:Lcom/avast/android/generic/service/AvastService;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HTTP sender has to queue non SMS enabled descriptor "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/avast/android/generic/internet/h;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v2, v4}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_4

    .line 284
    :cond_d
    iget-boolean v0, p0, Lcom/avast/android/generic/internet/HttpSender;->d:Z

    if-nez v0, :cond_e

    .line 286
    invoke-virtual {p0}, Lcom/avast/android/generic/internet/HttpSender;->d()V

    goto/16 :goto_0

    .line 289
    :cond_e
    invoke-direct {p0}, Lcom/avast/android/generic/internet/HttpSender;->f()V

    goto/16 :goto_0

    :cond_f
    move v0, v2

    goto/16 :goto_3
.end method

.method public a(Lcom/avast/a/a/a/h;)Z
    .locals 8
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 749
    .line 751
    if-eqz p1, :cond_5

    .line 753
    iget-object v1, p0, Lcom/avast/android/generic/internet/HttpSender;->a:Lcom/avast/android/generic/service/AvastService;

    invoke-virtual {v1, p1}, Lcom/avast/android/generic/service/AvastService;->a(Lcom/avast/a/a/a/h;)V

    .line 756
    iget-object v1, p0, Lcom/avast/android/generic/internet/HttpSender;->b:Lcom/avast/android/generic/ae;

    const-string v2, "settingsLogicChange2573"

    invoke-virtual {v1, v2, v0}, Lcom/avast/android/generic/ae;->b(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 758
    iget-object v1, p0, Lcom/avast/android/generic/internet/HttpSender;->b:Lcom/avast/android/generic/ae;

    const-string v2, "settingsLogicChange2573"

    invoke-virtual {v1, v2, v3}, Lcom/avast/android/generic/ae;->a(Ljava/lang/String;Z)V

    .line 759
    iget-object v1, p0, Lcom/avast/android/generic/internet/HttpSender;->b:Lcom/avast/android/generic/ae;

    invoke-virtual {v1}, Lcom/avast/android/generic/ae;->b()Z

    .line 761
    :cond_0
    iget-object v1, p0, Lcom/avast/android/generic/internet/HttpSender;->b:Lcom/avast/android/generic/ae;

    const-string v2, "settingsLogicChange2582"

    invoke-virtual {v1, v2, v0}, Lcom/avast/android/generic/ae;->b(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 763
    iget-object v1, p0, Lcom/avast/android/generic/internet/HttpSender;->b:Lcom/avast/android/generic/ae;

    const-string v2, "settingsLogicChange2582"

    invoke-virtual {v1, v2, v3}, Lcom/avast/android/generic/ae;->a(Ljava/lang/String;Z)V

    .line 764
    iget-object v1, p0, Lcom/avast/android/generic/internet/HttpSender;->b:Lcom/avast/android/generic/ae;

    invoke-virtual {v1}, Lcom/avast/android/generic/ae;->b()Z

    .line 766
    :cond_1
    iget-object v1, p0, Lcom/avast/android/generic/internet/HttpSender;->b:Lcom/avast/android/generic/ae;

    const-string v2, "settingsLogicChange3891"

    invoke-virtual {v1, v2, v0}, Lcom/avast/android/generic/ae;->b(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_2

    .line 768
    iget-object v1, p0, Lcom/avast/android/generic/internet/HttpSender;->b:Lcom/avast/android/generic/ae;

    const-string v2, "settingsLogicChange3891"

    invoke-virtual {v1, v2, v3}, Lcom/avast/android/generic/ae;->a(Ljava/lang/String;Z)V

    .line 769
    iget-object v1, p0, Lcom/avast/android/generic/internet/HttpSender;->b:Lcom/avast/android/generic/ae;

    invoke-virtual {v1}, Lcom/avast/android/generic/ae;->b()Z

    .line 772
    :cond_2
    invoke-virtual {p1}, Lcom/avast/a/a/a/h;->t()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 773
    invoke-virtual {p1}, Lcom/avast/a/a/a/h;->u()Z

    move-result v0

    move v6, v0

    .line 775
    :goto_0
    invoke-virtual {p1}, Lcom/avast/a/a/a/h;->e()I

    move-result v0

    if-lez v0, :cond_6

    .line 777
    invoke-virtual {p1}, Lcom/avast/a/a/a/h;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 779
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 780
    const-string v0, ""

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 783
    iget-object v0, p0, Lcom/avast/android/generic/internet/HttpSender;->a:Lcom/avast/android/generic/service/AvastService;

    const-string v1, "INTERNET"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HTTP component received internet command "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/avast/android/generic/util/t;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    iget-object v0, p0, Lcom/avast/android/generic/internet/HttpSender;->a:Lcom/avast/android/generic/service/AvastService;

    invoke-static {v0, v5}, Lcom/avast/android/generic/b/d;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/avast/android/generic/b/k;

    move-result-object v2

    .line 787
    iget-object v0, v2, Lcom/avast/android/generic/b/k;->a:Lcom/avast/android/generic/b/r;

    sget-object v1, Lcom/avast/android/generic/b/r;->d:Lcom/avast/android/generic/b/r;

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/avast/android/generic/internet/HttpSender;->a:Lcom/avast/android/generic/service/AvastService;

    invoke-virtual {v0}, Lcom/avast/android/generic/service/AvastService;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v2, Lcom/avast/android/generic/b/k;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 791
    iget-object v0, p0, Lcom/avast/android/generic/internet/HttpSender;->a:Lcom/avast/android/generic/service/AvastService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HTTP component dispatches "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " to own process"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avast/android/generic/util/t;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 793
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 794
    const-string v1, "message"

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 795
    const-string v1, "uid"

    iget-object v2, v2, Lcom/avast/android/generic/b/k;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 797
    iget-object v1, p0, Lcom/avast/android/generic/internet/HttpSender;->a:Lcom/avast/android/generic/service/AvastService;

    const-string v2, "com.avast.android.generic.action.ACTION_C2DM_MESSAGE"

    invoke-virtual {v1, v2, v0}, Lcom/avast/android/generic/service/AvastService;->b(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 808
    :goto_2
    iget-object v0, p0, Lcom/avast/android/generic/internet/HttpSender;->a:Lcom/avast/android/generic/service/AvastService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HTTP component handled internet command "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avast/android/generic/util/t;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 800
    :cond_4
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 801
    const-string v0, "com.avast.android.generic.action.ACTION_C2DM_MESSAGE"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 802
    const-string v0, "message"

    invoke-virtual {v1, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 803
    const-string v0, "uid"

    iget-object v3, v2, Lcom/avast/android/generic/b/k;->b:Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 805
    iget-object v0, p0, Lcom/avast/android/generic/internet/HttpSender;->a:Lcom/avast/android/generic/service/AvastService;

    const/4 v3, 0x0

    iget-object v4, v2, Lcom/avast/android/generic/b/k;->b:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/avast/android/generic/b/d;->a(Landroid/content/Context;Landroid/content/Intent;Lcom/avast/android/generic/b/k;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    move v6, v0

    .line 813
    :cond_6
    return v6

    :cond_7
    move v6, v0

    goto/16 :goto_0
.end method

.method public b()V
    .locals 3

    .prologue
    .line 178
    const-string v0, "AvastComms"

    iget-object v1, p0, Lcom/avast/android/generic/internet/HttpSender;->a:Lcom/avast/android/generic/service/AvastService;

    const-string v2, "HTTP sender went offline"

    invoke-static {v0, v1, v2}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/avast/android/generic/internet/HttpSender;->k:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 181
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 183
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/avast/android/generic/internet/HttpSender;->d:Z

    .line 184
    invoke-virtual {p0}, Lcom/avast/android/generic/internet/HttpSender;->d()V

    .line 189
    :goto_0
    return-void

    .line 187
    :cond_1
    invoke-virtual {p0}, Lcom/avast/android/generic/internet/HttpSender;->a()V

    goto :goto_0
.end method

.method public declared-synchronized c()Z
    .locals 5

    .prologue
    .line 193
    monitor-enter p0

    :try_start_0
    const-string v0, "AvastComms"

    iget-object v1, p0, Lcom/avast/android/generic/internet/HttpSender;->a:Lcom/avast/android/generic/service/AvastService;

    const-string v2, "Checking HTTP sender sending state..."

    invoke-static {v0, v1, v2}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    .line 195
    iget-object v1, p0, Lcom/avast/android/generic/internet/HttpSender;->l:Ljava/util/LinkedList;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 197
    :try_start_1
    const-string v0, "AvastComms"

    iget-object v2, p0, Lcom/avast/android/generic/internet/HttpSender;->a:Lcom/avast/android/generic/service/AvastService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Checked HTTP sender sending state (queue size is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/avast/android/generic/internet/HttpSender;->l:Ljava/util/LinkedList;

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

    .line 199
    iget-object v0, p0, Lcom/avast/android/generic/internet/HttpSender;->l:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 200
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 193
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public d()V
    .locals 4

    .prologue
    .line 441
    .line 442
    iget-object v1, p0, Lcom/avast/android/generic/internet/HttpSender;->l:Ljava/util/LinkedList;

    monitor-enter v1

    .line 444
    :try_start_0
    iget-object v0, p0, Lcom/avast/android/generic/internet/HttpSender;->l:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    .line 445
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 447
    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/avast/android/generic/internet/HttpSender;->d:Z

    if-nez v0, :cond_3

    .line 449
    :cond_0
    iget-object v1, p0, Lcom/avast/android/generic/internet/HttpSender;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 451
    :try_start_1
    iget-object v0, p0, Lcom/avast/android/generic/internet/HttpSender;->e:Ljava/lang/Thread;

    if-eqz v0, :cond_2

    .line 453
    const-string v0, "AvastComms"

    iget-object v2, p0, Lcom/avast/android/generic/internet/HttpSender;->a:Lcom/avast/android/generic/service/AvastService;

    const-string v3, "Stopping HTTP sender thread..."

    invoke-static {v0, v2, v3}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    .line 455
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/avast/android/generic/internet/HttpSender;->f:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 458
    :try_start_2
    iget-object v0, p0, Lcom/avast/android/generic/internet/HttpSender;->e:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 461
    iget-object v0, p0, Lcom/avast/android/generic/internet/HttpSender;->e:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 462
    iget-object v0, p0, Lcom/avast/android/generic/internet/HttpSender;->e:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 467
    :cond_1
    :goto_0
    const/4 v0, 0x0

    :try_start_3
    iput-boolean v0, p0, Lcom/avast/android/generic/internet/HttpSender;->f:Z

    .line 468
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/avast/android/generic/internet/HttpSender;->e:Ljava/lang/Thread;

    .line 470
    const-string v0, "AvastComms"

    iget-object v2, p0, Lcom/avast/android/generic/internet/HttpSender;->a:Lcom/avast/android/generic/service/AvastService;

    const-string v3, "Stopped HTTP sender thread"

    invoke-static {v0, v2, v3}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    .line 473
    :cond_2
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 476
    :cond_3
    return-void

    .line 445
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 474
    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    .line 464
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public e()V
    .locals 3

    .prologue
    .line 710
    const-string v0, "AvastComms"

    iget-object v1, p0, Lcom/avast/android/generic/internet/HttpSender;->a:Lcom/avast/android/generic/service/AvastService;

    const-string v2, "Destroying HTTP sender..."

    invoke-static {v0, v1, v2}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    .line 712
    iget-object v1, p0, Lcom/avast/android/generic/internet/HttpSender;->i:Ljava/lang/Object;

    monitor-enter v1

    .line 714
    :try_start_0
    iget-object v0, p0, Lcom/avast/android/generic/internet/HttpSender;->j:Lcom/avast/android/generic/internet/HttpSender$HttpStatusChangedBroadcastReceiver;

    if-eqz v0, :cond_0

    .line 716
    iget-object v0, p0, Lcom/avast/android/generic/internet/HttpSender;->a:Lcom/avast/android/generic/service/AvastService;

    iget-object v2, p0, Lcom/avast/android/generic/internet/HttpSender;->j:Lcom/avast/android/generic/internet/HttpSender$HttpStatusChangedBroadcastReceiver;

    invoke-virtual {v0, v2}, Lcom/avast/android/generic/service/AvastService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 718
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 720
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/avast/android/generic/internet/g;

    invoke-direct {v1, p0}, Lcom/avast/android/generic/internet/g;-><init>(Lcom/avast/android/generic/internet/HttpSender;)V

    const-string v2, "httpSenderDestroyer"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 740
    const-string v0, "AvastComms"

    iget-object v1, p0, Lcom/avast/android/generic/internet/HttpSender;->a:Lcom/avast/android/generic/service/AvastService;

    const-string v2, "Destroyed HTTP sender"

    invoke-static {v0, v1, v2}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    .line 741
    return-void

    .line 718
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

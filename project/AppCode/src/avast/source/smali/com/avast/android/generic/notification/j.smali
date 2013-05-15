.class public abstract Lcom/avast/android/generic/notification/j;
.super Ljava/lang/Object;
.source "AvastNotificationManager.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/app/NotificationManager;

.field private c:Ljava/text/DateFormat;

.field private d:Landroid/net/Uri;

.field private e:Lcom/avast/android/generic/ae;

.field private f:Landroid/app/Notification;

.field private g:I

.field private h:Ljava/util/LinkedList;

.field private i:Ljava/util/Map;

.field private j:Lcom/avast/android/generic/notification/o;


# direct methods
.method protected constructor <init>(Landroid/net/Uri;Landroid/content/Context;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/notification/j;->a:Landroid/content/Context;

    .line 104
    const-string v0, "notification"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/avast/android/generic/notification/j;->b:Landroid/app/NotificationManager;

    .line 106
    invoke-static {p2}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/notification/j;->c:Ljava/text/DateFormat;

    .line 107
    const-class v0, Lcom/avast/android/generic/ae;

    invoke-static {p2, v0}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/ae;

    iput-object v0, p0, Lcom/avast/android/generic/notification/j;->e:Lcom/avast/android/generic/ae;

    .line 108
    iput-object p1, p0, Lcom/avast/android/generic/notification/j;->d:Landroid/net/Uri;

    .line 110
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/avast/android/generic/notification/j;->h:Ljava/util/LinkedList;

    .line 111
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/avast/android/generic/notification/j;->i:Ljava/util/Map;

    .line 113
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 114
    new-instance v0, Lcom/avast/android/generic/notification/p;

    invoke-direct {v0, p0, v2}, Lcom/avast/android/generic/notification/p;-><init>(Lcom/avast/android/generic/notification/j;Lcom/avast/android/generic/notification/k;)V

    iput-object v0, p0, Lcom/avast/android/generic/notification/j;->j:Lcom/avast/android/generic/notification/o;

    .line 118
    :goto_0
    return-void

    .line 116
    :cond_0
    new-instance v0, Lcom/avast/android/generic/notification/q;

    invoke-direct {v0, p0, v2}, Lcom/avast/android/generic/notification/q;-><init>(Lcom/avast/android/generic/notification/j;Lcom/avast/android/generic/notification/k;)V

    iput-object v0, p0, Lcom/avast/android/generic/notification/j;->j:Lcom/avast/android/generic/notification/o;

    goto :goto_0
.end method

.method static synthetic a(Lcom/avast/android/generic/notification/j;)Landroid/net/Uri;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/avast/android/generic/notification/j;->d:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic b(Lcom/avast/android/generic/notification/j;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/avast/android/generic/notification/j;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Lcom/avast/android/generic/notification/j;)Ljava/util/LinkedList;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/avast/android/generic/notification/j;->h:Ljava/util/LinkedList;

    return-object v0
.end method

.method private c(Lcom/avast/android/generic/notification/a;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 208
    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/avast/android/generic/notification/j;->f:Landroid/app/Notification;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    move v1, v0

    .line 211
    :goto_0
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/avast/android/generic/notification/j;->h:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/avast/android/generic/notification/j;->i:Ljava/util/Map;

    iget-object v2, p0, Lcom/avast/android/generic/notification/j;->h:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/notification/a;

    move-object p1, v0

    .line 216
    :cond_0
    if-nez p1, :cond_4

    .line 217
    iget-object v0, p0, Lcom/avast/android/generic/notification/j;->e:Lcom/avast/android/generic/ae;

    invoke-virtual {v0}, Lcom/avast/android/generic/ae;->Q()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 218
    iget-object v0, p0, Lcom/avast/android/generic/notification/j;->j:Lcom/avast/android/generic/notification/o;

    invoke-interface {v0}, Lcom/avast/android/generic/notification/o;->a()Landroid/app/Notification;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/notification/j;->f:Landroid/app/Notification;

    .line 232
    :goto_1
    if-eqz v1, :cond_1

    .line 233
    iget-object v0, p0, Lcom/avast/android/generic/notification/j;->f:Landroid/app/Notification;

    iput-object v4, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 235
    :cond_1
    return-void

    .line 208
    :cond_2
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0

    .line 220
    :cond_3
    iput-object v4, p0, Lcom/avast/android/generic/notification/j;->f:Landroid/app/Notification;

    goto :goto_1

    .line 223
    :cond_4
    iget-object v0, p0, Lcom/avast/android/generic/notification/j;->h:Ljava/util/LinkedList;

    iget-wide v2, p1, Lcom/avast/android/generic/notification/a;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 224
    iget-object v0, p0, Lcom/avast/android/generic/notification/j;->h:Ljava/util/LinkedList;

    iget-wide v2, p1, Lcom/avast/android/generic/notification/a;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 226
    :cond_5
    iget-object v0, p0, Lcom/avast/android/generic/notification/j;->i:Ljava/util/Map;

    iget-wide v2, p1, Lcom/avast/android/generic/notification/a;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    invoke-direct {p0, p1}, Lcom/avast/android/generic/notification/j;->d(Lcom/avast/android/generic/notification/a;)V

    .line 229
    iget-object v0, p0, Lcom/avast/android/generic/notification/j;->j:Lcom/avast/android/generic/notification/o;

    invoke-interface {v0, p1}, Lcom/avast/android/generic/notification/o;->a(Lcom/avast/android/generic/notification/a;)Landroid/app/Notification;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/notification/j;->f:Landroid/app/Notification;

    goto :goto_1
.end method

.method static synthetic d(Lcom/avast/android/generic/notification/j;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/avast/android/generic/notification/j;->i:Ljava/util/Map;

    return-object v0
.end method

.method private d(Lcom/avast/android/generic/notification/a;)V
    .locals 3
    .parameter

    .prologue
    .line 243
    if-eqz p1, :cond_0

    .line 244
    iget v0, p1, Lcom/avast/android/generic/notification/a;->f:I

    and-int/lit8 v0, v0, 0x2

    if-lez v0, :cond_1

    .line 246
    iget-object v0, p0, Lcom/avast/android/generic/notification/j;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/generic/notification/j;->d:Landroid/net/Uri;

    invoke-static {v1}, Lcom/avast/android/generic/e;->a(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 272
    :cond_0
    :goto_0
    return-void

    .line 248
    :cond_1
    new-instance v0, Lcom/avast/android/generic/notification/l;

    invoke-direct {v0, p0, p1}, Lcom/avast/android/generic/notification/l;-><init>(Lcom/avast/android/generic/notification/j;Lcom/avast/android/generic/notification/a;)V

    .line 269
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-static {v0, v1}, Lcom/avast/android/generic/util/b;->a(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static synthetic e(Lcom/avast/android/generic/notification/j;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 1
    .parameter

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/avast/android/generic/notification/j;->h()Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic f(Lcom/avast/android/generic/notification/j;)Lcom/avast/android/generic/ae;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/avast/android/generic/notification/j;->e:Lcom/avast/android/generic/ae;

    return-object v0
.end method

.method static synthetic g(Lcom/avast/android/generic/notification/j;)Ljava/text/DateFormat;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/avast/android/generic/notification/j;->c:Ljava/text/DateFormat;

    return-object v0
.end method

.method private h()Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 389
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/avast/android/generic/notification/j;->d:Landroid/net/Uri;

    invoke-static {v2}, Lcom/avast/android/generic/e;->a(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 390
    const/high16 v1, 0x1400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 391
    iget-object v1, p0, Lcom/avast/android/generic/notification/j;->a:Landroid/content/Context;

    const/high16 v2, 0x800

    invoke-static {v1, v4, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 394
    iget-object v0, p0, Lcom/avast/android/generic/notification/j;->e:Lcom/avast/android/generic/ae;

    invoke-virtual {v0}, Lcom/avast/android/generic/ae;->R()I

    move-result v0

    iput v0, p0, Lcom/avast/android/generic/notification/j;->g:I

    .line 396
    sget v0, Lcom/avast/android/generic/s;->a:I

    .line 397
    iget v2, p0, Lcom/avast/android/generic/notification/j;->g:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 398
    sget v0, Lcom/avast/android/generic/s;->c:I

    .line 401
    :cond_0
    new-instance v2, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v3, p0, Lcom/avast/android/generic/notification/j;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 402
    invoke-virtual {v2, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 403
    invoke-virtual {v2, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 404
    invoke-virtual {v2, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 406
    return-object v2
.end method


# virtual methods
.method public abstract a(I)I
.end method

.method public declared-synchronized a()V
    .locals 2

    .prologue
    .line 160
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/avast/android/generic/notification/k;

    invoke-direct {v0, p0}, Lcom/avast/android/generic/notification/k;-><init>(Lcom/avast/android/generic/notification/j;)V

    .line 181
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-static {v0, v1}, Lcom/avast/android/generic/util/b;->a(Landroid/os/AsyncTask;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    monitor-exit p0

    return-void

    .line 160
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(J)V
    .locals 4
    .parameter

    .prologue
    .line 292
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/avast/android/generic/notification/j;->h:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/avast/android/generic/notification/j;->h:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 295
    iget-object v2, p0, Lcom/avast/android/generic/notification/j;->h:Ljava/util/LinkedList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 296
    iget-object v2, p0, Lcom/avast/android/generic/notification/j;->i:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    new-instance v2, Lcom/avast/android/generic/notification/m;

    invoke-direct {v2, p0, p1, p2}, Lcom/avast/android/generic/notification/m;-><init>(Lcom/avast/android/generic/notification/j;J)V

    .line 305
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-static {v2, v3}, Lcom/avast/android/generic/util/b;->a(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    .line 307
    cmp-long v0, v0, p1

    if-nez v0, :cond_2

    .line 308
    iget-object v0, p0, Lcom/avast/android/generic/notification/j;->h:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/avast/android/generic/notification/j;->e:Lcom/avast/android/generic/ae;

    invoke-virtual {v0}, Lcom/avast/android/generic/ae;->Q()Z

    move-result v0

    if-nez v0, :cond_1

    .line 310
    iget-object v0, p0, Lcom/avast/android/generic/notification/j;->b:Landroid/app/NotificationManager;

    sget v1, Lcom/avast/android/generic/u;->a:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 311
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/avast/android/generic/notification/j;->f:Landroid/app/Notification;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 321
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 314
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/avast/android/generic/notification/j;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 292
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 318
    :cond_2
    :try_start_2
    invoke-virtual {p0}, Lcom/avast/android/generic/notification/j;->b()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized a(Landroid/app/Service;Lcom/avast/android/generic/notification/a;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 131
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AvastNotificationManager: start foreground "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    .line 133
    invoke-direct {p0, p2}, Lcom/avast/android/generic/notification/j;->c(Lcom/avast/android/generic/notification/a;)V

    .line 134
    sget v0, Lcom/avast/android/generic/u;->a:I

    iget-object v1, p0, Lcom/avast/android/generic/notification/j;->f:Landroid/app/Notification;

    invoke-virtual {p1, v0, v1}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    monitor-exit p0

    return-void

    .line 131
    :cond_0
    :try_start_1
    iget-wide v2, p2, Lcom/avast/android/generic/notification/a;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract a(Landroid/content/Context;)V
.end method

.method public abstract a(Landroid/content/Context;Landroid/content/Intent;)V
.end method

.method public declared-synchronized a(Lcom/avast/android/generic/notification/a;)V
    .locals 3
    .parameter

    .prologue
    .line 199
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/avast/android/generic/notification/j;->c(Lcom/avast/android/generic/notification/a;)V

    .line 201
    iget-object v0, p0, Lcom/avast/android/generic/notification/j;->f:Landroid/app/Notification;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/avast/android/generic/notification/j;->b:Landroid/app/NotificationManager;

    sget v1, Lcom/avast/android/generic/u;->a:I

    iget-object v2, p0, Lcom/avast/android/generic/notification/j;->f:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    :cond_0
    monitor-exit p0

    return-void

    .line 199
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()V
    .locals 1

    .prologue
    .line 188
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/avast/android/generic/notification/j;->a(Lcom/avast/android/generic/notification/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    monitor-exit p0

    return-void

    .line 188
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Landroid/app/Service;Lcom/avast/android/generic/notification/a;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 145
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AvastNotificationManager: stopForeground "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    .line 147
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/Service;->stopForeground(Z)V

    .line 148
    if-eqz p2, :cond_1

    .line 149
    invoke-virtual {p0, p2}, Lcom/avast/android/generic/notification/j;->b(Lcom/avast/android/generic/notification/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    :goto_1
    monitor-exit p0

    return-void

    .line 145
    :cond_0
    :try_start_1
    iget-wide v2, p2, Lcom/avast/android/generic/notification/a;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 151
    :cond_1
    invoke-virtual {p0}, Lcom/avast/android/generic/notification/j;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 145
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Lcom/avast/android/generic/notification/a;)V
    .locals 2
    .parameter

    .prologue
    .line 282
    monitor-enter p0

    :try_start_0
    iget-wide v0, p1, Lcom/avast/android/generic/notification/a;->a:J

    invoke-virtual {p0, v0, v1}, Lcom/avast/android/generic/notification/j;->a(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 283
    monitor-exit p0

    return-void

    .line 282
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()V
    .locals 3

    .prologue
    .line 332
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/avast/android/generic/notification/j;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 333
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 334
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 335
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avast/android/generic/notification/a;

    iget v1, v1, Lcom/avast/android/generic/notification/a;->f:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    .line 336
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 337
    iget-object v1, p0, Lcom/avast/android/generic/notification/j;->h:Ljava/util/LinkedList;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 332
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 340
    :cond_1
    :try_start_1
    new-instance v0, Lcom/avast/android/generic/notification/n;

    invoke-direct {v0, p0}, Lcom/avast/android/generic/notification/n;-><init>(Lcom/avast/android/generic/notification/j;)V

    .line 347
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-static {v0, v1}, Lcom/avast/android/generic/util/b;->a(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    .line 349
    iget-object v0, p0, Lcom/avast/android/generic/notification/j;->h:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/avast/android/generic/notification/j;->e:Lcom/avast/android/generic/ae;

    invoke-virtual {v0}, Lcom/avast/android/generic/ae;->Q()Z

    move-result v0

    if-nez v0, :cond_2

    .line 350
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/avast/android/generic/notification/j;->f:Landroid/app/Notification;

    .line 351
    iget-object v0, p0, Lcom/avast/android/generic/notification/j;->b:Landroid/app/NotificationManager;

    sget v1, Lcom/avast/android/generic/u;->a:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 355
    :goto_1
    monitor-exit p0

    return-void

    .line 353
    :cond_2
    :try_start_2
    invoke-virtual {p0}, Lcom/avast/android/generic/notification/j;->b()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method declared-synchronized d()Ljava/util/List;
    .locals 5

    .prologue
    .line 415
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 417
    iget-object v0, p0, Lcom/avast/android/generic/notification/j;->h:Ljava/util/LinkedList;

    iget-object v2, p0, Lcom/avast/android/generic/notification/j;->h:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v2

    .line 418
    :goto_0
    invoke-interface {v2}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 419
    invoke-interface {v2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 420
    iget-object v0, p0, Lcom/avast/android/generic/notification/j;->i:Ljava/util/Map;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 415
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 422
    :cond_0
    monitor-exit p0

    return-object v1
.end method

.method public abstract e()I
.end method

.method public abstract f()I
.end method

.method public g()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 459
    iget-object v0, p0, Lcom/avast/android/generic/notification/j;->d:Landroid/net/Uri;

    return-object v0
.end method

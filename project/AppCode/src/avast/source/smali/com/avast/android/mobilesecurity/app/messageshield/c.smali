.class public Lcom/avast/android/mobilesecurity/app/messageshield/c;
.super Ljava/lang/Object;
.source "MessageScannerStarter.java"


# static fields
.field private static a:Z

.field private static b:Z

.field private static c:Ljava/util/concurrent/Semaphore;

.field private static d:Ljava/lang/Object;

.field private static e:Ljava/util/LinkedList;

.field private static f:Ljava/util/Map;

.field private static g:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 56
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    sput-object v0, Lcom/avast/android/mobilesecurity/app/messageshield/c;->c:Ljava/util/concurrent/Semaphore;

    .line 57
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/avast/android/mobilesecurity/app/messageshield/c;->d:Ljava/lang/Object;

    .line 58
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/avast/android/mobilesecurity/app/messageshield/c;->e:Ljava/util/LinkedList;

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/avast/android/mobilesecurity/app/messageshield/c;->f:Ljava/util/Map;

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/avast/android/mobilesecurity/app/messageshield/c;->g:Ljava/util/Map;

    .line 61
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/avast/android/mobilesecurity/app/messageshield/MessageToScan;Ljava/util/Set;Lcom/avast/android/mobilesecurity/engine/k;I)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MessageShieldStarter: Starting message shield for UUID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/avast/android/mobilesecurity/app/messageshield/MessageToScan;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    .line 156
    sget-object v1, Lcom/avast/android/mobilesecurity/app/messageshield/c;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 157
    :try_start_0
    sget-boolean v0, Lcom/avast/android/mobilesecurity/app/messageshield/c;->a:Z

    if-eqz v0, :cond_1

    .line 158
    const-string v0, "MessageShieldStarter: Block offer visible, removing the UUID from its queue."

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    .line 159
    sget-object v0, Lcom/avast/android/mobilesecurity/app/messageshield/c;->c:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->drainPermits()I

    .line 160
    const/4 v0, 0x0

    sput-boolean v0, Lcom/avast/android/mobilesecurity/app/messageshield/c;->b:Z

    .line 161
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 162
    const-string v2, "SmsBlockOfferActivity.REMOVE_UUID"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 163
    const-string v2, "uuid"

    iget-object v3, p1, Lcom/avast/android/mobilesecurity/app/messageshield/MessageToScan;->b:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 164
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 165
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    :goto_0
    :try_start_1
    sget-object v0, Lcom/avast/android/mobilesecurity/app/messageshield/c;->c:Ljava/util/concurrent/Semaphore;

    const-wide/16 v2, 0x1388

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v4}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    .line 172
    sget-boolean v0, Lcom/avast/android/mobilesecurity/app/messageshield/c;->b:Z

    if-eqz v0, :cond_0

    .line 173
    const/4 v0, 0x0

    sput-boolean v0, Lcom/avast/android/mobilesecurity/app/messageshield/c;->a:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 178
    :cond_0
    :goto_1
    :try_start_2
    const-string v0, "MessageShieldStarter: Block offer removed the UUID."

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    .line 180
    iget-object v0, p1, Lcom/avast/android/mobilesecurity/app/messageshield/MessageToScan;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/messageshield/c;->a(Ljava/lang/String;)V

    .line 181
    invoke-static {p0, p1, p2, p3, p4}, Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;->call(Landroid/content/Context;Lcom/avast/android/mobilesecurity/app/messageshield/MessageToScan;Ljava/util/Set;Lcom/avast/android/mobilesecurity/engine/k;I)V

    .line 182
    monitor-exit v1

    .line 183
    return-void

    .line 167
    :cond_1
    sget-object v0, Lcom/avast/android/mobilesecurity/app/messageshield/c;->c:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_0

    .line 182
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 175
    :catch_0
    move-exception v0

    .line 176
    :try_start_3
    const-string v2, "MessageShieldStarter"

    invoke-static {v2, v0}, Lcom/avast/android/generic/util/m;->b(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;Lcom/avast/android/mobilesecurity/app/messageshield/b;I)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 81
    const-string v0, "MessageShieldStarter: Starting message scan."

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    .line 84
    sget-object v1, Lcom/avast/android/mobilesecurity/app/messageshield/c;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 85
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MessageShieldStarter: Waiting for the scan for UUID: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " to complete."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    .line 87
    new-instance v0, Lcom/avast/android/mobilesecurity/app/messageshield/MessageToScan;

    invoke-direct {v0}, Lcom/avast/android/mobilesecurity/app/messageshield/MessageToScan;-><init>()V

    .line 88
    iput-object p1, v0, Lcom/avast/android/mobilesecurity/app/messageshield/MessageToScan;->b:Ljava/lang/String;

    .line 89
    iput-object p2, v0, Lcom/avast/android/mobilesecurity/app/messageshield/MessageToScan;->f:Ljava/lang/String;

    .line 90
    iput-object p3, v0, Lcom/avast/android/mobilesecurity/app/messageshield/MessageToScan;->h:Ljava/lang/String;

    .line 91
    iput-object p4, v0, Lcom/avast/android/mobilesecurity/app/messageshield/MessageToScan;->g:Ljava/lang/String;

    .line 92
    iput-wide p5, v0, Lcom/avast/android/mobilesecurity/app/messageshield/MessageToScan;->i:J

    .line 93
    iput-object p7, v0, Lcom/avast/android/mobilesecurity/app/messageshield/MessageToScan;->j:Landroid/os/Bundle;

    .line 94
    sget-object v2, Lcom/avast/android/mobilesecurity/engine/p;->b:Lcom/avast/android/mobilesecurity/engine/p;

    iput-object v2, v0, Lcom/avast/android/mobilesecurity/app/messageshield/MessageToScan;->e:Lcom/avast/android/mobilesecurity/engine/p;

    .line 96
    new-instance v2, Lcom/avast/android/mobilesecurity/app/messageshield/k;

    new-instance v3, Lcom/avast/android/mobilesecurity/app/messageshield/a;

    invoke-direct {v3, p0}, Lcom/avast/android/mobilesecurity/app/messageshield/a;-><init>(Landroid/content/Context;)V

    new-instance v4, Lcom/avast/android/mobilesecurity/app/messageshield/d;

    invoke-direct {v4}, Lcom/avast/android/mobilesecurity/app/messageshield/d;-><init>()V

    invoke-direct {v2, p0, v3, v4}, Lcom/avast/android/mobilesecurity/app/messageshield/k;-><init>(Landroid/content/Context;Lcom/avast/android/mobilesecurity/app/messageshield/a;Lcom/avast/android/mobilesecurity/app/messageshield/b;)V

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/avast/android/mobilesecurity/app/messageshield/MessageToScan;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v2, v3}, Lcom/avast/android/mobilesecurity/app/messageshield/k;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 104
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 105
    sget-object v2, Lcom/avast/android/mobilesecurity/app/messageshield/c;->f:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v2, Lcom/avast/android/mobilesecurity/app/messageshield/c;->g:Ljava/util/Map;

    invoke-interface {v2, p1, p8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    int-to-long v1, p9

    :try_start_1
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 113
    :goto_0
    return-void

    .line 107
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 110
    :catch_0
    move-exception v0

    .line 111
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;I)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MessageShieldStarter: Starting block offer for UUID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    .line 201
    sget-object v8, Lcom/avast/android/mobilesecurity/app/messageshield/c;->d:Ljava/lang/Object;

    monitor-enter v8

    .line 202
    :try_start_0
    sget-object v0, Lcom/avast/android/mobilesecurity/app/messageshield/c;->e:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 203
    invoke-static/range {p0 .. p6}, Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;->call(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 205
    const/4 v0, 0x1

    sput-boolean v0, Lcom/avast/android/mobilesecurity/app/messageshield/c;->a:Z

    .line 206
    invoke-static {p0}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;->a(Landroid/content/Context;)Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;

    move-result-object v0

    sget-object v1, Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;->v:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p2

    invoke-virtual/range {v0 .. v7}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;->a(Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 212
    :goto_0
    monitor-exit v8

    .line 213
    return-void

    .line 210
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MessageShieldStarter: Message shield already started for given UUID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    goto :goto_0

    .line 212
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static a(Landroid/content/Context;Ljava/util/Queue;I)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 226
    const-string v0, "MessageShieldStarter: Restarting block offer with the intent queue."

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    .line 227
    sget-object v1, Lcom/avast/android/mobilesecurity/app/messageshield/c;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 228
    :try_start_0
    invoke-interface {p1}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 229
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 230
    const-string v3, "uuid"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 231
    if-eqz v0, :cond_0

    sget-object v3, Lcom/avast/android/mobilesecurity/app/messageshield/c;->e:Ljava/util/LinkedList;

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 244
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 236
    :cond_1
    :try_start_1
    invoke-interface {p1}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 237
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 238
    invoke-virtual {v0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 239
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 240
    const-string v3, "intent_queue"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 241
    const/4 v2, 0x1

    sput-boolean v2, Lcom/avast/android/mobilesecurity/app/messageshield/c;->a:Z

    .line 242
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 244
    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 245
    return-void
.end method

.method private static a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 268
    sget-object v0, Lcom/avast/android/mobilesecurity/app/messageshield/c;->e:Ljava/util/LinkedList;

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 269
    sget-object v0, Lcom/avast/android/mobilesecurity/app/messageshield/c;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    .line 270
    sget-object v0, Lcom/avast/android/mobilesecurity/app/messageshield/c;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 271
    sget-object v1, Lcom/avast/android/mobilesecurity/app/messageshield/c;->f:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/avast/android/mobilesecurity/engine/o;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MessageShieldStarter: Scan for UUID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " finished."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    .line 126
    sget-object v2, Lcom/avast/android/mobilesecurity/app/messageshield/c;->d:Ljava/lang/Object;

    monitor-enter v2

    .line 127
    :try_start_0
    sget-object v0, Lcom/avast/android/mobilesecurity/app/messageshield/c;->f:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Semaphore;

    .line 128
    sget-object v1, Lcom/avast/android/mobilesecurity/app/messageshield/c;->g:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avast/android/mobilesecurity/app/messageshield/b;

    .line 129
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MessageShieldStarter: ScanSemaphore: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    .line 132
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MessageShieldStarter: Callback: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    .line 134
    if-eqz v1, :cond_0

    .line 135
    invoke-interface {v1, p0, p1}, Lcom/avast/android/mobilesecurity/app/messageshield/b;->a(Ljava/lang/String;Lcom/avast/android/mobilesecurity/engine/o;)V

    .line 137
    :cond_0
    if-eqz v0, :cond_1

    .line 138
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 140
    :cond_1
    return-void

    .line 129
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 256
    const-string v0, "MessageShieldStarter: Block offer finished removing UUID."

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    .line 257
    sput-boolean p0, Lcom/avast/android/mobilesecurity/app/messageshield/c;->b:Z

    .line 258
    sget-object v0, Lcom/avast/android/mobilesecurity/app/messageshield/c;->c:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 259
    return-void
.end method

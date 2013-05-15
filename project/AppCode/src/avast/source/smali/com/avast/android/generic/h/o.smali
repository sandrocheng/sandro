.class public Lcom/avast/android/generic/h/o;
.super Ljava/lang/Object;
.source "TaskHandler.java"


# instance fields
.field private a:Lcom/avast/android/generic/service/AvastService;

.field private b:Ljava/util/concurrent/ConcurrentHashMap;

.field private c:Ljava/util/concurrent/ConcurrentHashMap;

.field private d:I

.field private e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/avast/android/generic/service/AvastService;)V
    .locals 1
    .parameter

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/avast/android/generic/h/o;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 20
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/avast/android/generic/h/o;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lcom/avast/android/generic/h/o;->d:I

    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/avast/android/generic/h/o;->e:Ljava/lang/Object;

    .line 39
    iput-object p1, p0, Lcom/avast/android/generic/h/o;->a:Lcom/avast/android/generic/service/AvastService;

    .line 40
    return-void
.end method

.method static synthetic a(Lcom/avast/android/generic/h/o;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 16
    iget-object v0, p0, Lcom/avast/android/generic/h/o;->e:Ljava/lang/Object;

    return-object v0
.end method

.method private a(Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 114
    iget-object v1, p0, Lcom/avast/android/generic/h/o;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 116
    :try_start_0
    iget v0, p0, Lcom/avast/android/generic/h/o;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/avast/android/generic/h/o;->d:I

    .line 117
    const-string v0, "AvastGeneric"

    iget-object v2, p0, Lcom/avast/android/generic/h/o;->a:Lcom/avast/android/generic/service/AvastService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EventsRunning at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/avast/android/generic/h/o;->d:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (handleEvent2 begin)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    .line 118
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/h/l;

    .line 122
    iget-object v1, p0, Lcom/avast/android/generic/h/o;->a:Lcom/avast/android/generic/service/AvastService;

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/h/l;->a(Lcom/avast/android/generic/service/AvastService;)V

    .line 124
    iget-object v1, p0, Lcom/avast/android/generic/h/o;->a:Lcom/avast/android/generic/service/AvastService;

    new-instance v2, Lcom/avast/android/generic/h/p;

    invoke-direct {v2, p0}, Lcom/avast/android/generic/h/p;-><init>(Lcom/avast/android/generic/h/o;)V

    invoke-virtual {v0, v1, p2, p3, v2}, Lcom/avast/android/generic/h/l;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Lcom/avast/android/generic/h/n;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 118
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 138
    :catch_0
    move-exception v0

    .line 140
    invoke-static {}, La/a/a/a/a/a;->a()La/a/a/a/a/a;

    move-result-object v1

    const-string v2, "Exception in initializing event"

    invoke-virtual {v1, v2, v0}, La/a/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 142
    iget-object v1, p0, Lcom/avast/android/generic/h/o;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 144
    :try_start_3
    iget v0, p0, Lcom/avast/android/generic/h/o;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/avast/android/generic/h/o;->d:I

    .line 145
    const-string v0, "AvastGeneric"

    iget-object v2, p0, Lcom/avast/android/generic/h/o;->a:Lcom/avast/android/generic/service/AvastService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EventsRunning at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/avast/android/generic/h/o;->d:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (handleEvent2 error)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    .line 146
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 148
    invoke-virtual {p0}, Lcom/avast/android/generic/h/o;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/avast/android/generic/h/o;->a:Lcom/avast/android/generic/service/AvastService;

    invoke-virtual {v0}, Lcom/avast/android/generic/service/AvastService;->b()V

    goto :goto_0

    .line 146
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method static synthetic b(Lcom/avast/android/generic/h/o;)I
    .locals 2
    .parameter

    .prologue
    .line 16
    iget v0, p0, Lcom/avast/android/generic/h/o;->d:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/avast/android/generic/h/o;->d:I

    return v0
.end method

.method static synthetic c(Lcom/avast/android/generic/h/o;)Lcom/avast/android/generic/service/AvastService;
    .locals 1
    .parameter

    .prologue
    .line 16
    iget-object v0, p0, Lcom/avast/android/generic/h/o;->a:Lcom/avast/android/generic/service/AvastService;

    return-object v0
.end method

.method static synthetic d(Lcom/avast/android/generic/h/o;)I
    .locals 1
    .parameter

    .prologue
    .line 16
    iget v0, p0, Lcom/avast/android/generic/h/o;->d:I

    return v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 74
    const-string v0, "AvastGeneric"

    iget-object v1, p0, Lcom/avast/android/generic/h/o;->a:Lcom/avast/android/generic/service/AvastService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Performing action \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    .line 76
    iget-object v1, p0, Lcom/avast/android/generic/h/o;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 78
    :try_start_0
    iget v0, p0, Lcom/avast/android/generic/h/o;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/avast/android/generic/h/o;->d:I

    .line 79
    const-string v0, "AvastGeneric"

    iget-object v2, p0, Lcom/avast/android/generic/h/o;->a:Lcom/avast/android/generic/service/AvastService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EventsRunning at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/avast/android/generic/h/o;->d:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (handleEvent begin)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    .line 80
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    iget-object v0, p0, Lcom/avast/android/generic/h/o;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/avast/android/generic/h/o;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    .line 85
    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 87
    invoke-direct {p0, v0, p1, p2}, Lcom/avast/android/generic/h/o;->a(Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 80
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/avast/android/generic/h/o;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    :cond_1
    iget-object v0, p0, Lcom/avast/android/generic/h/o;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 95
    iget-object v0, p0, Lcom/avast/android/generic/h/o;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    .line 96
    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 98
    invoke-direct {p0, v0, p1, p2}, Lcom/avast/android/generic/h/o;->a(Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1

    .line 102
    :cond_2
    iget-object v1, p0, Lcom/avast/android/generic/h/o;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 104
    :try_start_2
    iget v0, p0, Lcom/avast/android/generic/h/o;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/avast/android/generic/h/o;->d:I

    .line 105
    const-string v0, "AvastGeneric"

    iget-object v2, p0, Lcom/avast/android/generic/h/o;->a:Lcom/avast/android/generic/service/AvastService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EventsRunning at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/avast/android/generic/h/o;->d:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (handleEvent end)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    .line 106
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 108
    invoke-virtual {p0}, Lcom/avast/android/generic/h/o;->a()Z

    move-result v0

    if-nez v0, :cond_3

    .line 109
    iget-object v0, p0, Lcom/avast/android/generic/h/o;->a:Lcom/avast/android/generic/service/AvastService;

    invoke-virtual {v0}, Lcom/avast/android/generic/service/AvastService;->b()V

    .line 110
    :cond_3
    return-void

    .line 106
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/avast/android/generic/h/o;->a(Ljava/lang/String;Ljava/lang/Class;Z)V

    .line 45
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Class;Z)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 49
    if-eqz p3, :cond_1

    .line 51
    iget-object v0, p0, Lcom/avast/android/generic/h/o;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/avast/android/generic/h/o;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 71
    :goto_0
    return-void

    .line 56
    :cond_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 57
    iget-object v1, p0, Lcom/avast/android/generic/h/o;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 61
    :cond_1
    iget-object v0, p0, Lcom/avast/android/generic/h/o;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 63
    iget-object v0, p0, Lcom/avast/android/generic/h/o;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 66
    :cond_2
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 67
    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 68
    iget-object v1, p0, Lcom/avast/android/generic/h/o;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public a()Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 28
    const-string v2, "AvastGeneric"

    iget-object v3, p0, Lcom/avast/android/generic/h/o;->a:Lcom/avast/android/generic/service/AvastService;

    const-string v4, "Checking task handler population state"

    invoke-static {v2, v3, v4}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    .line 30
    iget-object v3, p0, Lcom/avast/android/generic/h/o;->e:Ljava/lang/Object;

    monitor-enter v3

    .line 32
    :try_start_0
    const-string v4, "AvastGeneric"

    iget-object v5, p0, Lcom/avast/android/generic/h/o;->a:Lcom/avast/android/generic/service/AvastService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Checked task handler population state ("

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v2, p0, Lcom/avast/android/generic/h/o;->d:I

    if-lez v2, :cond_0

    move v2, v0

    :goto_0
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ")"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v5, v2}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    .line 33
    iget v2, p0, Lcom/avast/android/generic/h/o;->d:I

    if-lez v2, :cond_1

    :goto_1
    monitor-exit v3

    return v0

    :cond_0
    move v2, v1

    .line 32
    goto :goto_0

    :cond_1
    move v0, v1

    .line 33
    goto :goto_1

    .line 34
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b()V
    .locals 0

    .prologue
    .line 154
    return-void
.end method

.class public Lcom/avast/android/mobilesecurity/filebrowser/h;
.super Ljava/lang/Object;
.source "SystemFileInfo.java"

# interfaces
.implements Lcom/avast/android/generic/filebrowser/f;


# static fields
.field private static final a:Ljava/lang/Object;

.field private static b:Ljava/util/List;

.field private static c:Lcom/avast/android/generic/util/ad;

.field private static d:Ljava/util/Map;

.field private static e:Ljava/util/concurrent/LinkedBlockingQueue;

.field private static f:Lcom/avast/android/mobilesecurity/filebrowser/j;

.field private static g:Ljava/util/Stack;

.field private static h:Lcom/avast/android/mobilesecurity/filebrowser/i;

.field private static i:Ljava/util/concurrent/Semaphore;


# instance fields
.field private final j:Ljava/io/File;

.field private k:Ljava/lang/String;

.field private l:[Lcom/avast/android/generic/filebrowser/f;

.field private final m:Z

.field private n:Ljava/lang/Long;

.field private o:Ljava/lang/Long;

.field private p:Lcom/avast/android/generic/filebrowser/h;

.field private q:Lcom/avast/android/generic/filebrowser/g;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/avast/android/mobilesecurity/filebrowser/h;->a:Ljava/lang/Object;

    .line 47
    sput-object v1, Lcom/avast/android/mobilesecurity/filebrowser/h;->b:Ljava/util/List;

    .line 52
    new-instance v0, Lcom/avast/android/generic/util/ad;

    invoke-direct {v0}, Lcom/avast/android/generic/util/ad;-><init>()V

    sput-object v0, Lcom/avast/android/mobilesecurity/filebrowser/h;->c:Lcom/avast/android/generic/util/ad;

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/avast/android/mobilesecurity/filebrowser/h;->d:Ljava/util/Map;

    .line 63
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sput-object v0, Lcom/avast/android/mobilesecurity/filebrowser/h;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 69
    sput-object v1, Lcom/avast/android/mobilesecurity/filebrowser/h;->f:Lcom/avast/android/mobilesecurity/filebrowser/j;

    .line 74
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    sput-object v0, Lcom/avast/android/mobilesecurity/filebrowser/h;->g:Ljava/util/Stack;

    .line 79
    sput-object v1, Lcom/avast/android/mobilesecurity/filebrowser/h;->h:Lcom/avast/android/mobilesecurity/filebrowser/i;

    .line 84
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    sput-object v0, Lcom/avast/android/mobilesecurity/filebrowser/h;->i:Ljava/util/concurrent/Semaphore;

    return-void
.end method

.method private constructor <init>(Ljava/io/File;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object v0, p0, Lcom/avast/android/mobilesecurity/filebrowser/h;->k:Ljava/lang/String;

    .line 100
    iput-object v0, p0, Lcom/avast/android/mobilesecurity/filebrowser/h;->l:[Lcom/avast/android/generic/filebrowser/f;

    .line 110
    iput-object v0, p0, Lcom/avast/android/mobilesecurity/filebrowser/h;->n:Ljava/lang/Long;

    .line 115
    iput-object v0, p0, Lcom/avast/android/mobilesecurity/filebrowser/h;->o:Ljava/lang/Long;

    .line 120
    iput-object v0, p0, Lcom/avast/android/mobilesecurity/filebrowser/h;->p:Lcom/avast/android/generic/filebrowser/h;

    .line 125
    iput-object v0, p0, Lcom/avast/android/mobilesecurity/filebrowser/h;->q:Lcom/avast/android/generic/filebrowser/g;

    .line 155
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/filebrowser/h;->n()V

    .line 156
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/filebrowser/h;->j:Ljava/io/File;

    .line 157
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/avast/android/mobilesecurity/filebrowser/h;->m:Z

    .line 158
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object v1, p0, Lcom/avast/android/mobilesecurity/filebrowser/h;->k:Ljava/lang/String;

    .line 100
    iput-object v1, p0, Lcom/avast/android/mobilesecurity/filebrowser/h;->l:[Lcom/avast/android/generic/filebrowser/f;

    .line 110
    iput-object v1, p0, Lcom/avast/android/mobilesecurity/filebrowser/h;->n:Ljava/lang/Long;

    .line 115
    iput-object v1, p0, Lcom/avast/android/mobilesecurity/filebrowser/h;->o:Ljava/lang/Long;

    .line 120
    iput-object v1, p0, Lcom/avast/android/mobilesecurity/filebrowser/h;->p:Lcom/avast/android/generic/filebrowser/h;

    .line 125
    iput-object v1, p0, Lcom/avast/android/mobilesecurity/filebrowser/h;->q:Lcom/avast/android/generic/filebrowser/g;

    .line 169
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/filebrowser/h;->n()V

    .line 170
    const-string v0, "ROOT_PATH"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/avast/android/mobilesecurity/filebrowser/h;->m:Z

    .line 172
    iput-object v1, p0, Lcom/avast/android/mobilesecurity/filebrowser/h;->j:Ljava/io/File;

    .line 177
    :goto_0
    return-void

    .line 174
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/avast/android/mobilesecurity/filebrowser/h;->m:Z

    .line 175
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/filebrowser/h;->j:Ljava/io/File;

    goto :goto_0
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/filebrowser/h;Lcom/avast/android/generic/filebrowser/g;)Lcom/avast/android/generic/filebrowser/g;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 24
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/filebrowser/h;->q:Lcom/avast/android/generic/filebrowser/g;

    return-object p1
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/filebrowser/h;)Lcom/avast/android/generic/filebrowser/h;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/filebrowser/h;->p:Lcom/avast/android/generic/filebrowser/h;

    return-object v0
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/filebrowser/h;Lcom/avast/android/generic/filebrowser/h;)Lcom/avast/android/generic/filebrowser/h;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 24
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/filebrowser/h;->p:Lcom/avast/android/generic/filebrowser/h;

    return-object p1
.end method

.method public static a(Ljava/io/File;)Lcom/avast/android/mobilesecurity/filebrowser/h;
    .locals 4
    .parameter

    .prologue
    .line 188
    sget-object v1, Lcom/avast/android/mobilesecurity/filebrowser/h;->d:Ljava/util/Map;

    monitor-enter v1

    .line 189
    :try_start_0
    sget-object v0, Lcom/avast/android/mobilesecurity/filebrowser/h;->d:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/filebrowser/h;

    .line 190
    if-eqz v0, :cond_0

    .line 191
    monitor-exit v1

    .line 195
    :goto_0
    return-object v0

    .line 193
    :cond_0
    new-instance v0, Lcom/avast/android/mobilesecurity/filebrowser/h;

    invoke-direct {v0, p0}, Lcom/avast/android/mobilesecurity/filebrowser/h;-><init>(Ljava/io/File;)V

    .line 194
    sget-object v2, Lcom/avast/android/mobilesecurity/filebrowser/h;->d:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    monitor-exit v1

    goto :goto_0

    .line 196
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static a(Ljava/lang/String;)Lcom/avast/android/mobilesecurity/filebrowser/h;
    .locals 3
    .parameter

    .prologue
    .line 209
    sget-object v1, Lcom/avast/android/mobilesecurity/filebrowser/h;->d:Ljava/util/Map;

    monitor-enter v1

    .line 210
    :try_start_0
    sget-object v0, Lcom/avast/android/mobilesecurity/filebrowser/h;->d:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/filebrowser/h;

    .line 211
    if-eqz v0, :cond_0

    .line 212
    monitor-exit v1

    .line 216
    :goto_0
    return-object v0

    .line 214
    :cond_0
    new-instance v0, Lcom/avast/android/mobilesecurity/filebrowser/h;

    invoke-direct {v0, p0}, Lcom/avast/android/mobilesecurity/filebrowser/h;-><init>(Ljava/lang/String;)V

    .line 215
    sget-object v2, Lcom/avast/android/mobilesecurity/filebrowser/h;->d:Ljava/util/Map;

    invoke-interface {v2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    monitor-exit v1

    goto :goto_0

    .line 217
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/filebrowser/h;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 24
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/filebrowser/h;->n:Ljava/lang/Long;

    return-object p1
.end method

.method static synthetic b(Lcom/avast/android/mobilesecurity/filebrowser/h;)Lcom/avast/android/generic/filebrowser/g;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/filebrowser/h;->q:Lcom/avast/android/generic/filebrowser/g;

    return-object v0
.end method

.method static synthetic b(Lcom/avast/android/mobilesecurity/filebrowser/h;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 24
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/filebrowser/h;->o:Ljava/lang/Long;

    return-object p1
.end method

.method static synthetic c(Lcom/avast/android/mobilesecurity/filebrowser/h;)Ljava/lang/Long;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/filebrowser/h;->n:Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic d(Lcom/avast/android/mobilesecurity/filebrowser/h;)Ljava/lang/Long;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/filebrowser/h;->o:Ljava/lang/Long;

    return-object v0
.end method

.method public static i()V
    .locals 2

    .prologue
    .line 297
    sget-object v1, Lcom/avast/android/mobilesecurity/filebrowser/h;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 298
    :try_start_0
    sget-object v0, Lcom/avast/android/mobilesecurity/filebrowser/h;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 300
    sget-object v0, Lcom/avast/android/mobilesecurity/filebrowser/h;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 301
    const/4 v0, 0x0

    sput-object v0, Lcom/avast/android/mobilesecurity/filebrowser/h;->b:Ljava/util/List;

    .line 303
    :cond_0
    sget-object v0, Lcom/avast/android/mobilesecurity/filebrowser/h;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 304
    sget-object v0, Lcom/avast/android/mobilesecurity/filebrowser/h;->f:Lcom/avast/android/mobilesecurity/filebrowser/j;

    if-eqz v0, :cond_1

    .line 305
    sget-object v0, Lcom/avast/android/mobilesecurity/filebrowser/h;->f:Lcom/avast/android/mobilesecurity/filebrowser/j;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/filebrowser/j;->interrupt()V

    .line 306
    const/4 v0, 0x0

    sput-object v0, Lcom/avast/android/mobilesecurity/filebrowser/h;->f:Lcom/avast/android/mobilesecurity/filebrowser/j;

    .line 309
    :cond_1
    sget-object v0, Lcom/avast/android/mobilesecurity/filebrowser/h;->h:Lcom/avast/android/mobilesecurity/filebrowser/i;

    if-eqz v0, :cond_2

    .line 310
    sget-object v0, Lcom/avast/android/mobilesecurity/filebrowser/h;->h:Lcom/avast/android/mobilesecurity/filebrowser/i;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/filebrowser/i;->interrupt()V

    .line 311
    const/4 v0, 0x0

    sput-object v0, Lcom/avast/android/mobilesecurity/filebrowser/h;->h:Lcom/avast/android/mobilesecurity/filebrowser/i;

    .line 313
    :cond_2
    monitor-exit v1

    .line 314
    return-void

    .line 313
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic j()Ljava/util/concurrent/LinkedBlockingQueue;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/avast/android/mobilesecurity/filebrowser/h;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object v0
.end method

.method static synthetic k()Ljava/util/Stack;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/avast/android/mobilesecurity/filebrowser/h;->g:Ljava/util/Stack;

    return-object v0
.end method

.method static synthetic l()Ljava/util/concurrent/Semaphore;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/avast/android/mobilesecurity/filebrowser/h;->i:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method static synthetic m()Ljava/util/Map;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/avast/android/mobilesecurity/filebrowser/h;->d:Ljava/util/Map;

    return-object v0
.end method

.method private n()V
    .locals 2

    .prologue
    .line 131
    sget-object v1, Lcom/avast/android/mobilesecurity/filebrowser/h;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 132
    :try_start_0
    sget-object v0, Lcom/avast/android/mobilesecurity/filebrowser/h;->b:Ljava/util/List;

    if-nez v0, :cond_0

    .line 133
    sget-object v0, Lcom/avast/android/mobilesecurity/filebrowser/h;->c:Lcom/avast/android/generic/util/ad;

    invoke-virtual {v0}, Lcom/avast/android/generic/util/ad;->b()V

    .line 134
    sget-object v0, Lcom/avast/android/mobilesecurity/filebrowser/h;->c:Lcom/avast/android/generic/util/ad;

    invoke-virtual {v0}, Lcom/avast/android/generic/util/ad;->c()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/avast/android/mobilesecurity/filebrowser/h;->b:Ljava/util/List;

    .line 136
    :cond_0
    sget-object v0, Lcom/avast/android/mobilesecurity/filebrowser/h;->f:Lcom/avast/android/mobilesecurity/filebrowser/j;

    if-nez v0, :cond_1

    .line 137
    new-instance v0, Lcom/avast/android/mobilesecurity/filebrowser/j;

    invoke-direct {v0}, Lcom/avast/android/mobilesecurity/filebrowser/j;-><init>()V

    sput-object v0, Lcom/avast/android/mobilesecurity/filebrowser/h;->f:Lcom/avast/android/mobilesecurity/filebrowser/j;

    .line 138
    sget-object v0, Lcom/avast/android/mobilesecurity/filebrowser/h;->f:Lcom/avast/android/mobilesecurity/filebrowser/j;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/filebrowser/j;->start()V

    .line 140
    :cond_1
    sget-object v0, Lcom/avast/android/mobilesecurity/filebrowser/h;->h:Lcom/avast/android/mobilesecurity/filebrowser/i;

    if-nez v0, :cond_2

    .line 141
    new-instance v0, Lcom/avast/android/mobilesecurity/filebrowser/i;

    invoke-direct {v0}, Lcom/avast/android/mobilesecurity/filebrowser/i;-><init>()V

    sput-object v0, Lcom/avast/android/mobilesecurity/filebrowser/h;->h:Lcom/avast/android/mobilesecurity/filebrowser/i;

    .line 142
    sget-object v0, Lcom/avast/android/mobilesecurity/filebrowser/h;->h:Lcom/avast/android/mobilesecurity/filebrowser/i;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/filebrowser/i;->start()V

    .line 144
    :cond_2
    monitor-exit v1

    .line 145
    return-void

    .line 144
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private o()Z
    .locals 1

    .prologue
    .line 388
    iget-boolean v0, p0, Lcom/avast/android/mobilesecurity/filebrowser/h;->m:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avast/android/mobilesecurity/filebrowser/h;->j:Ljava/io/File;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/avast/android/generic/filebrowser/g;)Ljava/lang/Long;
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 368
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/filebrowser/h;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 379
    :goto_0
    return-object v0

    .line 371
    :cond_0
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/filebrowser/h;->o:Ljava/lang/Long;

    if-eqz v1, :cond_2

    .line 372
    :cond_1
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/filebrowser/h;->o:Ljava/lang/Long;

    goto :goto_0

    .line 374
    :cond_2
    monitor-enter p0

    .line 375
    :try_start_0
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/filebrowser/h;->q:Lcom/avast/android/generic/filebrowser/g;

    .line 376
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 377
    sget-object v1, Lcom/avast/android/mobilesecurity/filebrowser/h;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/filebrowser/h;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    .line 376
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public a(Lcom/avast/android/generic/filebrowser/h;)Ljava/lang/Long;
    .locals 2
    .parameter

    .prologue
    .line 352
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/filebrowser/h;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/filebrowser/h;->j:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 363
    :goto_0
    return-object v0

    .line 355
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/avast/android/mobilesecurity/filebrowser/h;->n:Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 356
    :cond_1
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/filebrowser/h;->n:Ljava/lang/Long;

    goto :goto_0

    .line 358
    :cond_2
    monitor-enter p0

    .line 359
    :try_start_0
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/filebrowser/h;->p:Lcom/avast/android/generic/filebrowser/h;

    .line 360
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 361
    sget-object v0, Lcom/avast/android/mobilesecurity/filebrowser/h;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/filebrowser/h;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 363
    const/4 v0, 0x0

    goto :goto_0

    .line 360
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public a()Ljava/lang/String;
    .locals 4

    .prologue
    .line 222
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/filebrowser/h;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    const-string v0, "STORAGE"

    .line 235
    :goto_0
    return-object v0

    .line 225
    :cond_0
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/filebrowser/h;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 226
    const/4 v0, 0x0

    .line 227
    sget-object v1, Lcom/avast/android/mobilesecurity/filebrowser/h;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    .line 228
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 229
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 230
    iget-object v3, p0, Lcom/avast/android/mobilesecurity/filebrowser/h;->j:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "STORAGE #"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 228
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 235
    :cond_2
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/filebrowser/h;->j:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 240
    iget-boolean v0, p0, Lcom/avast/android/mobilesecurity/filebrowser/h;->m:Z

    if-eqz v0, :cond_0

    .line 241
    const-string v0, "ROOT_PATH"

    .line 243
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/filebrowser/h;->j:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 4

    .prologue
    .line 248
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/filebrowser/h;->k:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 249
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/filebrowser/h;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    const-string v0, ""

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/filebrowser/h;->k:Ljava/lang/String;

    .line 251
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/filebrowser/h;->k:Ljava/lang/String;

    .line 267
    :goto_0
    return-object v0

    .line 253
    :cond_0
    const/4 v0, 0x0

    .line 254
    sget-object v1, Lcom/avast/android/mobilesecurity/filebrowser/h;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    .line 255
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 256
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 257
    iget-object v3, p0, Lcom/avast/android/mobilesecurity/filebrowser/h;->j:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 258
    iget-object v3, p0, Lcom/avast/android/mobilesecurity/filebrowser/h;->j:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/filebrowser/h;->k:Ljava/lang/String;

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "STORAGE #"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/filebrowser/h;->k:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/filebrowser/h;->k:Ljava/lang/String;

    .line 255
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 267
    :cond_2
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/filebrowser/h;->k:Ljava/lang/String;

    goto :goto_0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 280
    iget-boolean v0, p0, Lcom/avast/android/mobilesecurity/filebrowser/h;->m:Z

    if-eqz v0, :cond_0

    .line 281
    const/4 v0, 0x0

    .line 283
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/filebrowser/h;->j:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    goto :goto_0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 272
    iget-boolean v0, p0, Lcom/avast/android/mobilesecurity/filebrowser/h;->m:Z

    if-eqz v0, :cond_0

    .line 273
    const/4 v0, 0x1

    .line 275
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/filebrowser/h;->j:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    goto :goto_0
.end method

.method public f()J
    .locals 2

    .prologue
    .line 288
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/filebrowser/h;->j:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    return-wide v0
.end method

.method public g()[Lcom/avast/android/generic/filebrowser/f;
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 318
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/filebrowser/h;->e()Z

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    .line 339
    :goto_0
    return-object v0

    .line 321
    :cond_0
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/filebrowser/h;->l:[Lcom/avast/android/generic/filebrowser/f;

    if-eqz v2, :cond_1

    .line 322
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/filebrowser/h;->l:[Lcom/avast/android/generic/filebrowser/f;

    goto :goto_0

    .line 324
    :cond_1
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/filebrowser/h;->o()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 325
    sget-object v1, Lcom/avast/android/mobilesecurity/filebrowser/h;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/avast/android/mobilesecurity/filebrowser/h;

    iput-object v1, p0, Lcom/avast/android/mobilesecurity/filebrowser/h;->l:[Lcom/avast/android/generic/filebrowser/f;

    move v1, v0

    .line 326
    :goto_1
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/filebrowser/h;->l:[Lcom/avast/android/generic/filebrowser/f;

    array-length v0, v0

    if-ge v1, v0, :cond_2

    .line 327
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/filebrowser/h;->l:[Lcom/avast/android/generic/filebrowser/f;

    sget-object v0, Lcom/avast/android/mobilesecurity/filebrowser/h;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/filebrowser/h;->a(Ljava/lang/String;)Lcom/avast/android/mobilesecurity/filebrowser/h;

    move-result-object v0

    aput-object v0, v2, v1

    .line 326
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 329
    :cond_2
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/filebrowser/h;->l:[Lcom/avast/android/generic/filebrowser/f;

    goto :goto_0

    .line 331
    :cond_3
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/filebrowser/h;->j:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 332
    if-nez v2, :cond_4

    move-object v0, v1

    .line 333
    goto :goto_0

    .line 335
    :cond_4
    array-length v1, v2

    new-array v1, v1, [Lcom/avast/android/generic/filebrowser/f;

    .line 336
    :goto_2
    array-length v3, v2

    if-ge v0, v3, :cond_5

    .line 337
    aget-object v3, v2, v0

    invoke-static {v3}, Lcom/avast/android/mobilesecurity/filebrowser/h;->a(Ljava/io/File;)Lcom/avast/android/mobilesecurity/filebrowser/h;

    move-result-object v3

    aput-object v3, v1, v0

    .line 336
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    move-object v0, v1

    .line 339
    goto :goto_0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 344
    iget-boolean v0, p0, Lcom/avast/android/mobilesecurity/filebrowser/h;->m:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/filebrowser/h;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 345
    :cond_0
    const/4 v0, 0x0

    .line 347
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

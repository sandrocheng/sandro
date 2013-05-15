.class public Lcom/avast/android/mobilesecurity/engine/internal/o;
.super Ljava/lang/Object;
.source "Synchronizer.java"


# static fields
.field private static final a:I

.field private static b:Ljava/util/concurrent/Semaphore;

.field private static c:Ljava/util/concurrent/Semaphore;

.field private static d:Ljava/lang/Object;

.field private static e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static g:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 80
    const v0, 0x7fffffff

    sput v0, Lcom/avast/android/mobilesecurity/engine/internal/o;->a:I

    .line 81
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/internal/o;->d:Ljava/lang/Object;

    .line 82
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/internal/o;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 83
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/internal/o;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 84
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/internal/o;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 85
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v2, v2}, Ljava/util/concurrent/Semaphore;-><init>(IZ)V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/internal/o;->c:Ljava/util/concurrent/Semaphore;

    .line 86
    new-instance v0, Ljava/util/concurrent/Semaphore;

    sget v1, Lcom/avast/android/mobilesecurity/engine/internal/o;->a:I

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/Semaphore;-><init>(IZ)V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/internal/o;->b:Ljava/util/concurrent/Semaphore;

    .line 87
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/avast/android/mobilesecurity/engine/r;)Lcom/avast/android/mobilesecurity/engine/af;
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    const-wide/16 v5, 0x64

    const/4 v4, 0x0

    .line 141
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/internal/o;->c:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquireUninterruptibly()V

    .line 142
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/internal/o;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 143
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/af;

    invoke-direct {v0}, Lcom/avast/android/mobilesecurity/engine/af;-><init>()V

    .line 144
    iput-object v7, v0, Lcom/avast/android/mobilesecurity/engine/af;->b:Lcom/avast/android/mobilesecurity/engine/al;

    .line 146
    invoke-static {p0}, Lcom/avast/android/mobilesecurity/engine/internal/y;->a(Landroid/content/Context;)Lcom/avast/android/mobilesecurity/engine/ad;

    move-result-object v1

    .line 149
    invoke-static {p0, v7, v1, v7}, Lcom/avast/android/mobilesecurity/engine/internal/c;->a(Landroid/content/Context;Ljava/lang/Integer;Lcom/avast/android/mobilesecurity/engine/ad;Landroid/os/Bundle;)Z

    .line 151
    if-eqz p1, :cond_0

    .line 152
    const-wide/16 v2, 0xa

    invoke-interface {p1, v2, v3, v5, v6}, Lcom/avast/android/mobilesecurity/engine/r;->a(JJ)V

    .line 154
    :cond_0
    sget-object v2, Lcom/avast/android/mobilesecurity/engine/ae;->a:Lcom/avast/android/mobilesecurity/engine/ae;

    iget-object v3, v1, Lcom/avast/android/mobilesecurity/engine/ad;->a:Lcom/avast/android/mobilesecurity/engine/ae;

    invoke-virtual {v2, v3}, Lcom/avast/android/mobilesecurity/engine/ae;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 156
    sget-object v2, Lcom/avast/android/mobilesecurity/engine/internal/o;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 157
    sget-object v2, Lcom/avast/android/mobilesecurity/engine/internal/o;->c:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    .line 159
    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/internal/y;->b()I

    move-result v2

    iput v2, v0, Lcom/avast/android/mobilesecurity/engine/af;->c:I

    .line 160
    sget-object v2, Lcom/avast/android/mobilesecurity/engine/internal/p;->a:[I

    iget-object v1, v1, Lcom/avast/android/mobilesecurity/engine/ad;->a:Lcom/avast/android/mobilesecurity/engine/ae;

    invoke-virtual {v1}, Lcom/avast/android/mobilesecurity/engine/ae;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 171
    sget-object v1, Lcom/avast/android/mobilesecurity/engine/ag;->d:Lcom/avast/android/mobilesecurity/engine/ag;

    iput-object v1, v0, Lcom/avast/android/mobilesecurity/engine/af;->a:Lcom/avast/android/mobilesecurity/engine/ag;

    .line 272
    :goto_0
    return-object v0

    .line 162
    :pswitch_0
    sget-object v1, Lcom/avast/android/mobilesecurity/engine/ag;->a:Lcom/avast/android/mobilesecurity/engine/ag;

    iput-object v1, v0, Lcom/avast/android/mobilesecurity/engine/af;->a:Lcom/avast/android/mobilesecurity/engine/ag;

    goto :goto_0

    .line 165
    :pswitch_1
    sget-object v1, Lcom/avast/android/mobilesecurity/engine/ag;->c:Lcom/avast/android/mobilesecurity/engine/ag;

    iput-object v1, v0, Lcom/avast/android/mobilesecurity/engine/af;->a:Lcom/avast/android/mobilesecurity/engine/ag;

    goto :goto_0

    .line 168
    :pswitch_2
    sget-object v1, Lcom/avast/android/mobilesecurity/engine/ag;->f:Lcom/avast/android/mobilesecurity/engine/ag;

    iput-object v1, v0, Lcom/avast/android/mobilesecurity/engine/af;->a:Lcom/avast/android/mobilesecurity/engine/ag;

    goto :goto_0

    .line 179
    :cond_1
    :try_start_0
    iget-object v1, v1, Lcom/avast/android/mobilesecurity/engine/ad;->b:Ljava/lang/String;

    invoke-static {p0, v1, p1}, Lcom/avast/android/mobilesecurity/engine/internal/y;->a(Landroid/content/Context;Ljava/lang/String;Lcom/avast/android/mobilesecurity/engine/r;)Ljava/io/File;
    :try_end_0
    .catch Lorg/apache/http/HttpException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 189
    if-eqz p1, :cond_2

    .line 190
    const-wide/16 v2, 0x3c

    invoke-interface {p1, v2, v3, v5, v6}, Lcom/avast/android/mobilesecurity/engine/r;->a(JJ)V

    .line 192
    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_4

    .line 193
    :cond_3
    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/internal/y;->b()I

    move-result v1

    iput v1, v0, Lcom/avast/android/mobilesecurity/engine/af;->c:I

    .line 194
    sget-object v1, Lcom/avast/android/mobilesecurity/engine/ag;->e:Lcom/avast/android/mobilesecurity/engine/ag;

    iput-object v1, v0, Lcom/avast/android/mobilesecurity/engine/af;->a:Lcom/avast/android/mobilesecurity/engine/ag;

    .line 195
    invoke-static {p0}, Lcom/avast/android/mobilesecurity/engine/internal/y;->c(Landroid/content/Context;)V

    .line 196
    sget-object v1, Lcom/avast/android/mobilesecurity/engine/internal/o;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 197
    sget-object v1, Lcom/avast/android/mobilesecurity/engine/internal/o;->c:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_0

    .line 181
    :catch_0
    move-exception v1

    .line 182
    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/internal/y;->b()I

    move-result v1

    iput v1, v0, Lcom/avast/android/mobilesecurity/engine/af;->c:I

    .line 183
    sget-object v1, Lcom/avast/android/mobilesecurity/engine/ag;->d:Lcom/avast/android/mobilesecurity/engine/ag;

    iput-object v1, v0, Lcom/avast/android/mobilesecurity/engine/af;->a:Lcom/avast/android/mobilesecurity/engine/ag;

    .line 184
    invoke-static {p0}, Lcom/avast/android/mobilesecurity/engine/internal/y;->c(Landroid/content/Context;)V

    .line 185
    sget-object v1, Lcom/avast/android/mobilesecurity/engine/internal/o;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 186
    sget-object v1, Lcom/avast/android/mobilesecurity/engine/internal/o;->c:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_0

    .line 202
    :cond_4
    invoke-static {p0, v1}, Lcom/avast/android/mobilesecurity/engine/internal/y;->b(Landroid/content/Context;Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 203
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 204
    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/internal/y;->b()I

    move-result v1

    iput v1, v0, Lcom/avast/android/mobilesecurity/engine/af;->c:I

    .line 205
    sget-object v1, Lcom/avast/android/mobilesecurity/engine/ag;->f:Lcom/avast/android/mobilesecurity/engine/ag;

    iput-object v1, v0, Lcom/avast/android/mobilesecurity/engine/af;->a:Lcom/avast/android/mobilesecurity/engine/ag;

    .line 206
    invoke-static {p0}, Lcom/avast/android/mobilesecurity/engine/internal/y;->c(Landroid/content/Context;)V

    .line 207
    sget-object v1, Lcom/avast/android/mobilesecurity/engine/internal/o;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 208
    sget-object v1, Lcom/avast/android/mobilesecurity/engine/internal/o;->c:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_0

    .line 211
    :cond_5
    if-eqz p1, :cond_6

    .line 212
    const-wide/16 v2, 0x46

    invoke-interface {p1, v2, v3, v5, v6}, Lcom/avast/android/mobilesecurity/engine/r;->a(JJ)V

    .line 221
    :cond_6
    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/internal/y;->a()Z

    move-result v2

    if-nez v2, :cond_7

    .line 222
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 223
    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/internal/y;->b()I

    move-result v1

    iput v1, v0, Lcom/avast/android/mobilesecurity/engine/af;->c:I

    .line 224
    sget-object v1, Lcom/avast/android/mobilesecurity/engine/ag;->f:Lcom/avast/android/mobilesecurity/engine/ag;

    iput-object v1, v0, Lcom/avast/android/mobilesecurity/engine/af;->a:Lcom/avast/android/mobilesecurity/engine/ag;

    .line 225
    invoke-static {p0}, Lcom/avast/android/mobilesecurity/engine/internal/y;->c(Landroid/content/Context;)V

    .line 226
    sget-object v1, Lcom/avast/android/mobilesecurity/engine/internal/o;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 227
    sget-object v1, Lcom/avast/android/mobilesecurity/engine/internal/o;->c:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    goto/16 :goto_0

    .line 230
    :cond_7
    if-eqz p1, :cond_8

    .line 231
    const-wide/16 v2, 0x50

    invoke-interface {p1, v2, v3, v5, v6}, Lcom/avast/android/mobilesecurity/engine/r;->a(JJ)V

    .line 238
    :cond_8
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/internal/o;->b:Ljava/util/concurrent/Semaphore;

    sget v2, Lcom/avast/android/mobilesecurity/engine/internal/o;->a:I

    invoke-virtual {v0, v2}, Ljava/util/concurrent/Semaphore;->acquireUninterruptibly(I)V

    .line 240
    invoke-static {p0, v1}, Lcom/avast/android/mobilesecurity/engine/internal/y;->a(Landroid/content/Context;Ljava/io/File;)Lcom/avast/android/mobilesecurity/engine/af;

    move-result-object v1

    .line 241
    if-eqz p1, :cond_9

    .line 242
    const-wide/16 v2, 0x5a

    invoke-interface {p1, v2, v3, v5, v6}, Lcom/avast/android/mobilesecurity/engine/r;->a(JJ)V

    .line 244
    :cond_9
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/ag;->b:Lcom/avast/android/mobilesecurity/engine/ag;

    iget-object v2, v1, Lcom/avast/android/mobilesecurity/engine/af;->a:Lcom/avast/android/mobilesecurity/engine/ag;

    invoke-virtual {v0, v2}, Lcom/avast/android/mobilesecurity/engine/ag;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 246
    invoke-static {p0}, Lcom/avast/android/mobilesecurity/engine/internal/y;->b(Landroid/content/Context;)Z

    .line 247
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 248
    sget-object v2, Lcom/avast/android/mobilesecurity/engine/internal/vps/c;->b:Lcom/avast/android/mobilesecurity/engine/internal/vps/c;

    invoke-virtual {v2}, Lcom/avast/android/mobilesecurity/engine/internal/vps/c;->a()S

    move-result v2

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/al;->a()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    sget-object v2, Lcom/avast/android/mobilesecurity/engine/internal/vps/c;->c:Lcom/avast/android/mobilesecurity/engine/internal/vps/c;

    invoke-virtual {v2}, Lcom/avast/android/mobilesecurity/engine/internal/vps/c;->a()S

    move-result v2

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-virtual {v0, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    sget-object v2, Lcom/avast/android/mobilesecurity/engine/internal/x;->h:Lcom/avast/android/mobilesecurity/engine/internal/x;

    invoke-static {p0, v2, v0}, Lcom/avast/android/mobilesecurity/engine/internal/s;->a(Landroid/content/Context;Lcom/avast/android/mobilesecurity/engine/internal/x;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/engine/al;->a([B)Ljava/util/List;

    move-result-object v0

    .line 257
    iput-object v7, v1, Lcom/avast/android/mobilesecurity/engine/af;->b:Lcom/avast/android/mobilesecurity/engine/al;

    .line 258
    if-eqz v0, :cond_a

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_a

    .line 259
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/engine/al;

    iput-object v0, v1, Lcom/avast/android/mobilesecurity/engine/af;->b:Lcom/avast/android/mobilesecurity/engine/al;

    .line 263
    :cond_a
    invoke-static {p0}, Lcom/avast/android/mobilesecurity/engine/internal/y;->c(Landroid/content/Context;)V

    .line 264
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/internal/o;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 265
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/internal/o;->b:Ljava/util/concurrent/Semaphore;

    sget v2, Lcom/avast/android/mobilesecurity/engine/internal/o;->a:I

    invoke-virtual {v0, v2}, Ljava/util/concurrent/Semaphore;->release(I)V

    .line 266
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/internal/o;->c:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 268
    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/internal/y;->b()I

    move-result v0

    iput v0, v1, Lcom/avast/android/mobilesecurity/engine/af;->c:I

    .line 269
    if-eqz p1, :cond_b

    .line 270
    invoke-interface {p1, v5, v6, v5, v6}, Lcom/avast/android/mobilesecurity/engine/r;->a(JJ)V

    :cond_b
    move-object v0, v1

    .line 272
    goto/16 :goto_0

    .line 160
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static a()V
    .locals 3

    .prologue
    .line 97
    sget-object v1, Lcom/avast/android/mobilesecurity/engine/internal/o;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 98
    :try_start_0
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/internal/o;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 99
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/internal/o;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 100
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/internal/o;->b:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquireUninterruptibly()V

    .line 102
    return-void

    .line 100
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static b()V
    .locals 3

    .prologue
    .line 112
    sget-object v1, Lcom/avast/android/mobilesecurity/engine/internal/o;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 113
    :try_start_0
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/internal/o;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    .line 114
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/internal/o;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 116
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/internal/o;->b:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 118
    return-void

    .line 116
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

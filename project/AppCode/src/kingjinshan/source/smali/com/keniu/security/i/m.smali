.class final Lcom/keniu/security/i/m;
.super Ljava/lang/Thread;
.source "FileOpenWatcher.java"


# instance fields
.field a:Ljava/lang/Runnable;

.field final synthetic b:Lcom/keniu/security/i/l;

.field private c:Landroid/os/Handler;

.field private d:Landroid/os/Looper;

.field private e:Ljava/lang/Process;

.field private f:Ljava/io/BufferedReader;


# direct methods
.method constructor <init>(Lcom/keniu/security/i/l;)V
    .locals 1
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, Lcom/keniu/security/i/m;->b:Lcom/keniu/security/i/l;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 254
    new-instance v0, Lcom/keniu/security/i/n;

    invoke-direct {v0, p0}, Lcom/keniu/security/i/n;-><init>(Lcom/keniu/security/i/m;)V

    iput-object v0, p0, Lcom/keniu/security/i/m;->a:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/keniu/security/i/m;)Ljava/io/BufferedReader;
    .locals 1
    .parameter

    .prologue
    .line 111
    iget-object v0, p0, Lcom/keniu/security/i/m;->f:Ljava/io/BufferedReader;

    return-object v0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/Process;
    .locals 2
    .parameter

    .prologue
    .line 120
    const/4 v0, 0x0

    .line 121
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    .line 125
    :try_start_0
    invoke-virtual {v1, p0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 132
    :goto_0
    return-object v0

    .line 127
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/keniu/security/i/m;Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v2, -0x1

    .line 111
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "starting"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "start"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    const-string v0, "cmp="

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v2, :cond_4

    add-int/lit8 v0, v0, 0x4

    const/16 v1, 0x2f

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-eq v1, v2, :cond_4

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/keniu/security/i/m;->b:Lcom/keniu/security/i/l;

    invoke-static {v0}, Lcom/keniu/security/i/l;->a(Lcom/keniu/security/i/l;)Landroid/app/ActivityManager;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/keniu/security/i/m;->b:Lcom/keniu/security/i/l;

    invoke-static {v1}, Lcom/keniu/security/i/l;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/keniu/security/i/m;->b:Lcom/keniu/security/i/l;

    invoke-static {v0}, Lcom/keniu/security/i/l;->b(Lcom/keniu/security/i/l;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/keniu/security/i/m;->b:Lcom/keniu/security/i/l;

    invoke-static {v0}, Lcom/keniu/security/i/l;->c(Lcom/keniu/security/i/l;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/keniu/security/i/m;->b:Lcom/keniu/security/i/l;

    invoke-static {v0}, Lcom/keniu/security/i/l;->d(Lcom/keniu/security/i/l;)Z

    :cond_1
    const/4 v3, 0x0

    iget-object v0, p0, Lcom/keniu/security/i/m;->b:Lcom/keniu/security/i/l;

    invoke-static {v0}, Lcom/keniu/security/i/l;->c(Lcom/keniu/security/i/l;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :goto_0
    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/keniu/security/i/m;->b:Lcom/keniu/security/i/l;

    invoke-static {v0}, Lcom/keniu/security/i/l;->c(Lcom/keniu/security/i/l;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v3, 0x32

    if-lt v0, v3, :cond_3

    iget-object v0, p0, Lcom/keniu/security/i/m;->b:Lcom/keniu/security/i/l;

    invoke-static {v0}, Lcom/keniu/security/i/l;->c(Lcom/keniu/security/i/l;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_3
    iget-object v0, p0, Lcom/keniu/security/i/m;->b:Lcom/keniu/security/i/l;

    invoke-static {v0}, Lcom/keniu/security/i/l;->c(Lcom/keniu/security/i/l;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/keniu/security/i/m;->b:Lcom/keniu/security/i/l;

    iget-object v0, v0, Lcom/keniu/security/i/l;->e:Lcom/keniu/security/i/t;

    iget-object v2, p0, Lcom/keniu/security/i/m;->b:Lcom/keniu/security/i/l;

    const/4 v3, 0x7

    invoke-virtual {v0, v2, v3, v1}, Lcom/keniu/security/i/t;->a(Ljava/lang/Object;ILjava/lang/String;)I

    :cond_4
    return-void

    :cond_5
    move-object v0, v3

    goto :goto_0
.end method

.method static synthetic b(Lcom/keniu/security/i/m;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 111
    iget-object v0, p0, Lcom/keniu/security/i/m;->c:Landroid/os/Handler;

    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v2, -0x1

    .line 138
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "starting"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "start"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 140
    :cond_0
    const-string v0, "cmp="

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 141
    if-eq v0, v2, :cond_4

    .line 143
    add-int/lit8 v0, v0, 0x4

    .line 144
    const/16 v1, 0x2f

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 145
    if-eq v1, v2, :cond_4

    .line 147
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 148
    iget-object v0, p0, Lcom/keniu/security/i/m;->b:Lcom/keniu/security/i/l;

    invoke-static {v0}, Lcom/keniu/security/i/l;->a(Lcom/keniu/security/i/l;)Landroid/app/ActivityManager;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 149
    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 151
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/keniu/security/i/m;->b:Lcom/keniu/security/i/l;

    invoke-static {v1}, Lcom/keniu/security/i/l;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 153
    iget-object v0, p0, Lcom/keniu/security/i/m;->b:Lcom/keniu/security/i/l;

    invoke-static {v0}, Lcom/keniu/security/i/l;->b(Lcom/keniu/security/i/l;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 155
    iget-object v0, p0, Lcom/keniu/security/i/m;->b:Lcom/keniu/security/i/l;

    invoke-static {v0}, Lcom/keniu/security/i/l;->c(Lcom/keniu/security/i/l;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 156
    iget-object v0, p0, Lcom/keniu/security/i/m;->b:Lcom/keniu/security/i/l;

    invoke-static {v0}, Lcom/keniu/security/i/l;->d(Lcom/keniu/security/i/l;)Z

    .line 159
    :cond_1
    const/4 v3, 0x0

    .line 160
    iget-object v0, p0, Lcom/keniu/security/i/m;->b:Lcom/keniu/security/i/l;

    invoke-static {v0}, Lcom/keniu/security/i/l;->c(Lcom/keniu/security/i/l;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 162
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 169
    :goto_0
    if-nez v0, :cond_4

    .line 171
    iget-object v0, p0, Lcom/keniu/security/i/m;->b:Lcom/keniu/security/i/l;

    invoke-static {v0}, Lcom/keniu/security/i/l;->c(Lcom/keniu/security/i/l;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v3, 0x32

    if-lt v0, v3, :cond_3

    .line 174
    iget-object v0, p0, Lcom/keniu/security/i/m;->b:Lcom/keniu/security/i/l;

    invoke-static {v0}, Lcom/keniu/security/i/l;->c(Lcom/keniu/security/i/l;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 177
    :cond_3
    iget-object v0, p0, Lcom/keniu/security/i/m;->b:Lcom/keniu/security/i/l;

    invoke-static {v0}, Lcom/keniu/security/i/l;->c(Lcom/keniu/security/i/l;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    iget-object v0, p0, Lcom/keniu/security/i/m;->b:Lcom/keniu/security/i/l;

    iget-object v0, v0, Lcom/keniu/security/i/l;->e:Lcom/keniu/security/i/t;

    iget-object v2, p0, Lcom/keniu/security/i/m;->b:Lcom/keniu/security/i/l;

    const/4 v3, 0x7

    invoke-virtual {v0, v2, v3, v1}, Lcom/keniu/security/i/t;->a(Ljava/lang/Object;ILjava/lang/String;)I

    .line 188
    :cond_4
    return-void

    :cond_5
    move-object v0, v3

    goto :goto_0
.end method

.method private b()Z
    .locals 3

    .prologue
    .line 193
    const-string v0, "logcat -c"

    invoke-static {v0}, Lcom/keniu/security/i/m;->a(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/i/m;->e:Ljava/lang/Process;

    .line 195
    const-string v0, "logcat -v raw ActivityManager:I *:S"

    invoke-static {v0}, Lcom/keniu/security/i/m;->a(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/i/m;->e:Ljava/lang/Process;

    .line 196
    iget-object v0, p0, Lcom/keniu/security/i/m;->e:Ljava/lang/Process;

    if-eqz v0, :cond_0

    .line 199
    :try_start_0
    iget-object v0, p0, Lcom/keniu/security/i/m;->e:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 204
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 205
    new-instance v0, Ljava/io/BufferedReader;

    const/16 v2, 0x400

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    iput-object v0, p0, Lcom/keniu/security/i/m;->f:Ljava/io/BufferedReader;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/keniu/security/i/m;->f:Ljava/io/BufferedReader;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 207
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 213
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private c()V
    .locals 1

    .prologue
    .line 220
    :try_start_0
    iget-object v0, p0, Lcom/keniu/security/i/m;->e:Ljava/lang/Process;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/keniu/security/i/m;->e:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    .line 223
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/keniu/security/i/m;->e:Ljava/lang/Process;

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/i/m;->f:Ljava/io/BufferedReader;

    if-eqz v0, :cond_1

    .line 228
    iget-object v0, p0, Lcom/keniu/security/i/m;->f:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 229
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/keniu/security/i/m;->f:Ljava/io/BufferedReader;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    :cond_1
    :goto_0
    return-void

    .line 232
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 281
    iget-object v0, p0, Lcom/keniu/security/i/m;->d:Landroid/os/Looper;

    if-eqz v0, :cond_2

    .line 283
    :try_start_0
    iget-object v0, p0, Lcom/keniu/security/i/m;->e:Ljava/lang/Process;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/keniu/security/i/m;->e:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/keniu/security/i/m;->e:Ljava/lang/Process;

    :cond_0
    iget-object v0, p0, Lcom/keniu/security/i/m;->f:Ljava/io/BufferedReader;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/keniu/security/i/m;->f:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/keniu/security/i/m;->f:Ljava/io/BufferedReader;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/keniu/security/i/m;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/keniu/security/i/m;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 285
    iget-object v0, p0, Lcom/keniu/security/i/m;->d:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 289
    :try_start_1
    invoke-virtual {p0}, Lcom/keniu/security/i/m;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 296
    :cond_2
    :goto_1
    return-void

    .line 283
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 291
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method

.method public final run()V
    .locals 4

    .prologue
    .line 241
    invoke-direct {p0}, Lcom/keniu/security/i/m;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 245
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/i/m;->d:Landroid/os/Looper;

    .line 246
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/keniu/security/i/m;->c:Landroid/os/Handler;

    .line 248
    iget-object v0, p0, Lcom/keniu/security/i/m;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/keniu/security/i/m;->a:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 250
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 252
    :cond_0
    return-void
.end method

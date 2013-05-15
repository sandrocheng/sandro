.class public Lcom/avast/android/mobilesecurity/app/manager/a/b;
.super Ljava/lang/Object;
.source "AppsInfoProvider.java"


# instance fields
.field final a:Ljava/util/regex/Pattern;

.field final b:Ljava/util/Map;

.field private c:Landroid/content/pm/PackageManager;

.field private d:Landroid/app/ActivityManager;

.field private e:Z

.field private f:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/manager/a/b;->e:Z

    .line 46
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/a/b;->f:Ljava/util/concurrent/locks/ReentrantLock;

    .line 152
    const-string v0, "([0-9]+).*?([0-9]+)%"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/a/b;->a:Ljava/util/regex/Pattern;

    .line 153
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/a/b;->b:Ljava/util/Map;

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/a/b;->c:Landroid/content/pm/PackageManager;

    .line 50
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/a/b;->d:Landroid/app/ActivityManager;

    .line 51
    return-void
.end method

.method private b()V
    .locals 5

    .prologue
    .line 200
    :try_start_0
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/a/b;->f:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 201
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const-string v1, "top -s cpu -n 1"

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 202
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 205
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 206
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/manager/a/b;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 207
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 208
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/manager/a/b;->b:Ljava/util/Map;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 211
    :catch_0
    move-exception v0

    .line 212
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/avast/android/generic/util/m;->b(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 216
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/a/b;->f:Ljava/util/concurrent/locks/ReentrantLock;

    :goto_1
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 218
    return-void

    .line 213
    :catch_1
    move-exception v0

    .line 214
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/avast/android/generic/util/m;->b(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 216
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/a/b;->f:Ljava/util/concurrent/locks/ReentrantLock;

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/manager/a/b;->f:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/a/b;->f:Ljava/util/concurrent/locks/ReentrantLock;

    goto :goto_1
.end method


# virtual methods
.method public a(I)J
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 60
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/a/b;->d:Landroid/app/ActivityManager;

    const/4 v1, 0x1

    new-array v1, v1, [I

    aput p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v0

    .line 61
    aget-object v0, v0, v2

    .line 62
    iget v1, v0, Landroid/os/Debug$MemoryInfo;->dalvikPrivateDirty:I

    iget v2, v0, Landroid/os/Debug$MemoryInfo;->nativePrivateDirty:I

    add-int/2addr v1, v2

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->otherPrivateDirty:I

    add-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0
.end method

.method public a(Ljava/lang/String;)J
    .locals 2
    .parameter

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/avast/android/mobilesecurity/app/manager/a/b;->a(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)J
    .locals 12
    .parameter
    .parameter

    .prologue
    const-wide/16 v10, -0x1

    const-wide/16 v8, 0x0

    const/4 v7, 0x1

    .line 92
    new-instance v1, Lcom/avast/android/mobilesecurity/app/manager/a/d;

    invoke-direct {v1, p0, v10, v11}, Lcom/avast/android/mobilesecurity/app/manager/a/d;-><init>(Lcom/avast/android/mobilesecurity/app/manager/a/b;J)V

    .line 95
    iget-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/manager/a/b;->e:Z

    if-nez v0, :cond_0

    .line 97
    :try_start_0
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/a/b;->c:Landroid/content/pm/PackageManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "getPackageSizeInfo"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Landroid/a/a/a;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 99
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/manager/a/b;->c:Landroid/content/pm/PackageManager;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    new-instance v5, Lcom/avast/android/mobilesecurity/app/manager/a/c;

    invoke-direct {v5, p0, v1}, Lcom/avast/android/mobilesecurity/app/manager/a/c;-><init>(Lcom/avast/android/mobilesecurity/app/manager/a/b;Lcom/avast/android/mobilesecurity/app/manager/a/d;)V

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    :goto_0
    iget-wide v2, v1, Lcom/avast/android/mobilesecurity/app/manager/a/d;->a:J

    cmp-long v0, v2, v8

    if-gez v0, :cond_0

    .line 111
    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 112
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 113
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 116
    :catch_0
    move-exception v0

    .line 117
    const-string v0, "This phone doesn\'t support getPackageSizeInfo() method, fallback will be used"

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->d(Ljava/lang/String;)I

    .line 119
    :try_start_3
    invoke-static {}, Lcom/avast/android/generic/util/ga/a;->a()Lcom/google/analytics/tracking/android/bo;

    move-result-object v0

    const-string v2, "ms-error"

    const-string v3, "noGetPackageSize"

    const-string v4, ""

    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v0, v2, v3, v4, v5}, Lcom/google/analytics/tracking/android/bo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 122
    :goto_1
    iput-boolean v7, p0, Lcom/avast/android/mobilesecurity/app/manager/a/b;->e:Z

    .line 128
    :cond_0
    :goto_2
    iget-wide v2, v1, Lcom/avast/android/mobilesecurity/app/manager/a/d;->a:J

    cmp-long v0, v2, v8

    if-gez v0, :cond_2

    .line 130
    if-nez p2, :cond_1

    .line 131
    :try_start_4
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/a/b;->c:Landroid/content/pm/PackageManager;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object p2, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 133
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/avast/android/mobilesecurity/app/manager/a/d;->a:J
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 139
    :cond_2
    :goto_3
    iget-wide v0, v1, Lcom/avast/android/mobilesecurity/app/manager/a/d;->a:J

    return-wide v0

    .line 123
    :catch_1
    move-exception v0

    .line 124
    invoke-static {}, La/a/a/a/a/a;->a()La/a/a/a/a/a;

    move-result-object v2

    const-string v3, "Unknows error in getPackageSizeInfo() method"

    invoke-virtual {v2, v3, v0}, La/a/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 134
    :catch_2
    move-exception v0

    .line 135
    iput-wide v10, v1, Lcom/avast/android/mobilesecurity/app/manager/a/d;->a:J

    goto :goto_3

    .line 120
    :catch_3
    move-exception v0

    goto :goto_1
.end method

.method public a()V
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/a/b;->f:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    :try_start_0
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/a/b;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 188
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/manager/a/b;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/a/b;->f:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 193
    :cond_0
    return-void

    .line 190
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/manager/a/b;->f:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public b(I)I
    .locals 2
    .parameter

    .prologue
    .line 162
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/a/b;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 163
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/a/b;->f:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 165
    :try_start_0
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/a/b;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 166
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/manager/a/b;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/a/b;->f:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 173
    :cond_1
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/a/b;->b:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 174
    if-eqz v0, :cond_2

    .line 175
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 177
    :goto_0
    return v0

    .line 169
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/manager/a/b;->f:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    .line 177
    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

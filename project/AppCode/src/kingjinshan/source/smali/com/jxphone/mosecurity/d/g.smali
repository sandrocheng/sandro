.class public final Lcom/jxphone/mosecurity/d/g;
.super Ljava/lang/Object;
.source "ExceptionUtils.java"


# static fields
.field private static final a:Ljava/lang/String; = "logcat -d -v time -s *:e"

.field private static final b:Ljava/lang/String; = "mosecurity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 19
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const-string v1, "logcat -d -v time -s *:e"

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    .line 21
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    if-eqz v1, :cond_1

    .line 37
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    :cond_0
    move-object v0, v5

    .line 38
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    .line 24
    :cond_1
    :try_start_2
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v3, 0x40

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 25
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x100

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 27
    :goto_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 28
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 37
    :catchall_0
    move-exception v2

    move-object v6, v2

    move-object v2, v0

    move-object v0, v6

    :goto_2
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 38
    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    :cond_3
    throw v0

    .line 31
    :cond_4
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_6

    const-string v3, "mosecurity"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_6

    .line 32
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v2

    .line 37
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 38
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    :cond_5
    move-object v0, v2

    goto :goto_0

    .line 34
    :cond_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 38
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    :cond_7
    move-object v0, v5

    goto :goto_0

    .line 37
    :catchall_1
    move-exception v0

    move-object v1, v5

    move-object v2, v5

    goto :goto_2

    :catchall_2
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    move-object v1, v5

    goto :goto_2
.end method

.method private static b()V
    .locals 2

    .prologue
    .line 43
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const-string v1, "logcat -c"

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 45
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    .line 50
    :goto_0
    return-void

    .line 49
    :catch_0
    move-exception v1

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    throw v1
.end method

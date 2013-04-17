.class public final Lcom/tencent/tmsecure/utils/ScriptHelper;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tmsecure/utils/ScriptHelper$Callback;,
        Lcom/tencent/tmsecure/utils/ScriptHelper$a;,
        Lcom/tencent/tmsecure/utils/ScriptHelper$b;
    }
.end annotation


# static fields
.field public static final ROOT_GOT:I = 0x0

.field public static final ROOT_GOT_ACTION:Ljava/lang/String; = "com.tencent.tmsecure.root"

.field public static final ROOT_NOT_GOT:I = 0x2

.field public static final ROOT_NOT_SUPPORT:I = 0x1

.field public static final ROOT_NO_RESPOND:I = -0x1

.field private static final a:Ljava/lang/String;

.field private static final b:Z

.field private static c:Z

.field private static d:Z

.field private static e:Z

.field private static f:Ljava/lang/Object;

.field private static g:Lay;

.field public static final isSuExist:Z

.field public static sCurrRootState:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/tencent/tmsecure/common/TMSApplication;->getApplicaionContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/tmsecure/utils/ScriptHelper;->a:Ljava/lang/String;

    const-string v0, "/system/bin/su"

    invoke-static {v0}, Lbtd;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "/system/xbin/su"

    invoke-static {v0}, Lbtd;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "/sbin/su"

    invoke-static {v0}, Lbtd;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/tencent/tmsecure/utils/ScriptHelper;->isSuExist:Z

    new-instance v0, Ljava/io/File;

    const-string v3, "/dev/socket/script_socket"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    sput-boolean v0, Lcom/tencent/tmsecure/utils/ScriptHelper;->b:Z

    const/4 v0, 0x2

    sput v0, Lcom/tencent/tmsecure/utils/ScriptHelper;->sCurrRootState:I

    sput-boolean v1, Lcom/tencent/tmsecure/utils/ScriptHelper;->c:Z

    sput-boolean v1, Lcom/tencent/tmsecure/utils/ScriptHelper;->d:Z

    sput-boolean v2, Lcom/tencent/tmsecure/utils/ScriptHelper;->e:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/tencent/tmsecure/utils/ScriptHelper;->f:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/tmsecure/utils/ScriptHelper;->g:Lay;

    return-void

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(I)I
    .locals 7

    const/4 v4, -0x1

    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    sget-boolean v3, Lcom/tencent/tmsecure/utils/ScriptHelper;->b:Z

    if-eqz v3, :cond_0

    sput v0, Lcom/tencent/tmsecure/utils/ScriptHelper;->sCurrRootState:I

    :goto_0
    return v0

    :cond_0
    sget-boolean v3, Lcom/tencent/tmsecure/utils/ScriptHelper;->isSuExist:Z

    if-nez v3, :cond_2

    sget-boolean v2, Lcom/tencent/tmsecure/utils/ScriptHelper;->e:Z

    if-eqz v2, :cond_1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.tencent.tmsecure.root"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/tmsecure/common/TMSApplication;->getApplicaionContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    sput-boolean v1, Lcom/tencent/tmsecure/utils/ScriptHelper;->c:Z

    sput-boolean v0, Lcom/tencent/tmsecure/utils/ScriptHelper;->e:Z

    :cond_1
    sput v1, Lcom/tencent/tmsecure/utils/ScriptHelper;->sCurrRootState:I

    move v0, v1

    goto :goto_0

    :cond_2
    sget-object v3, Lcom/tencent/tmsecure/utils/ScriptHelper;->f:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    sget-boolean v5, Lcom/tencent/tmsecure/utils/ScriptHelper;->d:Z

    if-eqz v5, :cond_3

    const/4 v0, 0x2

    sput v0, Lcom/tencent/tmsecure/utils/ScriptHelper;->sCurrRootState:I

    monitor-exit v3

    move v0, v2

    goto :goto_0

    :cond_3
    const/4 v5, 0x1

    sput-boolean v5, Lcom/tencent/tmsecure/utils/ScriptHelper;->d:Z

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v5, v0

    move v3, v0

    :goto_1
    if-lt v5, p0, :cond_6

    :cond_4
    move v0, v3

    if-nez v0, :cond_5

    sget-boolean v2, Lcom/tencent/tmsecure/utils/ScriptHelper;->c:Z

    if-nez v2, :cond_5

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.tencent.tmsecure.root"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/tmsecure/common/TMSApplication;->getApplicaionContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    sput-boolean v1, Lcom/tencent/tmsecure/utils/ScriptHelper;->c:Z

    :cond_5
    sget-object v1, Lcom/tencent/tmsecure/utils/ScriptHelper;->f:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    :try_start_1
    sput-boolean v2, Lcom/tencent/tmsecure/utils/ScriptHelper;->d:Z

    sput v0, Lcom/tencent/tmsecure/utils/ScriptHelper;->sCurrRootState:I

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    sget v0, Lcom/tencent/tmsecure/utils/ScriptHelper;->sCurrRootState:I

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_6
    new-array v3, v1, [Ljava/lang/String;

    const-string v6, "id"

    aput-object v6, v3, v0

    invoke-static {v3}, Lcom/tencent/tmsecure/utils/ScriptHelper;->runScript([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_7

    move v3, v2

    :goto_2
    if-ne v3, v4, :cond_4

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_7
    const-string v6, "uid=0"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    move v3, v0

    goto :goto_2

    :cond_8
    new-array v3, v1, [Ljava/lang/String;

    const-string v6, "su"

    aput-object v6, v3, v0

    invoke-static {v3}, Lcom/tencent/tmsecure/utils/ScriptHelper;->runScript([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_9

    move v3, v2

    goto :goto_2

    :cond_9
    const-string v6, "Kill"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_a

    const-string v6, "kill"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_b

    :cond_a
    move v3, v4

    goto :goto_2

    :cond_b
    new-array v3, v1, [Ljava/lang/String;

    const-string v6, "id"

    aput-object v6, v3, v0

    invoke-static {v3}, Lcom/tencent/tmsecure/utils/ScriptHelper;->runScript([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_c

    move v3, v2

    goto :goto_2

    :cond_c
    const-string v6, "uid=0"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_d

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v3}, Lcom/tencent/tmsecure/utils/ScriptHelper;->a(Ljava/util/List;)V

    invoke-static {v3}, Lcom/tencent/tmsecure/utils/ScriptHelper;->runScript(Ljava/util/List;)Ljava/lang/String;

    move v3, v0

    goto :goto_2

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_d
    move v3, v2

    goto :goto_2
.end method

.method private static declared-synchronized a(Lcom/tencent/tmsecure/utils/ScriptHelper$a;Z)Lcom/tencent/tmsecure/utils/ScriptHelper$b;
    .locals 12

    const/4 v1, 0x0

    const/4 v11, 0x4

    const-class v4, Lcom/tencent/tmsecure/utils/ScriptHelper;

    monitor-enter v4

    :try_start_0
    new-instance v5, Landroid/net/LocalSocket;

    invoke-direct {v5}, Landroid/net/LocalSocket;-><init>()V

    new-instance v0, Lcom/tencent/tmsecure/utils/ScriptHelper$b;

    invoke-direct {v0}, Lcom/tencent/tmsecure/utils/ScriptHelper$b;-><init>()V

    sget-boolean v2, Lcom/tencent/tmsecure/utils/ScriptHelper;->b:Z

    if-eqz v2, :cond_3

    new-instance v2, Landroid/net/LocalSocketAddress;

    const-string v3, "/dev/socket/script_socket"

    sget-object v6, Landroid/net/LocalSocketAddress$Namespace;->FILESYSTEM:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v2, v3, v6}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    invoke-virtual {v5, v2}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :try_start_2
    invoke-virtual {v5}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_11

    move-result-object v2

    :try_start_3
    invoke-virtual {v5}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_12

    move-result-object v3

    :try_start_4
    iget-object v6, p0, Lcom/tencent/tmsecure/utils/ScriptHelper$a;->c:[B

    array-length v6, v6

    iput v6, p0, Lcom/tencent/tmsecure/utils/ScriptHelper$a;->b:I

    const/16 v6, 0xc

    new-array v6, v6, [B

    const/4 v7, 0x0

    invoke-static {v7}, La;->d(I)[B

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x4

    invoke-static {v7, v8, v6, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v7, p0, Lcom/tencent/tmsecure/utils/ScriptHelper$a;->a:I

    invoke-static {v7}, La;->d(I)[B

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x4

    invoke-static {v7, v8, v6, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v7, p0, Lcom/tencent/tmsecure/utils/ScriptHelper$a;->b:I

    invoke-static {v7}, La;->d(I)[B

    move-result-object v7

    const/4 v8, 0x0

    const/16 v9, 0x8

    const/4 v10, 0x4

    invoke-static {v7, v8, v6, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v3, v6}, Ljava/io/OutputStream;->write([B)V

    iget-object v6, p0, Lcom/tencent/tmsecure/utils/ScriptHelper$a;->c:[B

    invoke-virtual {v3, v6}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    new-instance v6, Ljava/lang/String;

    iget-object v7, p0, Lcom/tencent/tmsecure/utils/ScriptHelper$a;->c:[B

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([B)V

    const/4 v6, 0x4

    new-array v6, v6, [B

    invoke-virtual {v2, v6}, Ljava/io/InputStream;->read([B)I

    move-result v7

    if-eq v7, v11, :cond_8

    new-instance v0, Ljava/io/IOException;

    const-string v6, "respond data is invalid"

    invoke-direct {v0, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    :goto_1
    :try_start_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz v3, :cond_1

    :try_start_6
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_d

    :cond_1
    :goto_2
    if-eqz v2, :cond_2

    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_e

    :cond_2
    :goto_3
    :try_start_8
    invoke-virtual {v5}, Landroid/net/LocalSocket;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_f

    :goto_4
    move-object v0, v1

    :goto_5
    monitor-exit v4

    return-object v0

    :cond_3
    :try_start_9
    new-instance v2, Landroid/net/LocalSocketAddress;

    sget-object v3, Lcom/tencent/tmsecure/utils/ScriptHelper;->a:Ljava/lang/String;

    sget-object v6, Landroid/net/LocalSocketAddress$Namespace;->ABSTRACT:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v2, v3, v6}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0

    :catch_1
    move-exception v2

    :try_start_a
    sget-boolean v2, Lcom/tencent/tmsecure/utils/ScriptHelper;->b:Z

    if-nez v2, :cond_0

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/tencent/tmsecure/common/TMSApplication;->getApplicaionContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "athena_v2.dat"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lbtd;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/tencent/tmsecure/utils/ScriptHelper;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "chmod 755 "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/ProcessBuilder;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "sh"

    aput-object v7, v3, v6

    invoke-virtual {v2, v3}, Ljava/lang/ProcessBuilder;->command([Ljava/lang/String;)Ljava/lang/ProcessBuilder;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    const/4 v3, 0x1

    :try_start_b
    invoke-virtual {v2, v3}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    invoke-virtual {v2}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3

    move-result-object v2

    :try_start_c
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_13

    if-eqz v2, :cond_4

    :try_start_d
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6

    :cond_4
    :goto_6
    const-wide/16 v2, 0xc8

    :try_start_e
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_e} :catch_10

    :goto_7
    const/4 v0, 0x0

    :try_start_f
    invoke-static {p0, v0}, Lcom/tencent/tmsecure/utils/ScriptHelper;->a(Lcom/tencent/tmsecure/utils/ScriptHelper$a;Z)Lcom/tencent/tmsecure/utils/ScriptHelper$b;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    move-result-object v0

    :try_start_10
    invoke-virtual {v5}, Landroid/net/LocalSocket;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_2

    goto/16 :goto_5

    :catch_2
    move-exception v1

    :try_start_11
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto/16 :goto_5

    :catch_3
    move-exception v0

    move-object v2, v1

    :goto_8
    :try_start_12
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    if-eqz v2, :cond_4

    :try_start_13
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_4

    goto :goto_6

    :catch_4
    move-exception v0

    :try_start_14
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object v3, v1

    :goto_9
    if-eqz v3, :cond_5

    :try_start_15
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_a

    :cond_5
    :goto_a
    if-eqz v1, :cond_6

    :try_start_16
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_b

    :cond_6
    :goto_b
    :try_start_17
    invoke-virtual {v5}, Landroid/net/LocalSocket;->close()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_c

    :goto_c
    :try_start_18
    throw v0
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    :catchall_2
    move-exception v0

    move-object v2, v1

    :goto_d
    if-eqz v2, :cond_7

    :try_start_19
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_1
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_5

    :cond_7
    :goto_e
    :try_start_1a
    throw v0

    :catch_5
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_e

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_1

    goto :goto_6

    :cond_8
    :try_start_1b
    invoke-static {v6}, La;->e([B)I

    move-result v6

    iput v6, v0, Lcom/tencent/tmsecure/utils/ScriptHelper$b;->a:I

    iget v6, v0, Lcom/tencent/tmsecure/utils/ScriptHelper$b;->a:I

    new-array v6, v6, [B

    invoke-virtual {v2, v6}, Ljava/io/InputStream;->read([B)I

    move-result v7

    array-length v8, v6

    if-eq v7, v8, :cond_9

    new-instance v0, Ljava/io/IOException;

    const-string v6, "respond data is invalid"

    invoke-direct {v0, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_3
    move-exception v0

    move-object v1, v2

    goto :goto_9

    :cond_9
    iput-object v6, v0, Lcom/tencent/tmsecure/utils/ScriptHelper$b;->b:[B

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v6}, Ljava/lang/String;-><init>([B)V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_3
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_0

    if-eqz v3, :cond_a

    :try_start_1c
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_8

    :cond_a
    :goto_f
    if-eqz v2, :cond_b

    :try_start_1d
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_9

    :cond_b
    :goto_10
    :try_start_1e
    invoke-virtual {v5}, Landroid/net/LocalSocket;->close()V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_7

    goto/16 :goto_5

    :catch_7
    move-exception v1

    :try_start_1f
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_5

    :catch_8
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_f

    :catch_9
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_10

    :catch_a
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    :catch_b
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b

    :catch_c
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c

    :catch_d
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    :catch_f
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_0

    goto/16 :goto_4

    :catch_10
    move-exception v0

    goto/16 :goto_7

    :catchall_4
    move-exception v0

    move-object v3, v1

    move-object v1, v2

    goto/16 :goto_9

    :catch_11
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    goto/16 :goto_1

    :catch_12
    move-exception v0

    move-object v3, v1

    goto/16 :goto_1

    :catchall_5
    move-exception v0

    goto/16 :goto_d

    :catch_13
    move-exception v0

    goto/16 :goto_8
.end method

.method private static a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/ProcessBuilder;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/ProcessBuilder;->environment()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "export "

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static canRunAtRoot()I
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/tencent/tmsecure/utils/ScriptHelper;->canRunAtRoot(I)I

    move-result v0

    return v0
.end method

.method public static canRunAtRoot(I)I
    .locals 1

    invoke-static {p0}, Lcom/tencent/tmsecure/utils/ScriptHelper;->a(I)I

    move-result v0

    return v0
.end method

.method public static canRunAtRoot(Lcom/tencent/tmsecure/utils/ScriptHelper$Callback;)V
    .locals 1

    new-instance v0, Lbzi;

    invoke-direct {v0, p0}, Lbzi;-><init>(Lcom/tencent/tmsecure/utils/ScriptHelper$Callback;)V

    invoke-virtual {v0}, Lbzi;->start()V

    return-void
.end method

.method public static isRootGot()Z
    .locals 3

    const/4 v0, 0x0

    new-instance v1, Lcom/tencent/tmsecure/utils/ScriptHelper$a;

    invoke-direct {v1}, Lcom/tencent/tmsecure/utils/ScriptHelper$a;-><init>()V

    const/16 v2, 0x3e8

    iput v2, v1, Lcom/tencent/tmsecure/utils/ScriptHelper$a;->a:I

    const-string v2, "id\n"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/tmsecure/utils/ScriptHelper$a;->c:[B

    invoke-static {v1, v0}, Lcom/tencent/tmsecure/utils/ScriptHelper;->a(Lcom/tencent/tmsecure/utils/ScriptHelper$a;Z)Lcom/tencent/tmsecure/utils/ScriptHelper$b;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Ljava/lang/String;

    iget-object v1, v1, Lcom/tencent/tmsecure/utils/ScriptHelper$b;->b:[B

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    const-string v1, "uid=0"

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isSystemUid()Z
    .locals 2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static provider$24edfebd()Lay;
    .locals 1

    sget-object v0, Lcom/tencent/tmsecure/utils/ScriptHelper;->g:Lay;

    return-object v0
.end method

.method public static providerSupportCancelMissCall()Z
    .locals 1

    sget-object v0, Lcom/tencent/tmsecure/utils/ScriptHelper;->g:Lay;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/tmsecure/utils/ScriptHelper;->g:Lay;

    invoke-interface {v0}, Lay;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static providerSupportCpuRelative()Z
    .locals 1

    sget-object v0, Lcom/tencent/tmsecure/utils/ScriptHelper;->g:Lay;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/tmsecure/utils/ScriptHelper;->g:Lay;

    invoke-interface {v0}, Lay;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static providerSupportGetAllApkFiles()Z
    .locals 1

    sget-object v0, Lcom/tencent/tmsecure/utils/ScriptHelper;->g:Lay;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/tmsecure/utils/ScriptHelper;->g:Lay;

    invoke-interface {v0}, Lay;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static providerSupportPmRelative()Z
    .locals 1

    sget-object v0, Lcom/tencent/tmsecure/utils/ScriptHelper;->g:Lay;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/tmsecure/utils/ScriptHelper;->g:Lay;

    invoke-interface {v0}, Lay;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static runScript(Ljava/lang/StringBuilder;Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    invoke-static {p1}, Lcom/tencent/tmsecure/utils/ScriptHelper;->runScript(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static varargs runScript(Ljava/lang/StringBuilder;[Ljava/lang/String;)I
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p0, v0}, Lcom/tencent/tmsecure/utils/ScriptHelper;->runScript(Ljava/lang/StringBuilder;Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method public static runScript(ILjava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/tencent/tmsecure/utils/ScriptHelper;->a(Ljava/util/List;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/tmsecure/utils/ScriptHelper$a;

    invoke-direct {v0}, Lcom/tencent/tmsecure/utils/ScriptHelper$a;-><init>()V

    iput p0, v0, Lcom/tencent/tmsecure/utils/ScriptHelper$a;->a:I

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/tmsecure/utils/ScriptHelper$a;->c:[B

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tencent/tmsecure/utils/ScriptHelper;->a(Lcom/tencent/tmsecure/utils/ScriptHelper$a;Z)Lcom/tencent/tmsecure/utils/ScriptHelper$b;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Ljava/lang/String;

    iget-object v0, v0, Lcom/tencent/tmsecure/utils/ScriptHelper$b;->b:[B

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static varargs runScript(I[Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p0, v0}, Lcom/tencent/tmsecure/utils/ScriptHelper;->runScript(ILjava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static runScript(Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/16 v0, 0x7530

    invoke-static {v0, p0}, Lcom/tencent/tmsecure/utils/ScriptHelper;->runScript(ILjava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs runScript([Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/16 v0, 0x7530

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0, v1}, Lcom/tencent/tmsecure/utils/ScriptHelper;->runScript(ILjava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static runScriptAsRoot(Ljava/lang/StringBuilder;Ljava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    const/4 v0, -0x1

    invoke-static {}, Lcom/tencent/tmsecure/utils/ScriptHelper;->canRunAtRoot()I

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p1}, Lcom/tencent/tmsecure/utils/ScriptHelper;->runScript(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    if-eqz p0, :cond_2

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static varargs runScriptAsRoot(Ljava/lang/StringBuilder;[Ljava/lang/String;)I
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p0, v0}, Lcom/tencent/tmsecure/utils/ScriptHelper;->runScriptAsRoot(Ljava/lang/StringBuilder;Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method public static runScriptAsRoot(Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, p0}, Lcom/tencent/tmsecure/utils/ScriptHelper;->runScriptAsRoot(Ljava/lang/StringBuilder;Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method public static varargs runScriptAsRoot([Ljava/lang/String;)I
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0, v1}, Lcom/tencent/tmsecure/utils/ScriptHelper;->runScriptAsRoot(Ljava/lang/StringBuilder;Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method public static runScriptIfSystemUidOrAsRoot(Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    invoke-static {}, Lcom/tencent/tmsecure/utils/ScriptHelper;->isSystemUid()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, p0}, Lcom/tencent/tmsecure/utils/ScriptHelper;->runScript(Ljava/lang/StringBuilder;Ljava/util/List;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/tencent/tmsecure/utils/ScriptHelper;->runScriptAsRoot(Ljava/util/List;)I

    move-result v0

    goto :goto_0
.end method

.method public static varargs runScriptIfSystemUidOrAsRoot([Ljava/lang/String;)I
    .locals 1

    invoke-static {}, Lcom/tencent/tmsecure/utils/ScriptHelper;->isSystemUid()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, p0}, Lcom/tencent/tmsecure/utils/ScriptHelper;->runScript(Ljava/lang/StringBuilder;[Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/tencent/tmsecure/utils/ScriptHelper;->runScriptAsRoot([Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static varargs runScriptSplitLines([Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0, v1}, Lcom/tencent/tmsecure/utils/ScriptHelper;->runScript(Ljava/lang/StringBuilder;Ljava/util/List;)I

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static setProvider$42efb889(Lay;)V
    .locals 7

    const/4 v0, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    array-length v3, v2

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_0

    :goto_1
    if-nez v0, :cond_2

    :goto_2
    return-void

    :cond_0
    aget-object v4, v2, v1

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-class v6, Lcom/tencent/tmsecure/common/TMSApplication;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "init"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    sput-object p0, Lcom/tencent/tmsecure/utils/ScriptHelper;->g:Lay;

    goto :goto_2
.end method

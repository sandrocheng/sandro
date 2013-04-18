.class final Lcom/keniu/security/traffic/h;
.super Ljava/lang/Thread;
.source "Api.java"


# instance fields
.field public a:I

.field private final b:Ljava/io/File;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/StringBuilder;

.field private final e:Z


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/StringBuilder;Z)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 946
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 929
    const/4 v0, -0x1

    iput v0, p0, Lcom/keniu/security/traffic/h;->a:I

    .line 947
    iput-object p1, p0, Lcom/keniu/security/traffic/h;->b:Ljava/io/File;

    .line 948
    iput-object p2, p0, Lcom/keniu/security/traffic/h;->c:Ljava/lang/String;

    .line 949
    iput-object p3, p0, Lcom/keniu/security/traffic/h;->d:Ljava/lang/StringBuilder;

    .line 950
    iput-boolean p4, p0, Lcom/keniu/security/traffic/h;->e:Z

    .line 951
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 956
    :try_start_0
    iget-object v0, p0, Lcom/keniu/security/traffic/h;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 957
    iget-object v0, p0, Lcom/keniu/security/traffic/h;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 959
    sget-object v1, Lcom/keniu/security/traffic/e;->j:Lcom/keniu/security/malware/bz;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "chmod 777 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/keniu/security/malware/bz;->d(Ljava/lang/String;)Z

    .line 961
    new-instance v1, Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/keniu/security/traffic/h;->b:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 963
    new-instance v2, Ljava/io/File;

    const-string v3, "/system/bin/sh"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 964
    const-string v2, "#!/system/bin/sh\n"

    invoke-virtual {v1, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 966
    :cond_0
    iget-object v2, p0, Lcom/keniu/security/traffic/h;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 967
    iget-object v2, p0, Lcom/keniu/security/traffic/h;->c:Ljava/lang/String;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 968
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 969
    :cond_1
    const-string v2, "exit\n"

    invoke-virtual {v1, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 970
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->flush()V

    .line 971
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V

    .line 973
    sget-object v1, Lcom/keniu/security/traffic/e;->j:Lcom/keniu/security/malware/bz;

    invoke-virtual {v1}, Lcom/keniu/security/malware/bz;->e()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 974
    sget-object v1, Lcom/keniu/security/traffic/e;->j:Lcom/keniu/security/malware/bz;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/keniu/security/malware/bz;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 975
    const/4 v0, 0x0

    iput v0, p0, Lcom/keniu/security/traffic/h;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1006
    :cond_2
    :goto_0
    return-void

    .line 1001
    :catch_0
    move-exception v0

    .line 1002
    :try_start_1
    iget-object v1, p0, Lcom/keniu/security/traffic/h;->d:Ljava/lang/StringBuilder;

    if-eqz v1, :cond_2

    .line 1003
    iget-object v1, p0, Lcom/keniu/security/traffic/h;->d:Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1004
    :catchall_0
    move-exception v0

    throw v0
.end method

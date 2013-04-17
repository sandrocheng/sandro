.class public Lcom/tencent/tmsecure/utils/UpdateUtil;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;I)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-array v0, p1, [B

    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "r"

    invoke-direct {v1, p0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->read([B)I

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    return-object v0
.end method

.method public static getFileConfInfo(Ljava/lang/String;)LQQPIM/ConfInfo;
    .locals 6

    const/16 v5, 0x10

    const/4 v4, 0x0

    const/4 v3, 0x4

    const/16 v0, 0x18

    :try_start_0
    invoke-static {p0, v0}, Lcom/tencent/tmsecure/utils/UpdateUtil;->a(Ljava/lang/String;I)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    new-instance v0, LQQPIM/ConfInfo;

    invoke-direct {v0}, LQQPIM/ConfInfo;-><init>()V

    new-array v2, v3, [B

    invoke-static {v1, v3, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v2}, La;->e([B)I

    move-result v2

    invoke-virtual {v0, v2}, LQQPIM/ConfInfo;->setTimestamp(I)V

    new-array v2, v5, [B

    const/16 v3, 0x8

    invoke-static {v1, v3, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v2}, La;->d([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LQQPIM/ConfInfo;->setChecksum(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LQQPIM/ConfInfo;->setFilename(Ljava/lang/String;)V

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getLocationConfInfo(Ljava/lang/String;)LQQPIM/ConfInfo;
    .locals 7

    const/16 v6, 0x10

    const/4 v5, 0x0

    const/4 v4, 0x4

    const/16 v0, 0x30

    :try_start_0
    invoke-static {p0, v0}, Lcom/tencent/tmsecure/utils/UpdateUtil;->a(Ljava/lang/String;I)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    new-instance v0, LQQPIM/ConfInfo;

    invoke-direct {v0}, LQQPIM/ConfInfo;-><init>()V

    aget-byte v2, v1, v5

    invoke-virtual {v0, v2}, LQQPIM/ConfInfo;->setVersion(I)V

    new-array v2, v4, [B

    invoke-static {v1, v4, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v2}, La;->e([B)I

    move-result v2

    invoke-virtual {v0, v2}, LQQPIM/ConfInfo;->setTimestamp(I)V

    new-array v2, v6, [B

    const/16 v3, 0x8

    invoke-static {v1, v3, v2, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v2}, La;->d([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, LQQPIM/ConfInfo;->setChecksum(Ljava/lang/String;)V

    new-array v2, v4, [B

    const/16 v3, 0x2c

    invoke-static {v1, v3, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v2}, La;->e([B)I

    move-result v1

    invoke-virtual {v0, v1}, LQQPIM/ConfInfo;->setPfutimestamp(I)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LQQPIM/ConfInfo;->setFilename(Ljava/lang/String;)V

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getSmsCheckerConfInfo(Landroid/content/Context;Ljava/lang/String;)LQQPIM/ConfInfo;
    .locals 3

    const/4 v1, 0x0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    invoke-static {p0, v0, p1}, Lcom/tencent/tccdb/SmsChecker;->getRuleFileHeader(Landroid/content/Context;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tccdb/RuleFileHeader;

    if-eqz v0, :cond_0

    new-instance v1, LQQPIM/ConfInfo;

    invoke-direct {v1}, LQQPIM/ConfInfo;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, LQQPIM/ConfInfo;->setFilename(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/tencent/tccdb/RuleFileHeader;->md5str:Ljava/lang/String;

    invoke-virtual {v1, v2}, LQQPIM/ConfInfo;->setChecksum(Ljava/lang/String;)V

    iget v0, v0, Lcom/tencent/tccdb/RuleFileHeader;->time:I

    invoke-virtual {v1, v0}, LQQPIM/ConfInfo;->setTimestamp(I)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public static getVirusClientInfo(Landroid/content/Context;Ljava/lang/String;)LQQPIM/VirusClientInfo;
    .locals 2

    const/4 v0, 0x0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0, p1}, Lcom/tencent/tmsecure/module/qscanner/AmScanner;->loadAmfHeader(Landroid/content/Context;Ljava/lang/String;)LQQPIM/VirusClientInfo;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static getVirusConfInfo(Landroid/content/Context;Ljava/lang/String;)LQQPIM/ConfInfo;
    .locals 3

    const/4 v0, 0x0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0, p1}, Lcom/tencent/tmsecure/module/qscanner/AmScanner;->loadAmfHeader(Landroid/content/Context;Ljava/lang/String;)LQQPIM/VirusClientInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v0, LQQPIM/ConfInfo;

    invoke-direct {v0}, LQQPIM/ConfInfo;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LQQPIM/ConfInfo;->setFilename(Ljava/lang/String;)V

    iget v1, v2, LQQPIM/VirusClientInfo;->timestamp:I

    invoke-virtual {v0, v1}, LQQPIM/ConfInfo;->setTimestamp(I)V

    iget v1, v2, LQQPIM/VirusClientInfo;->version:I

    invoke-virtual {v0, v1}, LQQPIM/ConfInfo;->setVersion(I)V

    :cond_0
    return-object v0
.end method

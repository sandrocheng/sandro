.class Lcom/hoi/netstat/NetStatJni;
.super Ljava/lang/Object;
.source "NetStatJni.java"

# interfaces
.implements Lcom/hoi/netstat/g;


# static fields
.field private static final a:Ljava/lang/String; = "^((rmnet[0-9])|(pdp[0-9])|(pdp_ip[0-9])|(gprs[0-9])|(ppp[0-9])|(ccinet[0-9]))$"

.field private static final b:Ljava/lang/String;

.field private static final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    const-string v0, "syscore"

    invoke-static {v0}, Lcom/keniu/security/h/a;->a(Ljava/lang/String;)V

    .line 29
    new-instance v0, Lcom/hoi/string/LocalString;

    invoke-direct {v0}, Lcom/hoi/string/LocalString;-><init>()V

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/hoi/string/LocalString;->malloc(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hoi/netstat/NetStatJni;->b:Ljava/lang/String;

    .line 31
    new-instance v0, Lcom/hoi/string/LocalString;

    invoke-direct {v0}, Lcom/hoi/string/LocalString;-><init>()V

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/hoi/string/LocalString;->malloc(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hoi/netstat/NetStatJni;->c:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static c(Ljava/lang/String;)Z
    .locals 3
    .parameter

    .prologue
    .line 49
    const/4 v0, 0x0

    .line 53
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/sys/class/net/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/wireless"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 54
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 60
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private native getMobileRxBytes()J
.end method

.method private native getMobileTxBytes()J
.end method

.method private native getTotalRxBytesL(Ljava/lang/String;)J
.end method

.method private native getTotalTxBytesL(Ljava/lang/String;)J
.end method

.method private native getUidRxBytes(I)J
.end method

.method private native getUidTxBytes(I)J
.end method

.method private native recycle()V
.end method

.method private native tryMallocL()Ljava/lang/String;
.end method


# virtual methods
.method public final a()J
    .locals 7

    .prologue
    const-wide/16 v3, 0x0

    .line 209
    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lcom/hoi/netstat/NetStatJni;->tryMallocL()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 211
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 212
    if-nez v0, :cond_0

    move-wide v0, v3

    .line 222
    :goto_0
    return-wide v0

    .line 216
    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_2

    aget-object v5, v0, v2

    .line 217
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 219
    sget-object v6, Lcom/hoi/netstat/NetStatJni;->c:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 220
    invoke-direct {p0, v5}, Lcom/hoi/netstat/NetStatJni;->getTotalTxBytesL(Ljava/lang/String;)J

    move-result-wide v5

    add-long/2addr v3, v5

    .line 216
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move-wide v0, v3

    .line 222
    goto :goto_0
.end method

.method public final a(I)J
    .locals 2
    .parameter

    .prologue
    .line 240
    invoke-direct {p0, p1}, Lcom/hoi/netstat/NetStatJni;->getUidTxBytes(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public final a(Landroid/content/Context;)J
    .locals 9
    .parameter

    .prologue
    const-wide/16 v3, 0x0

    .line 158
    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lcom/hoi/netstat/NetStatJni;->tryMallocL()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 159
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 160
    if-nez v0, :cond_0

    move-wide v0, v3

    .line 176
    :goto_0
    return-wide v0

    .line 167
    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    move-wide v7, v3

    move v4, v2

    move-wide v2, v7

    :goto_1
    if-ge v4, v1, :cond_2

    aget-object v5, v0, v4

    .line 168
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 169
    sget-object v6, Lcom/hoi/netstat/NetStatJni;->c:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 170
    const-string v6, "^((rmnet[0-9])|(pdp[0-9])|(pdp_ip[0-9])|(gprs[0-9])|(ppp[0-9])|(ccinet[0-9]))$"

    invoke-virtual {v5, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 171
    invoke-direct {p0, v5}, Lcom/hoi/netstat/NetStatJni;->getTotalTxBytesL(Ljava/lang/String;)J

    move-result-wide v5

    add-long/2addr v2, v5

    .line 167
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    move-wide v0, v2

    .line 176
    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)J
    .locals 2
    .parameter

    .prologue
    .line 68
    :try_start_0
    invoke-direct {p0, p1}, Lcom/hoi/netstat/NetStatJni;->getTotalRxBytesL(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 71
    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public final b()J
    .locals 7

    .prologue
    const-wide/16 v3, 0x0

    .line 187
    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lcom/hoi/netstat/NetStatJni;->tryMallocL()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 189
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 190
    if-nez v0, :cond_0

    move-wide v0, v3

    .line 200
    :goto_0
    return-wide v0

    .line 194
    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_2

    aget-object v5, v0, v2

    .line 195
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 197
    sget-object v6, Lcom/hoi/netstat/NetStatJni;->c:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 198
    invoke-direct {p0, v5}, Lcom/hoi/netstat/NetStatJni;->getTotalRxBytesL(Ljava/lang/String;)J

    move-result-wide v5

    add-long/2addr v3, v5

    .line 194
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move-wide v0, v3

    .line 200
    goto :goto_0
.end method

.method public final b(I)J
    .locals 2
    .parameter

    .prologue
    .line 235
    invoke-direct {p0, p1}, Lcom/hoi/netstat/NetStatJni;->getUidRxBytes(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public final b(Landroid/content/Context;)J
    .locals 9
    .parameter

    .prologue
    const-wide/16 v3, 0x0

    .line 135
    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lcom/hoi/netstat/NetStatJni;->tryMallocL()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 136
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 137
    if-nez v0, :cond_0

    move-wide v0, v3

    .line 153
    :goto_0
    return-wide v0

    .line 144
    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    move-wide v7, v3

    move v4, v2

    move-wide v2, v7

    :goto_1
    if-ge v4, v1, :cond_2

    aget-object v5, v0, v4

    .line 145
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 146
    sget-object v6, Lcom/hoi/netstat/NetStatJni;->c:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 147
    const-string v6, "^((rmnet[0-9])|(pdp[0-9])|(pdp_ip[0-9])|(gprs[0-9])|(ppp[0-9])|(ccinet[0-9]))$"

    invoke-virtual {v5, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 148
    invoke-direct {p0, v5}, Lcom/hoi/netstat/NetStatJni;->getTotalRxBytesL(Ljava/lang/String;)J

    move-result-wide v5

    add-long/2addr v2, v5

    .line 144
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    move-wide v0, v2

    .line 153
    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)J
    .locals 2
    .parameter

    .prologue
    .line 79
    :try_start_0
    invoke-direct {p0, p1}, Lcom/hoi/netstat/NetStatJni;->getTotalTxBytesL(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 82
    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public final c()Ljava/util/ArrayList;
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 263
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 266
    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    new-instance v2, Ljava/io/File;

    const-string v3, "/proc/self/net/dev"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v3, "r"

    invoke-direct {v1, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5

    move-object v2, v4

    .line 270
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    .line 274
    :goto_1
    if-eqz v2, :cond_3

    .line 275
    :try_start_2
    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 278
    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 279
    new-instance v3, Lcom/hoi/netstat/j;

    invoke-direct {v3}, Lcom/hoi/netstat/j;-><init>()V

    .line 281
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, "[\\s:]+"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v5, v4, v5

    iput-object v5, v3, Lcom/hoi/netstat/j;->a:Ljava/lang/String;

    iget-object v5, v3, Lcom/hoi/netstat/j;->b:Lcom/hoi/netstat/k;

    const/4 v6, 0x1

    aget-object v6, v4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Lcom/hoi/netstat/k;->a:I

    iget-object v5, v3, Lcom/hoi/netstat/j;->b:Lcom/hoi/netstat/k;

    const/4 v6, 0x2

    aget-object v6, v4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Lcom/hoi/netstat/k;->b:I

    iget-object v5, v3, Lcom/hoi/netstat/j;->b:Lcom/hoi/netstat/k;

    const/4 v6, 0x3

    aget-object v6, v4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Lcom/hoi/netstat/k;->c:I

    iget-object v5, v3, Lcom/hoi/netstat/j;->b:Lcom/hoi/netstat/k;

    const/4 v6, 0x4

    aget-object v6, v4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Lcom/hoi/netstat/k;->d:I

    iget-object v5, v3, Lcom/hoi/netstat/j;->b:Lcom/hoi/netstat/k;

    const/4 v6, 0x5

    aget-object v6, v4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Lcom/hoi/netstat/k;->e:I

    iget-object v5, v3, Lcom/hoi/netstat/j;->b:Lcom/hoi/netstat/k;

    const/4 v6, 0x6

    aget-object v6, v4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Lcom/hoi/netstat/k;->f:I

    iget-object v5, v3, Lcom/hoi/netstat/j;->b:Lcom/hoi/netstat/k;

    const/4 v6, 0x7

    aget-object v6, v4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Lcom/hoi/netstat/k;->g:I

    iget-object v5, v3, Lcom/hoi/netstat/j;->b:Lcom/hoi/netstat/k;

    const/16 v6, 0x8

    aget-object v6, v4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Lcom/hoi/netstat/k;->h:I

    iget-object v5, v3, Lcom/hoi/netstat/j;->c:Lcom/hoi/netstat/l;

    const/16 v6, 0x9

    aget-object v6, v4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Lcom/hoi/netstat/l;->a:I

    iget-object v5, v3, Lcom/hoi/netstat/j;->c:Lcom/hoi/netstat/l;

    const/16 v6, 0xa

    aget-object v6, v4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Lcom/hoi/netstat/l;->b:I

    iget-object v5, v3, Lcom/hoi/netstat/j;->c:Lcom/hoi/netstat/l;

    const/16 v6, 0xb

    aget-object v6, v4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Lcom/hoi/netstat/l;->c:I

    iget-object v5, v3, Lcom/hoi/netstat/j;->c:Lcom/hoi/netstat/l;

    const/16 v6, 0xc

    aget-object v6, v4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Lcom/hoi/netstat/l;->d:I

    iget-object v5, v3, Lcom/hoi/netstat/j;->c:Lcom/hoi/netstat/l;

    const/16 v6, 0xd

    aget-object v6, v4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Lcom/hoi/netstat/l;->e:I

    iget-object v5, v3, Lcom/hoi/netstat/j;->c:Lcom/hoi/netstat/l;

    const/16 v6, 0xe

    aget-object v6, v4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Lcom/hoi/netstat/l;->f:I

    iget-object v5, v3, Lcom/hoi/netstat/j;->c:Lcom/hoi/netstat/l;

    const/16 v6, 0xf

    aget-object v6, v4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Lcom/hoi/netstat/l;->g:I

    iget-object v5, v3, Lcom/hoi/netstat/j;->c:Lcom/hoi/netstat/l;

    const/16 v6, 0x10

    aget-object v4, v4, v6

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v5, Lcom/hoi/netstat/l;->h:I

    .line 282
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 284
    :catch_0
    move-exception v2

    move-object v7, v2

    move-object v2, v1

    move-object v1, v7

    :goto_2
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 287
    if-eqz v2, :cond_1

    .line 289
    :try_start_4
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 296
    :cond_1
    :goto_3
    return-object v0

    .line 271
    :catch_1
    move-exception v3

    :try_start_5
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_1

    .line 287
    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v1, :cond_2

    .line 289
    :try_start_6
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 292
    :cond_2
    :goto_5
    throw v0

    .line 287
    :cond_3
    :try_start_7
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_3

    .line 290
    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catch_4
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 287
    :catchall_1
    move-exception v0

    move-object v1, v4

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v1, v2

    goto :goto_4

    .line 284
    :catch_5
    move-exception v1

    move-object v2, v4

    goto :goto_2
.end method

.method public final d()Ljava/util/ArrayList;
    .locals 10

    .prologue
    .line 246
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 248
    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lcom/hoi/netstat/NetStatJni;->tryMallocL()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 249
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v7

    .line 250
    if-nez v7, :cond_0

    move-object v0, v6

    .line 257
    :goto_0
    return-object v0

    .line 253
    :cond_0
    array-length v8, v7

    const/4 v0, 0x0

    move v9, v0

    :goto_1
    if-ge v9, v8, :cond_1

    aget-object v0, v7, v9

    .line 254
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 255
    new-instance v0, Lcom/hoi/netstat/h;

    invoke-direct {p0, v1}, Lcom/hoi/netstat/NetStatJni;->getTotalTxBytesL(Ljava/lang/String;)J

    move-result-wide v2

    invoke-direct {p0, v1}, Lcom/hoi/netstat/NetStatJni;->getTotalRxBytesL(Ljava/lang/String;)J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lcom/hoi/netstat/h;-><init>(Ljava/lang/String;JJ)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_1

    :cond_1
    move-object v0, v6

    .line 257
    goto :goto_0
.end method

.method public final e()J
    .locals 7

    .prologue
    const-wide/16 v3, 0x0

    .line 88
    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lcom/hoi/netstat/NetStatJni;->tryMallocL()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 89
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 90
    if-nez v0, :cond_0

    move-wide v0, v3

    .line 106
    :goto_0
    return-wide v0

    .line 97
    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_2

    aget-object v5, v0, v2

    .line 98
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 99
    sget-object v6, Lcom/hoi/netstat/NetStatJni;->c:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 100
    invoke-static {v5}, Lcom/hoi/netstat/NetStatJni;->c(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 101
    invoke-direct {p0, v5}, Lcom/hoi/netstat/NetStatJni;->getTotalRxBytesL(Ljava/lang/String;)J

    move-result-wide v5

    add-long/2addr v3, v5

    .line 97
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move-wide v0, v3

    .line 106
    goto :goto_0
.end method

.method public final f()J
    .locals 7

    .prologue
    const-wide/16 v3, 0x0

    .line 112
    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lcom/hoi/netstat/NetStatJni;->tryMallocL()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 113
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 114
    if-nez v0, :cond_0

    move-wide v0, v3

    .line 130
    :goto_0
    return-wide v0

    .line 121
    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_2

    aget-object v5, v0, v2

    .line 122
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 123
    sget-object v6, Lcom/hoi/netstat/NetStatJni;->c:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 124
    invoke-static {v5}, Lcom/hoi/netstat/NetStatJni;->c(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 125
    invoke-direct {p0, v5}, Lcom/hoi/netstat/NetStatJni;->getTotalTxBytesL(Ljava/lang/String;)J

    move-result-wide v5

    add-long/2addr v3, v5

    .line 121
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move-wide v0, v3

    .line 130
    goto :goto_0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/hoi/netstat/NetStatJni;->recycle()V

    .line 36
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 37
    return-void
.end method

.class public final Lcom/tencent/feedback/common/strategy/a;
.super Ljava/lang/Object;
.source "StrategyHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/feedback/common/strategy/a$b;,
        Lcom/tencent/feedback/common/strategy/a$a;
    }
.end annotation


# static fields
.field private static h:Lcom/tencent/feedback/common/strategy/a;

.field private static i:Lmqq/sdet/server/a/b;

.field private static j:Lcom/tencent/feedback/upload/UploadHandler;


# instance fields
.field private a:Ljava/util/List;

.field private b:Z

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Lcom/tencent/feedback/common/strategy/UploadStrategyBean;

.field private g:Lcom/tencent/feedback/common/strategy/SecurityStrategyBean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 55
    sput-object v0, Lcom/tencent/feedback/common/strategy/a;->h:Lcom/tencent/feedback/common/strategy/a;

    .line 56
    sput-object v0, Lcom/tencent/feedback/common/strategy/a;->i:Lmqq/sdet/server/a/b;

    .line 57
    sput-object v0, Lcom/tencent/feedback/common/strategy/a;->j:Lcom/tencent/feedback/upload/UploadHandler;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 7
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/feedback/common/strategy/a;->a:Ljava/util/List;

    .line 42
    iput-boolean v2, p0, Lcom/tencent/feedback/common/strategy/a;->b:Z

    .line 43
    iput-boolean v2, p0, Lcom/tencent/feedback/common/strategy/a;->c:Z

    .line 44
    iput-object v1, p0, Lcom/tencent/feedback/common/strategy/a;->d:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/feedback/common/strategy/a;->e:Ljava/lang/String;

    .line 46
    iput-object v1, p0, Lcom/tencent/feedback/common/strategy/a;->f:Lcom/tencent/feedback/common/strategy/UploadStrategyBean;

    .line 47
    iput-object v1, p0, Lcom/tencent/feedback/common/strategy/a;->g:Lcom/tencent/feedback/common/strategy/SecurityStrategyBean;

    .line 172
    const-string v0, "StrategyHolder.StrategyHolder() start"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 174
    invoke-static {}, Lcom/tencent/feedback/common/c;->a()Lcom/tencent/feedback/common/c;

    move-result-object v0

    const/16 v1, 0xe

    new-instance v2, Lcom/tencent/feedback/common/strategy/a$a;

    invoke-direct {v2, p0, p1}, Lcom/tencent/feedback/common/strategy/a$a;-><init>(Lcom/tencent/feedback/common/strategy/a;Landroid/content/Context;)V

    const-wide/16 v3, 0x0

    invoke-static {}, Lcom/tencent/feedback/common/f;->d()Lcom/tencent/feedback/common/f$c;

    move-result-object v5

    iget-wide v5, v5, Lcom/tencent/feedback/common/f$c;->a:J

    invoke-virtual/range {v0 .. v6}, Lcom/tencent/feedback/common/c;->a(ILjava/lang/Runnable;JJ)V

    .line 176
    const-string v0, "StrategyHolder.StrategyHolder() end"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 177
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/tencent/feedback/common/strategy/a;
    .locals 3
    .parameter

    .prologue
    .line 181
    const-class v1, Lcom/tencent/feedback/common/strategy/a;

    monitor-enter v1

    :try_start_0
    const-string v0, "getStrategyHolder start"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 182
    sget-object v0, Lcom/tencent/feedback/common/strategy/a;->h:Lcom/tencent/feedback/common/strategy/a;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 184
    const-string v0, "new StrategyHolder"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 185
    new-instance v0, Lcom/tencent/feedback/common/strategy/a;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/tencent/feedback/common/strategy/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tencent/feedback/common/strategy/a;->h:Lcom/tencent/feedback/common/strategy/a;

    .line 187
    :cond_0
    const-string v0, "getStrategyHolder end"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 188
    sget-object v0, Lcom/tencent/feedback/common/strategy/a;->h:Lcom/tencent/feedback/common/strategy/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 181
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 725
    const-string v0, "saveLocalVersion start"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    .line 726
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 728
    :cond_0
    const-string v0, "context == null || localVersion == null return"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->error(Ljava/lang/String;)V

    .line 747
    :goto_0
    return-void

    .line 734
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "eupstrategy"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 735
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateLocalVersion\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 736
    const-string v1, "localversion"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 737
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 738
    const-string v0, "updateLocalVersion success!"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 746
    :goto_1
    const-string v0, "saveLocalVersion end"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 741
    :catch_0
    move-exception v0

    .line 743
    const-string v1, "updateLocalVersion fail!"

    invoke-static {v1}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 744
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public static declared-synchronized a(Lcom/tencent/feedback/upload/UploadHandler;)V
    .locals 2
    .parameter

    .prologue
    .line 199
    const-class v0, Lcom/tencent/feedback/common/strategy/a;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/tencent/feedback/common/strategy/a;->j:Lcom/tencent/feedback/upload/UploadHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    monitor-exit v0

    return-void

    .line 199
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static synthetic a(Lcom/tencent/feedback/common/strategy/a;)Z
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/tencent/feedback/common/strategy/a;->c:Z

    return v0
.end method

.method public static declared-synchronized b()Lcom/tencent/feedback/upload/UploadHandler;
    .locals 2

    .prologue
    .line 194
    const-class v0, Lcom/tencent/feedback/common/strategy/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/feedback/common/strategy/a;->j:Lcom/tencent/feedback/upload/UploadHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static synthetic b(Lcom/tencent/feedback/common/strategy/a;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/tencent/feedback/common/strategy/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/feedback/common/strategy/a;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/tencent/feedback/common/strategy/a;->e:Ljava/lang/String;

    return-object v0
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    .line 752
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 754
    :cond_0
    const-string p0, ""

    .line 787
    :goto_0
    return-object p0

    .line 758
    :cond_1
    :try_start_0
    sget-object v0, Lcom/tencent/feedback/common/strategy/a;->i:Lmqq/sdet/server/a/b;

    if-nez v0, :cond_2

    .line 760
    const/4 v0, 0x1

    invoke-static {v0}, Lmqq/sdet/server/a/a;->a(I)Lmqq/sdet/server/a/b;

    move-result-object v0

    .line 761
    sput-object v0, Lcom/tencent/feedback/common/strategy/a;->i:Lmqq/sdet/server/a/b;

    const-string v1, "qqch2011"

    invoke-virtual {v0, v1}, Lmqq/sdet/server/a/b;->a(Ljava/lang/String;)V

    .line 764
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 766
    sget-object v1, Lcom/tencent/feedback/common/strategy/a;->i:Lmqq/sdet/server/a/b;

    invoke-virtual {v1, v0}, Lmqq/sdet/server/a/b;->b([B)[B

    move-result-object v1

    .line 768
    if-nez v1, :cond_3

    .line 769
    const/4 p0, 0x0

    goto :goto_0

    .line 772
    :cond_3
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 773
    const/4 v0, 0x0

    :goto_1
    array-length v3, v1

    if-ge v0, v3, :cond_4

    .line 775
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "$"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-byte v4, v1, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 773
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 778
    :cond_4
    const-string v0, "$"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->substring(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    .line 781
    :catch_0
    move-exception v0

    .line 783
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 784
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/tencent/feedback/common/strategy/a;)Lcom/tencent/feedback/common/strategy/SecurityStrategyBean;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/tencent/feedback/common/strategy/a;->g:Lcom/tencent/feedback/common/strategy/SecurityStrategyBean;

    return-object v0
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 713
    if-nez p0, :cond_0

    .line 715
    const-string v1, "context == null return null"

    invoke-static {v1}, Lcom/tencent/feedback/common/ELog;->error(Ljava/lang/String;)V

    .line 719
    :goto_0
    return-object v0

    .line 718
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "eupstrategy"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 719
    const-string v2, "localversion"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 793
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_2

    .line 795
    :cond_0
    const-string p0, ""

    .line 870
    :cond_1
    :goto_0
    return-object p0

    .line 797
    :cond_2
    const/4 v1, 0x0

    .line 800
    :try_start_0
    sget-object v2, Lcom/tencent/feedback/common/strategy/a;->i:Lmqq/sdet/server/a/b;

    if-nez v2, :cond_3

    .line 802
    const/4 v2, 0x1

    invoke-static {v2}, Lmqq/sdet/server/a/a;->a(I)Lmqq/sdet/server/a/b;

    move-result-object v2

    .line 803
    sput-object v2, Lcom/tencent/feedback/common/strategy/a;->i:Lmqq/sdet/server/a/b;

    const-string v3, "qqch2011"

    invoke-virtual {v2, v3}, Lmqq/sdet/server/a/b;->a(Ljava/lang/String;)V

    .line 806
    :cond_3
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_5

    .line 808
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 810
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 811
    array-length v4, v1

    :goto_1
    if-ge v0, v4, :cond_6

    aget-char v5, v1, v0

    .line 813
    const/16 v6, 0x24

    if-ne v5, v6, :cond_5

    .line 816
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    if-lez v5, :cond_4

    .line 819
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v5

    .line 820
    invoke-virtual {v2, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 822
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 811
    :cond_4
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 828
    :cond_5
    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 847
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 849
    :goto_3
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 850
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->error(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 855
    if-eqz v1, :cond_1

    .line 859
    :try_start_3
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 861
    :catch_1
    move-exception v0

    .line 864
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 832
    :cond_6
    :try_start_4
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0

    .line 833
    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 835
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 836
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 841
    sget-object v1, Lcom/tencent/feedback/common/strategy/a;->i:Lmqq/sdet/server/a/b;

    invoke-virtual {v1, v0}, Lmqq/sdet/server/a/b;->a([B)[B

    move-result-object v1

    .line 843
    if-eqz v1, :cond_7

    .line 844
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 855
    :try_start_5
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :goto_4
    move-object p0, v0

    .line 865
    goto :goto_0

    .line 861
    :catch_2
    move-exception v1

    .line 864
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 855
    :cond_7
    :try_start_6
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_0

    .line 861
    :catch_3
    move-exception v0

    .line 864
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 855
    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_5
    if-eqz v2, :cond_8

    .line 859
    :try_start_7
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 865
    :cond_8
    :goto_6
    throw v0

    .line 861
    :catch_4
    move-exception v1

    .line 864
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 855
    :catchall_1
    move-exception v0

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object v2, v1

    goto :goto_5

    .line 847
    :catch_5
    move-exception v0

    goto :goto_3
.end method

.method static synthetic e(Lcom/tencent/feedback/common/strategy/a;)Lcom/tencent/feedback/common/strategy/UploadStrategyBean;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/tencent/feedback/common/strategy/a;->f:Lcom/tencent/feedback/common/strategy/UploadStrategyBean;

    return-object v0
.end method


# virtual methods
.method protected final a()V
    .locals 6

    .prologue
    .line 151
    const-string v0, "notifyAfterEmptyQuery start"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p0}, Lcom/tencent/feedback/common/strategy/a;->e()[Lcom/tencent/feedback/common/strategy/a$b;

    move-result-object v1

    .line 154
    if-eqz v1, :cond_1

    .line 156
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 158
    iget-boolean v4, p0, Lcom/tencent/feedback/common/strategy/a;->c:Z

    if-eqz v4, :cond_0

    .line 160
    iget-object v4, p0, Lcom/tencent/feedback/common/strategy/a;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/tencent/feedback/common/strategy/a;->e:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Lcom/tencent/feedback/common/strategy/a$b;->onLocalVersionChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    :cond_0
    invoke-interface {v3}, Lcom/tencent/feedback/common/strategy/a$b;->onInitByQuery()V

    .line 156
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 167
    :cond_1
    const-string v0, "notifyAfterEmptyQuery end"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    .line 168
    return-void
.end method

.method public final declared-synchronized a(Landroid/content/Context;Lcom/tencent/feedback/common/strategy/SecurityStrategyBean;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 362
    monitor-enter p0

    :try_start_0
    const-string v0, "StrategyHolder.updateSecurityStrategy() start"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 363
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 397
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 368
    :cond_1
    :try_start_1
    const-string v0, "#update new ssBean"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    .line 370
    iput-object p2, p0, Lcom/tencent/feedback/common/strategy/a;->g:Lcom/tencent/feedback/common/strategy/SecurityStrategyBean;

    .line 372
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/feedback/common/strategy/a;->g:Lcom/tencent/feedback/common/strategy/SecurityStrategyBean;

    if-eqz v0, :cond_2

    if-nez v1, :cond_4

    .line 374
    :cond_2
    :goto_1
    const-string v0, "#update success to notify listener"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    .line 376
    iget-object v0, p0, Lcom/tencent/feedback/common/strategy/a;->a:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/feedback/common/strategy/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 378
    invoke-static {}, Lcom/tencent/feedback/common/c;->a()Lcom/tencent/feedback/common/c;

    move-result-object v0

    new-instance v1, Lcom/tencent/feedback/common/strategy/c;

    invoke-direct {v1, p0}, Lcom/tencent/feedback/common/strategy/c;-><init>(Lcom/tencent/feedback/common/strategy/a;)V

    invoke-virtual {v0, v1}, Lcom/tencent/feedback/common/c;->a(Ljava/lang/Runnable;)V

    .line 396
    :cond_3
    const-string v0, "StrategyHolder.updateSecurityStrategy() end"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 362
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 372
    :cond_4
    :try_start_2
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "eupstrategy"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    monitor-enter v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#save security strategy\uff1a\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/tencent/feedback/common/strategy/SecurityStrategyBean;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    const-string v2, "ea"

    invoke-virtual {v1}, Lcom/tencent/feedback/common/strategy/SecurityStrategyBean;->getEncryAlgorithm()I

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v2, "ek"

    invoke-virtual {v1}, Lcom/tencent/feedback/common/strategy/SecurityStrategyBean;->getEncryKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/feedback/common/strategy/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "za"

    invoke-virtual {v1}, Lcom/tencent/feedback/common/strategy/SecurityStrategyBean;->getZipAlgorithm()I

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    const-string v1, "update"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v0, "#save success!"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    :try_start_5
    const-string v1, "save Security Strategy fail!"

    invoke-static {v1}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1

    :catchall_1
    move-exception v0

    :try_start_6
    monitor-exit v1

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
.end method

.method public final declared-synchronized a(Landroid/content/Context;Lcom/tencent/feedback/common/strategy/UploadStrategyBean;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 489
    monitor-enter p0

    :try_start_0
    const-string v0, "StrategyHolder.updateUploadStrategyBean() start"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    .line 490
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 492
    :cond_0
    const-string v0, "updateUploadStrategyBean() should not accept context == null  or bean == null!,pls to check ,and return!"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->error(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 526
    :goto_0
    monitor-exit p0

    return-void

    .line 496
    :cond_1
    :try_start_1
    const-string v0, "#update new usBean"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    .line 498
    iput-object p2, p0, Lcom/tencent/feedback/common/strategy/a;->f:Lcom/tencent/feedback/common/strategy/UploadStrategyBean;

    .line 500
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "StrategyHolder.saveUploadStrategy() start"

    invoke-static {v1}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    if-eqz v0, :cond_2

    if-nez p2, :cond_4

    .line 502
    :cond_2
    :goto_1
    const-string v0, "#update success to notify listener"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    .line 504
    iget-object v0, p0, Lcom/tencent/feedback/common/strategy/a;->a:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/feedback/common/strategy/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 506
    invoke-static {}, Lcom/tencent/feedback/common/c;->a()Lcom/tencent/feedback/common/c;

    move-result-object v0

    new-instance v1, Lcom/tencent/feedback/common/strategy/d;

    invoke-direct {v1, p0}, Lcom/tencent/feedback/common/strategy/d;-><init>(Lcom/tencent/feedback/common/strategy/a;)V

    invoke-virtual {v0, v1}, Lcom/tencent/feedback/common/c;->a(Ljava/lang/Runnable;)V

    .line 524
    :cond_3
    const-string v0, "StrategyHolder.updateUploadStrategyBean() end"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 489
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 500
    :cond_4
    :try_start_2
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "eupstrategy"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    monitor-enter p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#save upload strategy\uff1a\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/tencent/feedback/common/strategy/UploadStrategyBean;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    const-string v1, "ms"

    invoke-virtual {p2}, Lcom/tencent/feedback/common/strategy/UploadStrategyBean;->getMaxPackageSize()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v1, "tms"

    invoke-virtual {p2}, Lcom/tencent/feedback/common/strategy/UploadStrategyBean;->getTestCount()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v1, "use"

    invoke-virtual {p2}, Lcom/tencent/feedback/common/strategy/UploadStrategyBean;->getUploadServer()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/feedback/common/strategy/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "ust"

    invoke-virtual {p2}, Lcom/tencent/feedback/common/strategy/UploadStrategyBean;->getUploadStrategy()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v1, "euso"

    invoke-virtual {p2}, Lcom/tencent/feedback/common/strategy/UploadStrategyBean;->isExceptionUploadServerOpen()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v1, "euuo"

    invoke-virtual {p2}, Lcom/tencent/feedback/common/strategy/UploadStrategyBean;->isExceptionUploadUserOpen()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v1, "smso"

    invoke-virtual {p2}, Lcom/tencent/feedback/common/strategy/UploadStrategyBean;->isSpeedMonitorServerOpen()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v1, "smuo"

    invoke-virtual {p2}, Lcom/tencent/feedback/common/strategy/UploadStrategyBean;->isSpeedMonitorUserOpen()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v1, "ueso"

    invoke-virtual {p2}, Lcom/tencent/feedback/common/strategy/UploadStrategyBean;->isUserEventServerOpen()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v1, "ueuo"

    invoke-virtual {p2}, Lcom/tencent/feedback/common/strategy/UploadStrategyBean;->isUserEventUserOpen()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v1, "uuid"

    invoke-virtual {p2}, Lcom/tencent/feedback/common/strategy/UploadStrategyBean;->getApkUID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    const-string v1, "update"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v0, "#save success!"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    const-string v0, "StrategyHolder.saveUploadStrategy() end"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    :goto_2
    :try_start_5
    const-string v0, "#save success!"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1

    :catchall_1
    move-exception v0

    :try_start_6
    monitor-exit p2

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception v0

    :try_start_7
    const-string v1, "save upload Strategy fail!"

    invoke-static {v1}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2
.end method

.method public final declared-synchronized a(Lcom/tencent/feedback/common/strategy/a$b;)V
    .locals 2
    .parameter

    .prologue
    .line 253
    monitor-enter p0

    :try_start_0
    const-string v0, "addStrategyChangeListener start"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    if-nez p1, :cond_0

    .line 285
    :goto_0
    monitor-exit p0

    return-void

    .line 257
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/tencent/feedback/common/strategy/a;->a:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/feedback/common/strategy/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 259
    iget-object v0, p0, Lcom/tencent/feedback/common/strategy/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    iget-boolean v0, p0, Lcom/tencent/feedback/common/strategy/a;->b:Z

    if-eqz v0, :cond_1

    .line 264
    invoke-static {}, Lcom/tencent/feedback/common/c;->a()Lcom/tencent/feedback/common/c;

    move-result-object v0

    new-instance v1, Lcom/tencent/feedback/common/strategy/b;

    invoke-direct {v1, p0, p1}, Lcom/tencent/feedback/common/strategy/b;-><init>(Lcom/tencent/feedback/common/strategy/a;Lcom/tencent/feedback/common/strategy/a$b;)V

    invoke-virtual {v0, v1}, Lcom/tencent/feedback/common/c;->a(Ljava/lang/Runnable;)V

    .line 284
    :cond_1
    const-string v0, "addStrategyChangeListener end"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 253
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 225
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/tencent/feedback/common/strategy/a;->d:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    monitor-exit p0

    return-void

    .line 225
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 215
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/tencent/feedback/common/strategy/a;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    monitor-exit p0

    return-void

    .line 215
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(Landroid/content/Context;)Lcom/tencent/feedback/common/strategy/SecurityStrategyBean;
    .locals 6
    .parameter

    .prologue
    const/16 v5, -0xa

    const/4 v0, 0x0

    .line 326
    monitor-enter p0

    :try_start_0
    const-string v1, "StrategyHolder.getSecurityStrategy() start"

    invoke-static {v1}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 328
    if-nez p1, :cond_0

    .line 356
    :goto_0
    monitor-exit p0

    return-object v0

    .line 331
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/tencent/feedback/common/strategy/a;->g:Lcom/tencent/feedback/common/strategy/SecurityStrategyBean;

    if-nez v1, :cond_3

    .line 333
    const-string v1, "load ssBean!"

    invoke-static {v1}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 337
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_4

    .line 339
    :cond_1
    :goto_1
    if-nez v0, :cond_2

    .line 342
    const-string v0, "create default security strategy bean!"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 345
    new-instance v0, Lcom/tencent/feedback/common/strategy/SecurityStrategyBean;

    invoke-direct {v0}, Lcom/tencent/feedback/common/strategy/SecurityStrategyBean;-><init>()V

    .line 346
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/tencent/feedback/common/strategy/SecurityStrategyBean;->setEncryAlgorithm(I)V

    .line 347
    const-string v1, "*^@K#K@!"

    invoke-virtual {v0, v1}, Lcom/tencent/feedback/common/strategy/SecurityStrategyBean;->setEncryKey(Ljava/lang/String;)V

    .line 348
    const-string v1, "S(@L@L@)"

    invoke-virtual {v0, v1}, Lcom/tencent/feedback/common/strategy/SecurityStrategyBean;->setPubEncryKey(Ljava/lang/String;)V

    .line 349
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/tencent/feedback/common/strategy/SecurityStrategyBean;->setZipAlgorithm(I)V

    .line 352
    :cond_2
    const-string v1, "back up new security!"

    invoke-static {v1}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    .line 353
    iput-object v0, p0, Lcom/tencent/feedback/common/strategy/a;->g:Lcom/tencent/feedback/common/strategy/SecurityStrategyBean;

    .line 355
    :cond_3
    const-string v0, "StrategyHolder.getSecurityStrategy() end"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    .line 356
    iget-object v0, p0, Lcom/tencent/feedback/common/strategy/a;->g:Lcom/tencent/feedback/common/strategy/SecurityStrategyBean;

    goto :goto_0

    .line 337
    :cond_4
    const-string v1, "#load security strategy\uff1a"

    invoke-static {v1}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    new-instance v1, Lcom/tencent/feedback/common/strategy/SecurityStrategyBean;

    invoke-direct {v1}, Lcom/tencent/feedback/common/strategy/SecurityStrategyBean;-><init>()V

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "eupstrategy"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "ea"

    const/16 v4, -0xa

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v5, :cond_1

    invoke-virtual {v1, v3}, Lcom/tencent/feedback/common/strategy/SecurityStrategyBean;->setEncryAlgorithm(I)V

    const-string v3, "ek"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-static {v3}, Lcom/tencent/feedback/common/strategy/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/tencent/feedback/common/strategy/SecurityStrategyBean;->setEncryKey(Ljava/lang/String;)V

    const-string v3, "za"

    const/16 v4, -0xa

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v5, :cond_1

    invoke-virtual {v1, v2}, Lcom/tencent/feedback/common/strategy/SecurityStrategyBean;->setZipAlgorithm(I)V

    const-string v0, "S(@L@L@)"

    invoke-virtual {v1, v0}, Lcom/tencent/feedback/common/strategy/SecurityStrategyBean;->setPubEncryKey(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    goto :goto_1

    .line 326
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(Lcom/tencent/feedback/common/strategy/a$b;)V
    .locals 1
    .parameter

    .prologue
    .line 290
    monitor-enter p0

    :try_start_0
    const-string v0, "removeStrategyChangeListener start"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 291
    if-nez p1, :cond_0

    .line 298
    :goto_0
    monitor-exit p0

    return-void

    .line 294
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/tencent/feedback/common/strategy/a;->a:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 295
    iget-object v0, p0, Lcom/tencent/feedback/common/strategy/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 297
    :cond_1
    const-string v0, "removeStrategyChangeListener end"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 290
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 235
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/tencent/feedback/common/strategy/a;->e:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    monitor-exit p0

    return-void

    .line 235
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(Z)V
    .locals 2
    .parameter

    .prologue
    .line 246
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set isQueryFinish:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 247
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/feedback/common/strategy/a;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    monitor-exit p0

    return-void

    .line 246
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c(Landroid/content/Context;)Lcom/tencent/feedback/common/strategy/UploadStrategyBean;
    .locals 8
    .parameter

    .prologue
    const/4 v3, 0x3

    const/16 v7, -0xa

    const/4 v0, 0x0

    const/4 v4, 0x1

    .line 577
    monitor-enter p0

    :try_start_0
    const-string v1, "StrategyHolder.getUploadStrategy() start"

    invoke-static {v1}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 579
    iget-object v1, p0, Lcom/tencent/feedback/common/strategy/a;->f:Lcom/tencent/feedback/common/strategy/UploadStrategyBean;

    if-nez v1, :cond_2

    if-eqz p1, :cond_2

    .line 582
    const-string v1, "load usBean!"

    invoke-static {v1}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 585
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v1, "StrategyHolder.loadUploadStrategy() start"

    invoke-static {v1}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    if-nez v2, :cond_3

    .line 587
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 590
    const-string v0, "create default upload strategy bean!"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 593
    new-instance v0, Lcom/tencent/feedback/common/strategy/UploadStrategyBean;

    invoke-direct {v0}, Lcom/tencent/feedback/common/strategy/UploadStrategyBean;-><init>()V

    .line 594
    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Lcom/tencent/feedback/common/strategy/UploadStrategyBean;->setMaxPackageSize(I)V

    .line 595
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/feedback/common/strategy/UploadStrategyBean;->setTestCount(I)V

    .line 596
    const-string v1, "http://monitor.uu.qq.com/analytics/upload"

    invoke-virtual {v0, v1}, Lcom/tencent/feedback/common/strategy/UploadStrategyBean;->setUploadServer(Ljava/lang/String;)V

    .line 597
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/tencent/feedback/common/strategy/UploadStrategyBean;->setUploadStrategy(I)V

    .line 599
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/feedback/common/strategy/UploadStrategyBean;->setExceptionUploadServerOpen(Z)V

    .line 600
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/feedback/common/strategy/UploadStrategyBean;->setExceptionUploadUserOpen(Z)V

    .line 602
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/feedback/common/strategy/UploadStrategyBean;->setSpeedMonitorServerOpen(Z)V

    .line 603
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/feedback/common/strategy/UploadStrategyBean;->setSpeedMonitorUserOpen(Z)V

    .line 605
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/feedback/common/strategy/UploadStrategyBean;->setUserEventServerOpen(Z)V

    .line 606
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/feedback/common/strategy/UploadStrategyBean;->setUserEventUserOpen(Z)V

    .line 609
    :cond_1
    iput-object v0, p0, Lcom/tencent/feedback/common/strategy/a;->f:Lcom/tencent/feedback/common/strategy/UploadStrategyBean;

    .line 610
    invoke-virtual {v0}, Lcom/tencent/feedback/common/strategy/UploadStrategyBean;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 611
    const-string v0, "create success"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 613
    :cond_2
    const-string v0, "StrategyHolder.getUploadStrategy() end"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 614
    iget-object v0, p0, Lcom/tencent/feedback/common/strategy/a;->f:Lcom/tencent/feedback/common/strategy/UploadStrategyBean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 585
    :cond_3
    :try_start_1
    const-string v1, "#load upload strategy\uff1a"

    invoke-static {v1}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    new-instance v1, Lcom/tencent/feedback/common/strategy/UploadStrategyBean;

    invoke-direct {v1}, Lcom/tencent/feedback/common/strategy/UploadStrategyBean;-><init>()V

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v5, "eupstrategy"

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v2, "ms"

    const/16 v6, -0xa

    invoke-interface {v5, v2, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v7, :cond_0

    const/16 v6, 0xa

    if-le v2, v6, :cond_8

    :goto_1
    invoke-virtual {v1, v2}, Lcom/tencent/feedback/common/strategy/UploadStrategyBean;->setMaxPackageSize(I)V

    const-string v2, "tms"

    const/16 v6, -0xa

    invoke-interface {v5, v2, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v7, :cond_0

    if-ltz v2, :cond_9

    :goto_2
    invoke-virtual {v1, v2}, Lcom/tencent/feedback/common/strategy/UploadStrategyBean;->setTestCount(I)V

    const-string v2, "use"

    const/4 v4, 0x0

    invoke-interface {v5, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v2}, Lcom/tencent/feedback/common/strategy/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_5

    :cond_4
    const-string v2, "http://monitor.uu.qq.com/analytics/upload"

    :cond_5
    sget-boolean v4, Lcom/tencent/feedback/common/Constants;->IS_USETESTSERVER:Z

    if-nez v4, :cond_7

    const-string v4, "http://monitor.uu.qq.com/analytics/upload"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "http://monitor.sp0309.3g.qq.com/analytics/upload"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "http://112.90.139.158:8080/analytics/upload"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_6
    const-string v2, "http://monitor.uu.qq.com/analytics/upload"

    :cond_7
    invoke-virtual {v1, v2}, Lcom/tencent/feedback/common/strategy/UploadStrategyBean;->setUploadServer(Ljava/lang/String;)V

    const-string v2, "ust"

    const/16 v4, -0xa

    invoke-interface {v5, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v7, :cond_0

    if-ltz v2, :cond_a

    move v0, v2

    :goto_3
    invoke-virtual {v1, v0}, Lcom/tencent/feedback/common/strategy/UploadStrategyBean;->setUploadStrategy(I)V

    const-string v0, "euso"

    const/4 v2, 0x1

    invoke-interface {v5, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/tencent/feedback/common/strategy/UploadStrategyBean;->setExceptionUploadServerOpen(Z)V

    const-string v0, "euuo"

    const/4 v2, 0x0

    invoke-interface {v5, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/tencent/feedback/common/strategy/UploadStrategyBean;->setExceptionUploadUserOpen(Z)V

    const-string v0, "smso"

    const/4 v2, 0x1

    invoke-interface {v5, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/tencent/feedback/common/strategy/UploadStrategyBean;->setSpeedMonitorServerOpen(Z)V

    const-string v0, "smuo"

    const/4 v2, 0x0

    invoke-interface {v5, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/tencent/feedback/common/strategy/UploadStrategyBean;->setSpeedMonitorUserOpen(Z)V

    const-string v0, "ueso"

    const/4 v2, 0x1

    invoke-interface {v5, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/tencent/feedback/common/strategy/UploadStrategyBean;->setUserEventServerOpen(Z)V

    const-string v0, "ueuo"

    const/4 v2, 0x0

    invoke-interface {v5, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/tencent/feedback/common/strategy/UploadStrategyBean;->setUserEventUserOpen(Z)V

    const-string v0, "uuid"

    const/4 v2, 0x0

    invoke-interface {v5, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tencent/feedback/common/strategy/UploadStrategyBean;->setApkUID(Ljava/lang/String;)V

    const-string v0, "StrategyHolder.loadUploadStrategy() end"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    goto/16 :goto_0

    :cond_8
    const/16 v2, 0xa

    goto/16 :goto_1

    :cond_9
    move v2, v4

    goto/16 :goto_2

    :cond_a
    move v0, v3

    goto :goto_3

    .line 577
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()Z
    .locals 1

    .prologue
    .line 210
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/feedback/common/strategy/a;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d()Z
    .locals 2

    .prologue
    .line 240
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isQueryFinish:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/tencent/feedback/common/strategy/a;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 241
    iget-boolean v0, p0, Lcom/tencent/feedback/common/strategy/a;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 240
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized e()[Lcom/tencent/feedback/common/strategy/a$b;
    .locals 2

    .prologue
    .line 315
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSclListArray "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/feedback/common/strategy/a;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    .line 316
    iget-object v0, p0, Lcom/tencent/feedback/common/strategy/a;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/feedback/common/strategy/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/tencent/feedback/common/strategy/a;->a:Ljava/util/List;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/tencent/feedback/common/strategy/a$b;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/feedback/common/strategy/a$b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 320
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 315
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

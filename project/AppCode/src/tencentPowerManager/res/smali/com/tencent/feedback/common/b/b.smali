.class public final Lcom/tencent/feedback/common/b/b;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static e:Lcom/tencent/feedback/common/b/b;

.field private static f:Lmqq/sdet/server/a/b;

.field private static g:Lcom/tencent/feedback/upload/UploadHandler;


# instance fields
.field private a:Ljava/util/List;

.field private b:Z

.field private c:Lcom/tencent/feedback/common/b/f;

.field private d:Lcom/tencent/feedback/common/b/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 47
    sput-object v0, Lcom/tencent/feedback/common/b/b;->e:Lcom/tencent/feedback/common/b/b;

    .line 48
    sput-object v0, Lcom/tencent/feedback/common/b/b;->f:Lmqq/sdet/server/a/b;

    .line 49
    sput-object v0, Lcom/tencent/feedback/common/b/b;->g:Lcom/tencent/feedback/upload/UploadHandler;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/feedback/common/b/b;->a:Ljava/util/List;

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/feedback/common/b/b;->b:Z

    .line 39
    iput-object v1, p0, Lcom/tencent/feedback/common/b/b;->c:Lcom/tencent/feedback/common/b/f;

    .line 40
    iput-object v1, p0, Lcom/tencent/feedback/common/b/b;->d:Lcom/tencent/feedback/common/b/a;

    .line 54
    const-string v0, "StrategyHolder.StrategyHolder() start"

    invoke-static {v0}, Lcom/tencent/feedback/common/c;->c(Ljava/lang/String;)V

    .line 57
    new-instance v0, Lcom/tencent/feedback/common/b/c;

    invoke-direct {v0, p0}, Lcom/tencent/feedback/common/b/c;-><init>(Lcom/tencent/feedback/common/b/b;)V

    .line 103
    const-string v1, "RQD_EmptyUp"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 106
    const-string v0, "StrategyHolder.StrategyHolder() end"

    invoke-static {v0}, Lcom/tencent/feedback/common/c;->c(Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/tencent/feedback/common/b/b;
    .locals 2
    .parameter

    .prologue
    .line 112
    const-class v1, Lcom/tencent/feedback/common/b/b;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/feedback/common/b/b;->e:Lcom/tencent/feedback/common/b/b;

    if-nez v0, :cond_0

    .line 115
    new-instance v0, Lcom/tencent/feedback/common/b/b;

    invoke-direct {v0}, Lcom/tencent/feedback/common/b/b;-><init>()V

    sput-object v0, Lcom/tencent/feedback/common/b/b;->e:Lcom/tencent/feedback/common/b/b;

    .line 117
    :cond_0
    sget-object v0, Lcom/tencent/feedback/common/b/b;->e:Lcom/tencent/feedback/common/b/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 112
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a()Lcom/tencent/feedback/upload/UploadHandler;
    .locals 2

    .prologue
    .line 123
    const-class v0, Lcom/tencent/feedback/common/b/b;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/feedback/common/b/b;->g:Lcom/tencent/feedback/upload/UploadHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    .line 567
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 569
    :cond_0
    const-string p0, ""

    .line 602
    :goto_0
    return-object p0

    .line 573
    :cond_1
    :try_start_0
    sget-object v0, Lcom/tencent/feedback/common/b/b;->f:Lmqq/sdet/server/a/b;

    if-nez v0, :cond_2

    .line 575
    const/4 v0, 0x1

    invoke-static {v0}, Lmqq/sdet/server/a/a;->a(I)Lmqq/sdet/server/a/b;

    move-result-object v0

    .line 576
    sput-object v0, Lcom/tencent/feedback/common/b/b;->f:Lmqq/sdet/server/a/b;

    const-string v1, "qqch2011"

    invoke-virtual {v0, v1}, Lmqq/sdet/server/a/b;->a(Ljava/lang/String;)V

    .line 579
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 581
    sget-object v1, Lcom/tencent/feedback/common/b/b;->f:Lmqq/sdet/server/a/b;

    invoke-virtual {v1, v0}, Lmqq/sdet/server/a/b;->b([B)[B

    move-result-object v1

    .line 583
    if-nez v1, :cond_3

    .line 584
    const/4 p0, 0x0

    goto :goto_0

    .line 587
    :cond_3
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 588
    const/4 v0, 0x0

    :goto_1
    array-length v3, v1

    if-ge v0, v3, :cond_4

    .line 590
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

    .line 588
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 593
    :cond_4
    const-string v0, "$"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->substring(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    .line 596
    :catch_0
    move-exception v0

    .line 598
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 599
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/feedback/common/c;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static declared-synchronized a(Lcom/tencent/feedback/upload/UploadHandler;)V
    .locals 2
    .parameter

    .prologue
    .line 153
    const-class v0, Lcom/tencent/feedback/common/b/b;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/tencent/feedback/common/b/b;->g:Lcom/tencent/feedback/upload/UploadHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    monitor-exit v0

    return-void

    .line 153
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 608
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_2

    .line 610
    :cond_0
    const-string p0, ""

    .line 685
    :cond_1
    :goto_0
    return-object p0

    .line 612
    :cond_2
    const/4 v1, 0x0

    .line 615
    :try_start_0
    sget-object v2, Lcom/tencent/feedback/common/b/b;->f:Lmqq/sdet/server/a/b;

    if-nez v2, :cond_3

    .line 617
    const/4 v2, 0x1

    invoke-static {v2}, Lmqq/sdet/server/a/a;->a(I)Lmqq/sdet/server/a/b;

    move-result-object v2

    .line 618
    sput-object v2, Lcom/tencent/feedback/common/b/b;->f:Lmqq/sdet/server/a/b;

    const-string v3, "qqch2011"

    invoke-virtual {v2, v3}, Lmqq/sdet/server/a/b;->a(Ljava/lang/String;)V

    .line 621
    :cond_3
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_5

    .line 623
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 625
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 626
    array-length v4, v1

    :goto_1
    if-ge v0, v4, :cond_6

    aget-char v5, v1, v0

    .line 628
    const/16 v6, 0x24

    if-ne v5, v6, :cond_5

    .line 631
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    if-lez v5, :cond_4

    .line 634
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v5

    .line 635
    invoke-virtual {v2, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 637
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 626
    :cond_4
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 643
    :cond_5
    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 662
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 664
    :goto_3
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 665
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/feedback/common/c;->b(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 670
    if-eqz v1, :cond_1

    .line 674
    :try_start_3
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 676
    :catch_1
    move-exception v0

    .line 679
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 647
    :cond_6
    :try_start_4
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0

    .line 648
    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 650
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 651
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 656
    sget-object v1, Lcom/tencent/feedback/common/b/b;->f:Lmqq/sdet/server/a/b;

    invoke-virtual {v1, v0}, Lmqq/sdet/server/a/b;->a([B)[B

    move-result-object v1

    .line 658
    if-eqz v1, :cond_7

    .line 659
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 670
    :try_start_5
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :goto_4
    move-object p0, v0

    .line 680
    goto :goto_0

    .line 676
    :catch_2
    move-exception v1

    .line 679
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 670
    :cond_7
    :try_start_6
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_0

    .line 676
    :catch_3
    move-exception v0

    .line 679
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 670
    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_5
    if-eqz v2, :cond_8

    .line 674
    :try_start_7
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 680
    :cond_8
    :goto_6
    throw v0

    .line 676
    :catch_4
    move-exception v1

    .line 679
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 670
    :catchall_1
    move-exception v0

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object v2, v1

    goto :goto_5

    .line 662
    :catch_5
    move-exception v0

    goto :goto_3
.end method


# virtual methods
.method public final declared-synchronized a(Landroid/content/Context;Lcom/tencent/feedback/common/b/a;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 250
    monitor-enter p0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 271
    :cond_0
    monitor-exit p0

    return-void

    .line 255
    :cond_1
    :try_start_0
    const-string v0, "#update new ssBean"

    invoke-static {v0}, Lcom/tencent/feedback/common/c;->c(Ljava/lang/String;)V

    .line 257
    iput-object p2, p0, Lcom/tencent/feedback/common/b/b;->d:Lcom/tencent/feedback/common/b/a;

    .line 259
    iget-object v1, p0, Lcom/tencent/feedback/common/b/b;->d:Lcom/tencent/feedback/common/b/a;

    if-eqz p1, :cond_2

    if-nez v1, :cond_3

    .line 261
    :cond_2
    :goto_0
    const-string v0, "#update success to notify listener"

    invoke-static {v0}, Lcom/tencent/feedback/common/c;->c(Ljava/lang/String;)V

    .line 263
    iget-object v0, p0, Lcom/tencent/feedback/common/b/b;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/tencent/feedback/common/b/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/feedback/common/b/e;

    .line 268
    iget-object v2, p0, Lcom/tencent/feedback/common/b/b;->d:Lcom/tencent/feedback/common/b/a;

    invoke-interface {v0, v2}, Lcom/tencent/feedback/common/b/e;->onSecurityStrategyChange(Lcom/tencent/feedback/common/b/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 250
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 259
    :cond_3
    :try_start_1
    const-string v0, "eupstrategy"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#save security strategy\uff1a\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/tencent/feedback/common/b/a;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/feedback/common/c;->c(Ljava/lang/String;)V

    const-string v2, "ea"

    invoke-virtual {v1}, Lcom/tencent/feedback/common/b/a;->b()I

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v2, "ek"

    invoke-virtual {v1}, Lcom/tencent/feedback/common/b/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/feedback/common/b/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "za"

    invoke-virtual {v1}, Lcom/tencent/feedback/common/b/a;->c()I

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    const-string v1, "update"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v0, "#save success!"

    invoke-static {v0}, Lcom/tencent/feedback/common/c;->c(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_4
    const-string v1, "save Security Strategy fail!"

    invoke-static {v1}, Lcom/tencent/feedback/common/c;->c(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v1

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
.end method

.method public final declared-synchronized a(Landroid/content/Context;Lcom/tencent/feedback/common/b/f;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 364
    monitor-enter p0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 382
    :cond_0
    monitor-exit p0

    return-void

    .line 367
    :cond_1
    :try_start_0
    const-string v0, "#update new usBean"

    invoke-static {v0}, Lcom/tencent/feedback/common/c;->c(Ljava/lang/String;)V

    .line 369
    iput-object p2, p0, Lcom/tencent/feedback/common/b/b;->c:Lcom/tencent/feedback/common/b/f;

    .line 371
    if-eqz p1, :cond_2

    if-nez p2, :cond_3

    .line 373
    :cond_2
    :goto_0
    const-string v0, "#update success to notify listener"

    invoke-static {v0}, Lcom/tencent/feedback/common/c;->c(Ljava/lang/String;)V

    .line 375
    iget-object v0, p0, Lcom/tencent/feedback/common/b/b;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/tencent/feedback/common/b/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/feedback/common/b/e;

    .line 379
    iget-object v2, p0, Lcom/tencent/feedback/common/b/b;->c:Lcom/tencent/feedback/common/b/f;

    invoke-interface {v0, v2}, Lcom/tencent/feedback/common/b/e;->onUploadStrategyChange(Lcom/tencent/feedback/common/b/f;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 364
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 371
    :cond_3
    :try_start_1
    const-string v0, "eupstrategy"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    monitor-enter p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#save upload strategy\uff1a\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/tencent/feedback/common/b/f;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/feedback/common/c;->c(Ljava/lang/String;)V

    const-string v1, "ms"

    invoke-virtual {p2}, Lcom/tencent/feedback/common/b/f;->b()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v1, "tms"

    invoke-virtual {p2}, Lcom/tencent/feedback/common/b/f;->a()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v1, "use"

    invoke-virtual {p2}, Lcom/tencent/feedback/common/b/f;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/feedback/common/b/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "ust"

    invoke-virtual {p2}, Lcom/tencent/feedback/common/b/f;->c()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v1, "euso"

    invoke-virtual {p2}, Lcom/tencent/feedback/common/b/f;->f()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v1, "euuo"

    invoke-virtual {p2}, Lcom/tencent/feedback/common/b/f;->i()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v1, "smso"

    invoke-virtual {p2}, Lcom/tencent/feedback/common/b/f;->e()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v1, "smuo"

    invoke-virtual {p2}, Lcom/tencent/feedback/common/b/f;->h()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v1, "ueso"

    invoke-virtual {p2}, Lcom/tencent/feedback/common/b/f;->g()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v1, "ueuo"

    invoke-virtual {p2}, Lcom/tencent/feedback/common/b/f;->j()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    const-string v1, "update"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v0, "#save success!"

    invoke-static {v0}, Lcom/tencent/feedback/common/c;->c(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    :goto_2
    :try_start_4
    const-string v0, "#save success!"

    invoke-static {v0}, Lcom/tencent/feedback/common/c;->c(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit p2

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception v0

    :try_start_6
    const-string v1, "save upload Strategy fail!"

    invoke-static {v1}, Lcom/tencent/feedback/common/c;->c(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2
.end method

.method public final declared-synchronized a(Lcom/tencent/feedback/common/b/e;)V
    .locals 2
    .parameter

    .prologue
    .line 166
    monitor-enter p0

    if-nez p1, :cond_1

    .line 186
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 169
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/tencent/feedback/common/b/b;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/feedback/common/b/b;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/tencent/feedback/common/b/b;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    iget-boolean v0, p0, Lcom/tencent/feedback/common/b/b;->b:Z

    if-eqz v0, :cond_0

    .line 174
    new-instance v0, Lcom/tencent/feedback/common/b/d;

    invoke-direct {v0, p0, p1}, Lcom/tencent/feedback/common/b/d;-><init>(Lcom/tencent/feedback/common/b/b;Lcom/tencent/feedback/common/b/e;)V

    .line 182
    const-string v1, "addStrategyInitThread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 183
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 166
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 148
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/tencent/feedback/common/b/b;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    monitor-exit p0

    return-void

    .line 148
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(Landroid/content/Context;)Lcom/tencent/feedback/common/b/a;
    .locals 6
    .parameter

    .prologue
    const/16 v5, -0xa

    const/4 v0, 0x0

    .line 213
    monitor-enter p0

    :try_start_0
    const-string v1, "StrategyHolder.getSecurityStrategy() start"

    invoke-static {v1}, Lcom/tencent/feedback/common/c;->c(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    if-nez p1, :cond_0

    .line 243
    :goto_0
    monitor-exit p0

    return-object v0

    .line 218
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/tencent/feedback/common/b/b;->d:Lcom/tencent/feedback/common/b/a;

    if-nez v1, :cond_3

    .line 220
    const-string v1, "load ssBean!"

    invoke-static {v1}, Lcom/tencent/feedback/common/c;->c(Ljava/lang/String;)V

    .line 224
    if-nez p1, :cond_4

    .line 226
    :cond_1
    :goto_1
    if-nez v0, :cond_2

    .line 229
    const-string v0, "create default security strategy bean!"

    invoke-static {v0}, Lcom/tencent/feedback/common/c;->c(Ljava/lang/String;)V

    .line 232
    new-instance v0, Lcom/tencent/feedback/common/b/a;

    invoke-direct {v0}, Lcom/tencent/feedback/common/b/a;-><init>()V

    .line 233
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/tencent/feedback/common/b/a;->a(I)V

    .line 234
    const-string v1, "*^@K#K@!"

    invoke-virtual {v0, v1}, Lcom/tencent/feedback/common/b/a;->a(Ljava/lang/String;)V

    .line 235
    const-string v1, "S(@L@L@)"

    invoke-virtual {v0, v1}, Lcom/tencent/feedback/common/b/a;->b(Ljava/lang/String;)V

    .line 236
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/tencent/feedback/common/b/a;->b(I)V

    .line 239
    :cond_2
    const-string v1, "back up new security!"

    invoke-static {v1}, Lcom/tencent/feedback/common/c;->a(Ljava/lang/String;)V

    .line 240
    iput-object v0, p0, Lcom/tencent/feedback/common/b/b;->d:Lcom/tencent/feedback/common/b/a;

    .line 243
    :cond_3
    iget-object v0, p0, Lcom/tencent/feedback/common/b/b;->d:Lcom/tencent/feedback/common/b/a;

    goto :goto_0

    .line 224
    :cond_4
    const-string v1, "#load security strategy\uff1a"

    invoke-static {v1}, Lcom/tencent/feedback/common/c;->c(Ljava/lang/String;)V

    new-instance v1, Lcom/tencent/feedback/common/b/a;

    invoke-direct {v1}, Lcom/tencent/feedback/common/b/a;-><init>()V

    const-string v2, "eupstrategy"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "ea"

    const/16 v4, -0xa

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v5, :cond_1

    invoke-virtual {v1, v3}, Lcom/tencent/feedback/common/b/a;->a(I)V

    const-string v3, "ek"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-static {v3}, Lcom/tencent/feedback/common/b/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/tencent/feedback/common/b/a;->a(Ljava/lang/String;)V

    const-string v3, "za"

    const/16 v4, -0xa

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v5, :cond_1

    invoke-virtual {v1, v2}, Lcom/tencent/feedback/common/b/a;->b(I)V

    const-string v0, "S(@L@L@)"

    invoke-virtual {v1, v0}, Lcom/tencent/feedback/common/b/a;->b(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    goto :goto_1

    .line 213
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()[Lcom/tencent/feedback/common/b/e;
    .locals 2

    .prologue
    .line 128
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/feedback/common/b/b;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/feedback/common/b/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/tencent/feedback/common/b/b;->a:Ljava/util/List;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/tencent/feedback/common/b/e;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/feedback/common/b/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 128
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c(Landroid/content/Context;)Lcom/tencent/feedback/common/b/f;
    .locals 8
    .parameter

    .prologue
    const/4 v3, 0x3

    const/16 v7, -0xa

    const/4 v0, 0x0

    const/4 v4, 0x1

    .line 432
    monitor-enter p0

    :try_start_0
    const-string v1, "StrategyHolder.getUploadStrategy() start"

    invoke-static {v1}, Lcom/tencent/feedback/common/c;->c(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 434
    if-nez p1, :cond_0

    .line 472
    :goto_0
    monitor-exit p0

    return-object v0

    .line 437
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/tencent/feedback/common/b/b;->c:Lcom/tencent/feedback/common/b/f;

    if-nez v1, :cond_3

    .line 440
    const-string v1, "load usBean!"

    invoke-static {v1}, Lcom/tencent/feedback/common/c;->c(Ljava/lang/String;)V

    .line 443
    if-nez p1, :cond_4

    .line 445
    :cond_1
    :goto_1
    if-nez v0, :cond_2

    .line 448
    const-string v0, "create default upload strategy bean!"

    invoke-static {v0}, Lcom/tencent/feedback/common/c;->c(Ljava/lang/String;)V

    .line 451
    new-instance v0, Lcom/tencent/feedback/common/b/f;

    invoke-direct {v0}, Lcom/tencent/feedback/common/b/f;-><init>()V

    .line 452
    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Lcom/tencent/feedback/common/b/f;->b(I)V

    .line 453
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/feedback/common/b/f;->a(I)V

    .line 454
    const-string v1, "http://monitor.uu.qq.com/analytics/upload"

    invoke-virtual {v0, v1}, Lcom/tencent/feedback/common/b/f;->a(Ljava/lang/String;)V

    .line 455
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/tencent/feedback/common/b/f;->c(I)V

    .line 457
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/feedback/common/b/f;->b(Z)V

    .line 458
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/feedback/common/b/f;->e(Z)V

    .line 460
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/feedback/common/b/f;->a(Z)V

    .line 461
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/feedback/common/b/f;->d(Z)V

    .line 463
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/feedback/common/b/f;->c(Z)V

    .line 464
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/feedback/common/b/f;->f(Z)V

    .line 467
    :cond_2
    iput-object v0, p0, Lcom/tencent/feedback/common/b/b;->c:Lcom/tencent/feedback/common/b/f;

    .line 468
    invoke-virtual {v0}, Lcom/tencent/feedback/common/b/f;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/feedback/common/c;->c(Ljava/lang/String;)V

    .line 469
    const-string v0, "create success"

    invoke-static {v0}, Lcom/tencent/feedback/common/c;->c(Ljava/lang/String;)V

    .line 471
    :cond_3
    const-string v0, "StrategyHolder.getUploadStrategy() end"

    invoke-static {v0}, Lcom/tencent/feedback/common/c;->c(Ljava/lang/String;)V

    .line 472
    iget-object v0, p0, Lcom/tencent/feedback/common/b/b;->c:Lcom/tencent/feedback/common/b/f;

    goto :goto_0

    .line 443
    :cond_4
    const-string v1, "#load upload strategy\uff1a"

    invoke-static {v1}, Lcom/tencent/feedback/common/c;->c(Ljava/lang/String;)V

    new-instance v1, Lcom/tencent/feedback/common/b/f;

    invoke-direct {v1}, Lcom/tencent/feedback/common/b/f;-><init>()V

    const-string v2, "eupstrategy"

    const/4 v5, 0x0

    invoke-virtual {p1, v2, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v2, "ms"

    const/16 v6, -0xa

    invoke-interface {v5, v2, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v7, :cond_1

    const/16 v6, 0xa

    if-le v2, v6, :cond_9

    :goto_2
    invoke-virtual {v1, v2}, Lcom/tencent/feedback/common/b/f;->b(I)V

    const-string v2, "tms"

    const/16 v6, -0xa

    invoke-interface {v5, v2, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v7, :cond_1

    if-ltz v2, :cond_a

    :goto_3
    invoke-virtual {v1, v2}, Lcom/tencent/feedback/common/b/f;->a(I)V

    const-string v2, "use"

    const/4 v4, 0x0

    invoke-interface {v5, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {v2}, Lcom/tencent/feedback/common/b/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_6

    :cond_5
    const-string v2, "http://monitor.uu.qq.com/analytics/upload"

    :cond_6
    sget-boolean v4, Lcom/tencent/feedback/common/Constants;->IS_USETESTSERVER:Z

    if-nez v4, :cond_8

    const-string v4, "http://monitor.uu.qq.com/analytics/upload"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    const-string v4, "http://monitor.sp0309.3g.qq.com/analytics/upload"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "http://112.90.139.158:8080/analytics/upload"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    :cond_7
    const-string v2, "http://monitor.uu.qq.com/analytics/upload"

    :cond_8
    invoke-virtual {v1, v2}, Lcom/tencent/feedback/common/b/f;->a(Ljava/lang/String;)V

    const-string v2, "ust"

    const/16 v4, -0xa

    invoke-interface {v5, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v7, :cond_1

    if-ltz v2, :cond_b

    move v0, v2

    :goto_4
    invoke-virtual {v1, v0}, Lcom/tencent/feedback/common/b/f;->c(I)V

    const-string v0, "euso"

    const/4 v2, 0x1

    invoke-interface {v5, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/tencent/feedback/common/b/f;->b(Z)V

    const-string v0, "euuo"

    const/4 v2, 0x0

    invoke-interface {v5, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/tencent/feedback/common/b/f;->e(Z)V

    const-string v0, "smso"

    const/4 v2, 0x1

    invoke-interface {v5, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/tencent/feedback/common/b/f;->a(Z)V

    const-string v0, "smuo"

    const/4 v2, 0x0

    invoke-interface {v5, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/tencent/feedback/common/b/f;->d(Z)V

    const-string v0, "ueso"

    const/4 v2, 0x1

    invoke-interface {v5, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/tencent/feedback/common/b/f;->c(Z)V

    const-string v0, "ueuo"

    const/4 v2, 0x0

    invoke-interface {v5, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/tencent/feedback/common/b/f;->f(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    goto/16 :goto_1

    :cond_9
    const/16 v2, 0xa

    goto/16 :goto_2

    :cond_a
    move v2, v4

    goto/16 :goto_3

    :cond_b
    move v0, v3

    goto :goto_4

    .line 432
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.class public final Lcom/keniu/security/process/l;
.super Ljava/lang/Object;
.source "ProcessManagerActivity.java"


# instance fields
.field public a:Ljava/util/Map;

.field final synthetic b:Lcom/keniu/security/process/ProcessManagerActivity;


# direct methods
.method public constructor <init>(Lcom/keniu/security/process/ProcessManagerActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 556
    iput-object p1, p0, Lcom/keniu/security/process/l;->b:Lcom/keniu/security/process/ProcessManagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 557
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/keniu/security/process/l;->a:Ljava/util/Map;

    return-void
.end method

.method private b()Z
    .locals 1

    .prologue
    .line 623
    iget-object v0, p0, Lcom/keniu/security/process/l;->b:Lcom/keniu/security/process/ProcessManagerActivity;

    iget-boolean v0, v0, Lcom/keniu/security/process/ProcessManagerActivity;->a:Z

    return v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)I
    .locals 1
    .parameter

    .prologue
    .line 627
    iget-object v0, p0, Lcom/keniu/security/process/l;->a:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 628
    iget-object v0, p0, Lcom/keniu/security/process/l;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 629
    iget-object v0, p0, Lcom/keniu/security/process/l;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 632
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a()V
    .locals 11

    .prologue
    const/4 v9, 0x1

    const/4 v4, 0x0

    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 560
    .line 564
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const-string v1, "top -n 1 -d 1"

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8

    move-result-object v0

    .line 566
    :try_start_1
    iget-object v1, p0, Lcom/keniu/security/process/l;->b:Lcom/keniu/security/process/ProcessManagerActivity;

    iget-boolean v1, v1, Lcom/keniu/security/process/ProcessManagerActivity;->a:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_9

    if-eqz v1, :cond_1

    .line 613
    if-eqz v0, :cond_0

    .line 616
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    .line 619
    :cond_0
    :goto_0
    return-void

    .line 569
    :cond_1
    if-nez v0, :cond_2

    .line 613
    if-eqz v0, :cond_0

    .line 616
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 618
    :catch_0
    move-exception v0

    goto :goto_0

    .line 572
    :cond_2
    :try_start_4
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 573
    new-instance v2, Ljava/io/BufferedReader;

    const/16 v3, 0x80

    invoke-direct {v2, v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_9

    .line 574
    :cond_3
    :goto_1
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v3, p0, Lcom/keniu/security/process/l;->b:Lcom/keniu/security/process/ProcessManagerActivity;

    iget-boolean v3, v3, Lcom/keniu/security/process/ProcessManagerActivity;->a:Z

    if-nez v3, :cond_7

    .line 576
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 577
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 578
    const-string v3, "\\s+"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 580
    const-string v3, ""

    .line 581
    array-length v4, v1

    if-ne v4, v8, :cond_6

    .line 582
    const/4 v4, 0x7

    aget-object v4, v1, v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    move-result v4

    if-eqz v4, :cond_a

    .line 584
    const/4 v4, 0x5

    :try_start_6
    aget-object v4, v1, v4

    const/4 v5, 0x0

    const/4 v6, 0x5

    aget-object v6, v1, v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v9

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    move-result v4

    .line 586
    const/4 v5, 0x7

    :try_start_7
    aget-object v1, v1, v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_b

    move v3, v4

    .line 601
    :goto_2
    :try_start_8
    const-string v4, ":"

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 602
    if-lez v4, :cond_4

    .line 603
    const/4 v5, 0x0

    invoke-virtual {v1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 605
    :cond_4
    iget-object v4, p0, Lcom/keniu/security/process/l;->a:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_3

    .line 606
    iget-object v4, p0, Lcom/keniu/security/process/l;->a:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_1

    .line 610
    :catch_1
    move-exception v1

    move-object v1, v2

    :goto_3
    const/4 v2, 0x0

    :try_start_9
    iput-object v2, p0, Lcom/keniu/security/process/l;->a:Ljava/util/Map;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 613
    if-eqz v1, :cond_5

    .line 614
    :try_start_a
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 615
    :cond_5
    if-eqz v0, :cond_0

    .line 616
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    goto/16 :goto_0

    .line 619
    :catch_2
    move-exception v0

    goto/16 :goto_0

    .line 588
    :catch_3
    move-exception v1

    move v1, v7

    :goto_4
    move-object v10, v3

    move v3, v1

    move-object v1, v10

    goto :goto_2

    .line 590
    :cond_6
    :try_start_b
    array-length v4, v1

    const/16 v5, 0x9

    if-ne v4, v5, :cond_a

    .line 591
    const/16 v4, 0x8

    aget-object v4, v1, v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    move-result v4

    if-eqz v4, :cond_a

    .line 593
    const/4 v4, 0x5

    :try_start_c
    aget-object v4, v1, v4

    const/4 v5, 0x0

    const/4 v6, 0x5

    aget-object v6, v1, v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v9

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_c} :catch_4
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1

    move-result v4

    .line 595
    const/16 v5, 0x8

    :try_start_d
    aget-object v1, v1, v5
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_d} :catch_a
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1

    move v3, v4

    .line 598
    goto :goto_2

    .line 596
    :catch_4
    move-exception v1

    move v4, v7

    :goto_5
    :try_start_e
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1

    move-object v1, v3

    move v3, v4

    goto :goto_2

    .line 613
    :cond_7
    :try_start_f
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 615
    if-eqz v0, :cond_0

    .line 616
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_5

    goto/16 :goto_0

    .line 619
    :catch_5
    move-exception v0

    goto/16 :goto_0

    .line 612
    :catchall_0
    move-exception v0

    move-object v1, v4

    move-object v2, v4

    .line 613
    :goto_6
    if-eqz v2, :cond_8

    .line 614
    :try_start_10
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 615
    :cond_8
    if-eqz v1, :cond_9

    .line 616
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_7

    .line 618
    :cond_9
    :goto_7
    throw v0

    :catch_6
    move-exception v0

    goto/16 :goto_0

    :catch_7
    move-exception v1

    goto :goto_7

    .line 612
    :catchall_1
    move-exception v1

    move-object v2, v4

    move-object v10, v0

    move-object v0, v1

    move-object v1, v10

    goto :goto_6

    :catchall_2
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto :goto_6

    :catchall_3
    move-exception v2

    move-object v10, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v10

    goto :goto_6

    .line 610
    :catch_8
    move-exception v0

    move-object v0, v4

    move-object v1, v4

    goto :goto_3

    :catch_9
    move-exception v1

    move-object v1, v4

    goto/16 :goto_3

    .line 596
    :catch_a
    move-exception v1

    goto :goto_5

    .line 588
    :catch_b
    move-exception v1

    move v1, v4

    goto :goto_4

    :cond_a
    move-object v1, v3

    move v3, v7

    goto/16 :goto_2
.end method

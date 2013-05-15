.class public Lcom/avast/android/mobilesecurity/engine/s;
.super Ljava/lang/Object;
.source "ScanResultStructure.java"


# instance fields
.field public a:Lcom/avast/android/mobilesecurity/engine/x;

.field public b:Ljava/lang/String;

.field public c:Lcom/avast/android/mobilesecurity/engine/v;

.field public d:Lcom/avast/android/mobilesecurity/engine/u;

.field public e:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 405
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 372
    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/s;->a:Lcom/avast/android/mobilesecurity/engine/x;

    .line 377
    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/s;->b:Ljava/lang/String;

    .line 382
    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/s;->c:Lcom/avast/android/mobilesecurity/engine/v;

    .line 387
    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/s;->d:Lcom/avast/android/mobilesecurity/engine/u;

    .line 393
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/avast/android/mobilesecurity/engine/s;->e:Z

    .line 406
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/x;->j:Lcom/avast/android/mobilesecurity/engine/x;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/s;->a:Lcom/avast/android/mobilesecurity/engine/x;

    .line 407
    return-void
.end method

.method public constructor <init>(Lcom/avast/android/mobilesecurity/engine/x;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 421
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 372
    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/s;->a:Lcom/avast/android/mobilesecurity/engine/x;

    .line 377
    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/s;->b:Ljava/lang/String;

    .line 382
    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/s;->c:Lcom/avast/android/mobilesecurity/engine/v;

    .line 387
    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/s;->d:Lcom/avast/android/mobilesecurity/engine/u;

    .line 393
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/avast/android/mobilesecurity/engine/s;->e:Z

    .line 422
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/x;->j:Lcom/avast/android/mobilesecurity/engine/x;

    invoke-virtual {v0, p1}, Lcom/avast/android/mobilesecurity/engine/x;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    .line 423
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Infection description must be passed if the scan result is not RESULT_OK"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 426
    :cond_0
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/engine/s;->a:Lcom/avast/android/mobilesecurity/engine/x;

    .line 427
    iput-object p2, p0, Lcom/avast/android/mobilesecurity/engine/s;->b:Ljava/lang/String;

    .line 428
    return-void
.end method

.method private static a(Lcom/avast/android/mobilesecurity/engine/v;)Lcom/avast/android/mobilesecurity/engine/u;
    .locals 2
    .parameter

    .prologue
    .line 547
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/t;->b:[I

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/v;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 570
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/u;->a:Lcom/avast/android/mobilesecurity/engine/u;

    .line 571
    :goto_0
    return-object v0

    .line 558
    :pswitch_0
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/u;->b:Lcom/avast/android/mobilesecurity/engine/u;

    goto :goto_0

    .line 563
    :pswitch_1
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/u;->d:Lcom/avast/android/mobilesecurity/engine/u;

    goto :goto_0

    .line 567
    :pswitch_2
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/u;->c:Lcom/avast/android/mobilesecurity/engine/u;

    goto :goto_0

    .line 547
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private static a(Ljava/lang/String;)Lcom/avast/android/mobilesecurity/engine/v;
    .locals 2
    .parameter

    .prologue
    .line 576
    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 577
    :cond_0
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/v;->a:Lcom/avast/android/mobilesecurity/engine/v;

    .line 625
    :goto_0
    return-object v0

    .line 579
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 580
    const-string v1, " [DIALER]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 581
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/v;->b:Lcom/avast/android/mobilesecurity/engine/v;

    goto :goto_0

    .line 583
    :cond_2
    const-string v1, " [ADW]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 584
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/v;->c:Lcom/avast/android/mobilesecurity/engine/v;

    goto :goto_0

    .line 586
    :cond_3
    const-string v1, " [CRYP]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 587
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/v;->d:Lcom/avast/android/mobilesecurity/engine/v;

    goto :goto_0

    .line 589
    :cond_4
    const-string v1, " [DRP]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 590
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/v;->e:Lcom/avast/android/mobilesecurity/engine/v;

    goto :goto_0

    .line 592
    :cond_5
    const-string v1, " [EXPL]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 593
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/v;->f:Lcom/avast/android/mobilesecurity/engine/v;

    goto :goto_0

    .line 595
    :cond_6
    const-string v1, " [KIT]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 596
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/v;->g:Lcom/avast/android/mobilesecurity/engine/v;

    goto :goto_0

    .line 598
    :cond_7
    const-string v1, " [RTK]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 599
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/v;->h:Lcom/avast/android/mobilesecurity/engine/v;

    goto :goto_0

    .line 601
    :cond_8
    const-string v1, " [SPY]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 602
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/v;->i:Lcom/avast/android/mobilesecurity/engine/v;

    goto :goto_0

    .line 604
    :cond_9
    const-string v1, " [TRJ]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 605
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/v;->j:Lcom/avast/android/mobilesecurity/engine/v;

    goto :goto_0

    .line 607
    :cond_a
    const-string v1, " [WRM]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 608
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/v;->k:Lcom/avast/android/mobilesecurity/engine/v;

    goto :goto_0

    .line 610
    :cond_b
    const-string v1, " [PUP]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 611
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/v;->l:Lcom/avast/android/mobilesecurity/engine/v;

    goto :goto_0

    .line 613
    :cond_c
    const-string v1, " [JOKE]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 614
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/v;->m:Lcom/avast/android/mobilesecurity/engine/v;

    goto/16 :goto_0

    .line 616
    :cond_d
    const-string v1, " [TOOL]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 617
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/v;->n:Lcom/avast/android/mobilesecurity/engine/v;

    goto/16 :goto_0

    .line 619
    :cond_e
    const-string v1, " [HEUR]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 620
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/v;->o:Lcom/avast/android/mobilesecurity/engine/v;

    goto/16 :goto_0

    .line 622
    :cond_f
    const-string v1, " [SUSP]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 623
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/v;->p:Lcom/avast/android/mobilesecurity/engine/v;

    goto/16 :goto_0

    .line 625
    :cond_10
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/v;->j:Lcom/avast/android/mobilesecurity/engine/v;

    goto/16 :goto_0
.end method

.method private static a([BI)Lcom/avast/android/mobilesecurity/engine/x;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 539
    const/4 v0, 0x0

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0, v1, p1}, Lcom/avast/android/generic/util/e;->a([BLjava/nio/ByteOrder;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->intValue()I

    move-result v0

    .line 541
    add-int/lit16 v0, v0, 0x100

    rem-int/lit16 v0, v0, 0x100

    .line 542
    invoke-static {v0}, Lcom/avast/android/mobilesecurity/engine/x;->a(I)Lcom/avast/android/mobilesecurity/engine/x;

    move-result-object v0

    return-object v0
.end method

.method public static a()Ljava/lang/Integer;
    .locals 3

    .prologue
    .line 440
    const-string v0, "srs-2"

    const-string v1, "srs-2"

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static a([B)Ljava/util/List;
    .locals 6
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 445
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 446
    if-nez p0, :cond_0

    move-object v0, v3

    .line 466
    :goto_0
    return-object v0

    .line 449
    :cond_0
    invoke-static {p0}, Lcom/avast/android/generic/util/e;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    move v1, v2

    .line 451
    :goto_1
    array-length v0, p0

    if-ge v1, v0, :cond_1

    .line 453
    const/4 v0, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0, v4, v1}, Lcom/avast/android/generic/util/e;->a([BLjava/nio/ByteOrder;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    .line 455
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ScanResultStructure.parseResultList - numResultBytes="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    .line 457
    new-array v4, v0, [B

    .line 458
    invoke-static {p0, v1, v4, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 460
    add-int/2addr v0, v1

    .line 461
    invoke-static {v4}, Lcom/avast/android/mobilesecurity/engine/s;->b([B)Lcom/avast/android/mobilesecurity/engine/s;

    move-result-object v1

    .line 462
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ScanResultStructure.parseResultList - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/avast/android/mobilesecurity/engine/s;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    .line 464
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v0

    .line 465
    goto :goto_1

    :cond_1
    move-object v0, v3

    .line 466
    goto :goto_0
.end method

.method public static b([B)Lcom/avast/android/mobilesecurity/engine/s;
    .locals 6
    .parameter

    .prologue
    .line 470
    new-instance v2, Lcom/avast/android/mobilesecurity/engine/s;

    invoke-direct {v2}, Lcom/avast/android/mobilesecurity/engine/s;-><init>()V

    .line 472
    const/4 v0, 0x0

    .line 473
    const/4 v1, 0x0

    :try_start_0
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v1, v3, v0}, Lcom/avast/android/generic/util/e;->a([BLjava/nio/ByteOrder;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 475
    const/4 v0, 0x4

    .line 476
    add-int/lit8 v1, v1, 0x4

    array-length v3, p0

    if-eq v1, v3, :cond_3

    .line 477
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid structure length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 519
    :catch_0
    move-exception v0

    .line 520
    const-string v1, "Exception parsing scan result"

    invoke-static {v1, v0}, Lcom/avast/android/generic/util/m;->b(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 521
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/x;->a:Lcom/avast/android/mobilesecurity/engine/x;

    iput-object v0, v2, Lcom/avast/android/mobilesecurity/engine/s;->a:Lcom/avast/android/mobilesecurity/engine/x;

    .line 522
    const-string v0, ""

    iput-object v0, v2, Lcom/avast/android/mobilesecurity/engine/s;->b:Ljava/lang/String;

    .line 524
    :cond_0
    iget-object v0, v2, Lcom/avast/android/mobilesecurity/engine/s;->a:Lcom/avast/android/mobilesecurity/engine/x;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/engine/x;->a()I

    move-result v0

    sget-object v1, Lcom/avast/android/mobilesecurity/engine/x;->j:Lcom/avast/android/mobilesecurity/engine/x;

    invoke-virtual {v1}, Lcom/avast/android/mobilesecurity/engine/x;->a()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 526
    iget-object v0, v2, Lcom/avast/android/mobilesecurity/engine/s;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/engine/s;->a(Ljava/lang/String;)Lcom/avast/android/mobilesecurity/engine/v;

    move-result-object v0

    iput-object v0, v2, Lcom/avast/android/mobilesecurity/engine/s;->c:Lcom/avast/android/mobilesecurity/engine/v;

    .line 527
    iget-object v0, v2, Lcom/avast/android/mobilesecurity/engine/s;->c:Lcom/avast/android/mobilesecurity/engine/v;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/engine/s;->a(Lcom/avast/android/mobilesecurity/engine/v;)Lcom/avast/android/mobilesecurity/engine/u;

    move-result-object v0

    iput-object v0, v2, Lcom/avast/android/mobilesecurity/engine/s;->d:Lcom/avast/android/mobilesecurity/engine/u;

    .line 529
    :cond_1
    iget-object v0, v2, Lcom/avast/android/mobilesecurity/engine/s;->b:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v0, ""

    iget-object v1, v2, Lcom/avast/android/mobilesecurity/engine/s;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 534
    :cond_2
    return-object v2

    :cond_3
    move v1, v0

    .line 483
    :goto_0
    :try_start_1
    array-length v0, p0

    if-ge v1, v0, :cond_0

    .line 484
    const/4 v0, 0x0

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0, v3, v1}, Lcom/avast/android/generic/util/e;->a([BLjava/nio/ByteOrder;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 486
    add-int/lit8 v1, v1, 0x4

    .line 487
    add-int v0, v1, v3

    add-int/lit8 v0, v0, -0x1

    aget-byte v0, p0, v0

    const/4 v4, -0x1

    if-eq v0, v4, :cond_4

    .line 488
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid payload length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 491
    :cond_4
    const/4 v0, 0x0

    sget-object v4, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0, v4, v1}, Lcom/avast/android/generic/util/e;->a([BLjava/nio/ByteOrder;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    .line 493
    invoke-static {v0}, Lcom/avast/android/mobilesecurity/engine/w;->a(S)Lcom/avast/android/mobilesecurity/engine/w;

    move-result-object v0

    .line 494
    if-eqz v0, :cond_5

    .line 495
    sget-object v4, Lcom/avast/android/mobilesecurity/engine/t;->a:[I

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/engine/w;->ordinal()I

    move-result v0

    aget v0, v4, v0

    packed-switch v0, :pswitch_data_0

    .line 516
    :cond_5
    :goto_1
    add-int v0, v1, v3

    move v1, v0

    goto :goto_0

    .line 497
    :pswitch_0
    add-int/lit8 v0, v1, 0x2

    invoke-static {p0, v0}, Lcom/avast/android/mobilesecurity/engine/s;->a([BI)Lcom/avast/android/mobilesecurity/engine/x;

    move-result-object v0

    iput-object v0, v2, Lcom/avast/android/mobilesecurity/engine/s;->a:Lcom/avast/android/mobilesecurity/engine/x;

    .line 500
    iget-object v0, v2, Lcom/avast/android/mobilesecurity/engine/s;->a:Lcom/avast/android/mobilesecurity/engine/x;

    if-nez v0, :cond_5

    .line 505
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/x;->j:Lcom/avast/android/mobilesecurity/engine/x;

    iput-object v0, v2, Lcom/avast/android/mobilesecurity/engine/s;->a:Lcom/avast/android/mobilesecurity/engine/x;

    goto :goto_1

    .line 509
    :pswitch_1
    new-instance v0, Ljava/lang/String;

    add-int/lit8 v4, v1, 0x2

    add-int/lit8 v5, v3, -0x2

    add-int/lit8 v5, v5, -0x1

    invoke-direct {v0, p0, v4, v5}, Ljava/lang/String;-><init>([BII)V

    iput-object v0, v2, Lcom/avast/android/mobilesecurity/engine/s;->b:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 495
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

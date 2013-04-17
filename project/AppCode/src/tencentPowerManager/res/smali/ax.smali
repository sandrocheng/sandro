.class public final Lax;
.super Lar;


# instance fields
.field private j:Lz;

.field private k:Z

.field private l:Lay;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZZ)V
    .locals 3

    sget v0, Lar;->a:I

    invoke-direct {p0, p1, p2, p3}, Lar;-><init>(Landroid/content/Context;ZZ)V

    new-instance v0, Lay;

    iget-object v1, p0, Lax;->b:Landroid/content/Context;

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lay;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lax;->l:Lay;

    invoke-static {}, Ls$a;->g()Lz;

    move-result-object v0

    iput-object v0, p0, Lax;->j:Lz;

    return-void
.end method

.method public static c(Lfx;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    iget-object v1, p0, Lfx;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v0, p0, Lfx;->b:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgb;

    iget-object v0, v0, Lgb;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method protected final a(Landroid/content/Context;Lfx;Law;)V
    .locals 2

    iget-boolean v0, p0, Lax;->k:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lax;->j:Lz;

    invoke-virtual {v0}, Lz;->e()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lax;->c(Lfx;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    invoke-static {p1, p2, v0, p3}, Le;->a(Landroid/content/Context;Lfx;ZLaw;)V

    :cond_1
    return-void
.end method

.method protected final a(Lfx;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p1, Lfx;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lfx;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lax;->d:Lfx;

    iget-object v0, p0, Lax;->d:Lfx;

    iget-object v0, v0, Lfx;->b:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgb;

    iget v0, v0, Lgb;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lax;->j:Lz;

    invoke-static {}, Lbt;->a()Lbt;

    move-result-object v1

    invoke-virtual {v1}, Lbt;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lz;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lax;->j:Lz;

    iget-object v1, p0, Lax;->d:Lfx;

    iget-object v1, v1, Lfx;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lz;->d(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final b(Lfx;)V
    .locals 1

    iget-object v0, p0, Lax;->l:Lay;

    invoke-virtual {v0, p1}, Lay;->a(Lfx;)V

    return-void
.end method

.method public final e()V
    .locals 11

    iget-object v4, p0, Lax;->l:Lay;

    iget-object v5, p0, Lax;->h:Lfy;

    const/4 v0, 0x0

    iput-boolean v0, v4, Lay;->c:Z

    if-eqz v5, :cond_0

    iget-object v0, v5, Lfy;->a:Lar;

    const/4 v1, 0x0

    iput v1, v0, Lar;->e:I

    iget-object v0, v5, Lfy;->a:Lar;

    iget-object v0, v0, Lar;->i:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, v5, Lfy;->a:Lar;

    iget-object v1, v1, Lar;->i:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    new-instance v1, Lfx;

    invoke-direct {v1}, Lfx;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lfx;->b:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, LQQPIM/ClientVersionInfo;

    const/4 v3, 0x7

    const/4 v6, 0x1

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "buildno="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "build"

    invoke-static {v8}, Lcom/tencent/tmsecure/common/TMSApplication;->getIntFromEnvMap(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&version="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "softversion"

    invoke-static {v8}, Lcom/tencent/tmsecure/common/TMSApplication;->getStrFromEnvMap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&productid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "product"

    invoke-static {v8}, Lcom/tencent/tmsecure/common/TMSApplication;->getIntFromEnvMap(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-direct {v2, v3, v6, v7, v8}, LQQPIM/ClientVersionInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v2, v4, Lay;->c:Z

    if-eqz v2, :cond_2

    const/4 v0, -0x3

    move v2, v0

    :goto_0
    if-eqz v5, :cond_1

    if-eqz v2, :cond_e

    iget-object v0, v5, Lfy;->a:Lar;

    iput v2, v0, Lar;->f:I

    const/4 v0, 0x3

    neg-int v3, v2

    rem-int/lit8 v3, v3, 0x64

    neg-int v3, v3

    const/4 v6, -0x3

    if-ne v3, v6, :cond_b

    const/4 v0, 0x2

    :goto_1
    if-nez v0, :cond_c

    iget-object v0, v5, Lfy;->a:Lar;

    iget-object v0, v0, Lar;->i:Landroid/os/Handler;

    const/4 v3, 0x6

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput v2, v0, Landroid/os/Message;->arg1:I

    :goto_2
    iget-object v2, v5, Lfy;->a:Lar;

    iget-object v2, v2, Lar;->i:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v0, v5, Lfy;->a:Lar;

    invoke-virtual {v0}, Lar;->a()V

    const/4 v0, 0x0

    :goto_3
    if-nez v0, :cond_f

    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Lfy;->a(Lfx;)V

    :cond_1
    :goto_4
    return-void

    :cond_2
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iget-object v3, v4, Lay;->b:Lgg;

    invoke-virtual {v3, v0, v2}, Lgg;->a(Ljava/util/List;Ljava/util/concurrent/atomic/AtomicReference;)I

    move-result v3

    if-nez v3, :cond_12

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/ServerCmdInfo;

    iget-boolean v2, v4, Lay;->c:Z

    if-eqz v2, :cond_3

    const/4 v0, -0x3

    move v2, v0

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, LQQPIM/ServerCmdInfo;->getCloudinfos()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_12

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/CloudInfo;

    iget-object v6, v4, Lay;->a:Landroid/content/Context;

    if-nez v0, :cond_4

    const/4 v0, 0x0

    :goto_5
    iget-boolean v1, v4, Lay;->c:Z

    if-eqz v1, :cond_10

    const/4 v1, -0x3

    move v2, v1

    move-object v1, v0

    goto :goto_0

    :cond_4
    new-instance v2, Lfx;

    invoke-direct {v2}, Lfx;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v2, Lfx;->b:Ljava/util/List;

    invoke-virtual {v0}, LQQPIM/CloudInfo;->getTips()LQQPIM/TipsInfo;

    move-result-object v7

    if-eqz v7, :cond_5

    invoke-virtual {v7}, LQQPIM/TipsInfo;->getTitle()Ljava/lang/String;

    invoke-virtual {v7}, LQQPIM/TipsInfo;->getMsg()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lfx;->a:Ljava/lang/String;

    :cond_5
    invoke-virtual {v0}, LQQPIM/CloudInfo;->getCloudcmds()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_11

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/CloudCmd;

    invoke-virtual {v0}, LQQPIM/CloudCmd;->getCmdid()I

    move-result v1

    const/16 v8, 0xc8

    if-ne v1, v8, :cond_11

    const/4 v1, 0x0

    if-eqz v7, :cond_6

    invoke-virtual {v7}, LQQPIM/TipsInfo;->getAtype()I

    move-result v1

    const/4 v7, 0x1

    if-ne v1, v7, :cond_9

    const/4 v1, 0x1

    :cond_6
    :goto_6
    new-instance v7, Lgb;

    invoke-direct {v7}, Lgb;-><init>()V

    iput v1, v7, Lgb;->a:I

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lgb;->c:Ljava/lang/String;

    iget-object v1, v2, Lfx;->b:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, LQQPIM/CloudCmd;->getParam()[B

    move-result-object v0

    new-instance v1, Lcom/qq/jce/wup/UniAttribute;

    invoke-direct {v1}, Lcom/qq/jce/wup/UniAttribute;-><init>()V

    const-string v7, "UTF-8"

    invoke-virtual {v1, v7}, Lcom/qq/jce/wup/UniAttribute;->setEncodeName(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/qq/jce/wup/UniAttribute;->decode([B)V

    const-string v0, "cloudcmd"

    new-instance v7, LQQPIM/SoftUpdateInfo;

    invoke-direct {v7}, LQQPIM/SoftUpdateInfo;-><init>()V

    invoke-virtual {v1, v0, v7}, Lcom/qq/jce/wup/UniAttribute;->getByClass(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/SoftUpdateInfo;

    if-eqz v0, :cond_8

    iget-object v1, v2, Lfx;->b:Ljava/util/List;

    const/4 v7, 0x0

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgb;

    invoke-virtual {v0}, LQQPIM/SoftUpdateInfo;->getUrl()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lgb;->b:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0}, LQQPIM/SoftUpdateInfo;->getNewfeature()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const v8, 0x7f060082

    invoke-virtual {v6, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, LQQPIM/SoftUpdateInfo;->getNewversion()LQQPIM/ProductVersion;

    move-result-object v8

    if-eqz v8, :cond_7

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v8}, LQQPIM/ProductVersion;->getPversion()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, LQQPIM/ProductVersion;->getCversion()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, LQQPIM/ProductVersion;->getHotfix()I

    move-result v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lgb;->d:Ljava/lang/Object;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    :cond_7
    const-string v1, "\n"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const v1, 0x7f060083

    invoke-virtual {v6, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, LQQPIM/SoftUpdateInfo;->getPkg_size()I

    move-result v0

    int-to-long v0, v0

    const/16 v8, 0xa

    shl-long/2addr v0, v8

    const-wide/16 v8, -0x1

    cmp-long v8, v0, v8

    if-nez v8, :cond_a

    const-string v0, "0"

    :goto_7
    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lfx;->a:Ljava/lang/String;

    :cond_8
    move-object v0, v2

    goto/16 :goto_5

    :cond_9
    const/4 v1, 0x0

    goto/16 :goto_6

    :cond_a
    invoke-static {v6, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :cond_b
    neg-int v3, v2

    div-int/lit16 v3, v3, 0x3e8

    mul-int/lit16 v3, v3, 0x3e8

    neg-int v3, v3

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_c
    const/4 v3, 0x2

    if-ne v0, v3, :cond_d

    iget-object v0, v5, Lfy;->a:Lar;

    iget-object v0, v0, Lar;->i:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v2, v5, Lfy;->a:Lar;

    iget-object v2, v2, Lar;->b:Landroid/content/Context;

    const v3, 0x7f06007b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto/16 :goto_2

    :cond_d
    iget-object v0, v5, Lfy;->a:Lar;

    iget-object v0, v0, Lar;->i:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v5, Lfy;->a:Lar;

    iget-object v6, v6, Lar;->b:Landroid/content/Context;

    const v7, 0x7f06007d

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, v5, Lfy;->a:Lar;

    iget-object v6, v6, Lar;->b:Landroid/content/Context;

    const v7, 0x7f06007f

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " ("

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, v5, Lfy;->a:Lar;

    iget-object v6, v6, Lar;->b:Landroid/content/Context;

    const v7, 0x7f060080

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto/16 :goto_2

    :cond_e
    const/4 v0, 0x1

    goto/16 :goto_3

    :cond_f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, v4, Lay;->d:Lz;

    invoke-virtual {v0, v2, v3}, Lz;->a(J)V

    invoke-virtual {v5, v1}, Lfy;->a(Lfx;)V

    goto/16 :goto_4

    :cond_10
    move-object v1, v0

    move v2, v3

    goto/16 :goto_0

    :cond_11
    move-object v0, v2

    goto/16 :goto_5

    :cond_12
    move-object v0, v1

    goto/16 :goto_5

    nop

    :sswitch_data_0
    .sparse-switch
        -0x1388 -> :sswitch_0
        -0xfa0 -> :sswitch_0
        -0xbb8 -> :sswitch_0
        -0x3e8 -> :sswitch_0
    .end sparse-switch
.end method

.method protected final f()V
    .locals 1

    iget-object v0, p0, Lax;->l:Lay;

    invoke-virtual {v0}, Lay;->a()V

    return-void
.end method

.method public final g()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lax;->k:Z

    return-void
.end method

.class public final Laan;
.super Ljava/lang/Object;


# static fields
.field static b:Laan;


# instance fields
.field a:Landroid/content/Context;

.field c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "LQQPIM/SoftAction;",
            ">;"
        }
    .end annotation
.end field

.field d:Ljf;

.field e:Lcom/tencent/tmsecure/module/software/SoftwareManager;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "LQQPIM/SoftActionConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Laan;->a:Landroid/content/Context;

    iget-object v0, p0, Laan;->a:Landroid/content/Context;

    const-string v1, "label_sa"

    const-string v2, "sa.dat"

    invoke-static {v0, v1, v2}, Lfj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Laan;->c:Ljava/util/List;

    iget-object v0, p0, Laan;->c:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laan;->c:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Laan;->a:Landroid/content/Context;

    const-string v1, "label_sa_cfg"

    const-string v2, "sa_cfg.dat"

    invoke-static {v0, v1, v2}, Lfj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Laan;->f:Ljava/util/List;

    iget-object v0, p0, Laan;->f:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laan;->f:Ljava/util/List;

    :cond_1
    new-instance v0, Ljf;

    invoke-direct {v0}, Ljf;-><init>()V

    iput-object v0, p0, Laan;->d:Ljf;

    const-class v0, Lcom/tencent/tmsecure/module/software/SoftwareManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/software/SoftwareManager;

    iput-object v0, p0, Laan;->e:Lcom/tencent/tmsecure/module/software/SoftwareManager;

    return-void
.end method

.method static synthetic a(Laan;Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Laan;->a:Landroid/content/Context;

    const-string v1, "label_sa_cfg"

    const-string v2, "sa_cfg.dat"

    invoke-static {v0, v1, v2}, Lfj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Laan;->f:Ljava/util/List;

    iget-object v0, p0, Laan;->f:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laan;->f:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Laan;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/SoftActionConfig;

    iget-object v2, v0, LQQPIM/SoftActionConfig;->featureKey:LQQPIM/FeatureKey;

    iget-object v2, v2, LQQPIM/FeatureKey;->uniCode:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v0, v0, LQQPIM/SoftActionConfig;->actionLevel:I

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Laan;LQQPIM/SoftAction;ILcom/tencent/tmsecure/module/permission/PermissionRequestInfo;)V
    .locals 11

    iget v0, p3, Lcom/tencent/tmsecure/module/permission/PermissionRequestInfo;->mRid:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    iget-object v8, p1, LQQPIM/SoftAction;->vecaction:Ljava/util/ArrayList;

    packed-switch p2, :pswitch_data_1

    :cond_0
    :goto_1
    return-void

    :pswitch_1
    const/4 v1, 0x1

    goto :goto_0

    :pswitch_2
    const/4 v1, 0x2

    goto :goto_0

    :pswitch_3
    const/4 v1, 0x3

    goto :goto_0

    :pswitch_4
    const/4 v1, 0x4

    goto :goto_0

    :pswitch_5
    const/4 v1, 0x5

    goto :goto_0

    :pswitch_6
    const/4 v1, 0x6

    goto :goto_0

    :pswitch_7
    const/4 v1, 0x7

    goto :goto_0

    :pswitch_8
    const/16 v1, 0x8

    goto :goto_0

    :pswitch_9
    const/16 v1, 0xa

    goto :goto_0

    :pswitch_a
    const/4 v2, 0x0

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/ActionItem;

    iget v4, v0, LQQPIM/ActionItem;->type:I

    if-ne v4, v1, :cond_1

    iget v4, v0, LQQPIM/ActionItem;->level:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    iget v2, v0, LQQPIM/ActionItem;->count:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, LQQPIM/ActionItem;->count:I

    const/4 v0, 0x1

    :goto_2
    if-nez v0, :cond_0

    new-instance v0, LQQPIM/ActionItem;

    const-string v2, ""

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, LQQPIM/ActionItem;-><init>(ILjava/lang/String;IIIII)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_b
    new-instance v0, LQQPIM/ActionItem;

    const-string v2, ""

    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v9, 0x3e8

    div-long/2addr v5, v9

    long-to-int v5, v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, LQQPIM/ActionItem;-><init>(ILjava/lang/String;IIIII)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_c
    new-instance v0, LQQPIM/ActionItem;

    const-string v2, ""

    iget v3, p3, Lcom/tencent/tmsecure/module/permission/PermissionRequestInfo;->mRid:I

    sparse-switch v3, :sswitch_data_0

    :goto_3
    const/4 v3, 0x3

    const/4 v4, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v9, 0x3e8

    div-long/2addr v5, v9

    long-to-int v5, v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, LQQPIM/ActionItem;-><init>(ILjava/lang/String;IIIII)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :sswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "port="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p3, Lcom/tencent/tmsecure/module/permission/PermissionRequestInfo;->mInfo1:[Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :sswitch_1
    const-string v2, "port="

    goto :goto_3

    :sswitch_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "title="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p3, Lcom/tencent/tmsecure/module/permission/PermissionRequestInfo;->mInfo1:[Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_2
    move v0, v2

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_9
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_0
        0xe -> :sswitch_2
    .end sparse-switch
.end method

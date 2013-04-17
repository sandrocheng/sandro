.class final Lyy;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Z

.field private synthetic b:Lho;

.field private synthetic c:Z

.field private synthetic d:Z

.field private synthetic e:Lyw;


# direct methods
.method constructor <init>(Lyw;ZLho;ZZ)V
    .locals 0

    iput-object p1, p0, Lyy;->e:Lyw;

    iput-boolean p2, p0, Lyy;->a:Z

    iput-object p3, p0, Lyy;->b:Lho;

    iput-boolean p4, p0, Lyy;->c:Z

    iput-boolean p5, p0, Lyy;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    const-wide/16 v12, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x2

    const/4 v4, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lyy;->a:Z

    if-eqz v0, :cond_0

    const-class v0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->reportChannelInfo()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lyy;->b:Lho;

    iget-boolean v5, p0, Lyy;->c:Z

    invoke-virtual {v0, v5}, Lho;->i(Z)V

    :cond_0
    iget-boolean v0, p0, Lyy;->d:Z

    if-eqz v0, :cond_23

    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v5

    invoke-virtual {v5}, Lnd;->b()Ljava/util/ArrayList;

    move-result-object v6

    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v7

    new-instance v0, Liu;

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v0, v8}, Liu;-><init>(Landroid/content/Context;)V

    new-instance v8, Liy;

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Liy;-><init>(Landroid/content/Context;)V

    iget-object v8, v8, Liy;->a:Landroid/content/SharedPreferences;

    const-string v9, "netword_service_status"

    invoke-static {}, Ldi;->b()Lnp;

    move-result-object v10

    invoke-virtual {v10}, Lnp;->f()Z

    move-result v10

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v0}, Lit;->getTotalForMonth()J

    move-result-wide v8

    cmp-long v8, v8, v12

    if-lez v8, :cond_1

    const/16 v8, 0x660e

    invoke-static {v6, v8}, Lnd;->a(Ljava/util/ArrayList;I)V

    :cond_1
    invoke-virtual {v0}, Lit;->j()Z

    move-result v8

    if-eqz v8, :cond_16

    const/16 v8, 0x660f

    invoke-static {v6, v8}, Lnd;->a(Ljava/util/ArrayList;I)V

    :cond_2
    :goto_0
    invoke-virtual {v0}, Lit;->m()Z

    move-result v8

    if-eqz v8, :cond_17

    const/16 v8, 0x6614

    invoke-static {v6, v8}, Lnd;->a(Ljava/util/ArrayList;I)V

    :cond_3
    :goto_1
    invoke-static {}, Lho;->a()Lho;

    move-result-object v8

    invoke-virtual {v8}, Lho;->by()Z

    move-result v9

    if-nez v9, :cond_4

    invoke-virtual {v8}, Lho;->p()Z

    move-result v9

    if-eqz v9, :cond_5

    :cond_4
    const/16 v9, 0x6613

    invoke-static {v6, v9}, Lnd;->a(Ljava/util/ArrayList;I)V

    :cond_5
    new-instance v9, Liy;

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v9, v10}, Liy;-><init>(Landroid/content/Context;)V

    iget-object v9, v9, Liy;->a:Landroid/content/SharedPreferences;

    const-string v10, "netword_service_status"

    invoke-static {}, Ldi;->b()Lnp;

    move-result-object v11

    invoke-virtual {v11}, Lnp;->f()Z

    move-result v11

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-nez v9, :cond_6

    const/16 v9, 0x6652

    invoke-static {v6, v9}, Lnd;->a(Ljava/util/ArrayList;I)V

    :cond_6
    invoke-virtual {v0}, Lit;->m()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-virtual {v0}, Lit;->h()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-virtual {v0}, Lit;->getTotalForMonth()J

    move-result-wide v9

    cmp-long v9, v9, v12

    if-lez v9, :cond_7

    const/16 v9, 0x6669

    invoke-static {v6, v9}, Lnd;->a(Ljava/util/ArrayList;I)V

    :cond_7
    invoke-virtual {v0}, Lit;->m()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-virtual {v0}, Lit;->o()Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x666a

    invoke-static {v6, v0}, Lnd;->a(Ljava/util/ArrayList;I)V

    :cond_8
    invoke-virtual {v8}, Lho;->aF()Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x66aa

    invoke-static {v6, v0}, Lnd;->a(Ljava/util/ArrayList;I)V

    :cond_9
    invoke-virtual {v8}, Lho;->cH()Z

    move-result v0

    if-eqz v0, :cond_a

    const/16 v0, 0x66ac

    invoke-static {v6, v0}, Lnd;->a(Ljava/util/ArrayList;I)V

    :cond_a
    invoke-virtual {v8}, Lho;->cv()Z

    move-result v0

    if-eqz v0, :cond_18

    const/16 v0, 0x66bf

    invoke-static {v6, v0}, Lnd;->a(Ljava/util/ArrayList;I)V

    :goto_2
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v8, "mounted"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    move v0, v4

    :goto_3
    if-nez v0, :cond_b

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v8, "mounted"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    move v0, v4

    :goto_4
    if-nez v0, :cond_b

    new-instance v0, Lib;

    invoke-direct {v0}, Lib;-><init>()V

    invoke-virtual {v0}, Lib;->a()I

    move-result v0

    if-lez v0, :cond_b

    const/16 v0, 0x66e8

    invoke-static {v6, v0}, Lnd;->a(Ljava/util/ArrayList;I)V

    :cond_b
    new-instance v0, Lji;

    invoke-direct {v0}, Lji;-><init>()V

    invoke-virtual {v0}, Lji;->a()I

    move-result v0

    if-lez v0, :cond_c

    const/16 v0, 0x66e9

    invoke-static {v6, v0}, Lnd;->a(Ljava/util/ArrayList;I)V

    :cond_c
    new-instance v0, Lhq;

    invoke-direct {v0, v1}, Lhq;-><init>(I)V

    invoke-virtual {v0}, Lhq;->c()I

    move-result v0

    new-instance v8, Ljp;

    const-string v9, "securesmslog"

    const-string v10, "secure_mms_pdu"

    const-string v11, "secure_mms_parts"

    invoke-direct {v8, v9, v10, v11}, Ljp;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljp;->b()I

    move-result v8

    add-int/2addr v0, v8

    new-instance v8, Lhi;

    invoke-direct {v8, v4}, Lhi;-><init>(I)V

    invoke-virtual {v8}, Lhi;->c()I

    move-result v8

    add-int/2addr v0, v8

    if-lez v0, :cond_d

    const/16 v0, 0x66ea

    invoke-static {v6, v0}, Lnd;->a(Ljava/util/ArrayList;I)V

    :cond_d
    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    invoke-virtual {v0}, Lho;->by()Z

    move-result v0

    if-eqz v0, :cond_e

    const/16 v0, 0x66eb

    invoke-static {v6, v0}, Lnd;->a(Ljava/util/ArrayList;I)V

    :cond_e
    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    invoke-virtual {v0}, Lho;->co()Z

    move-result v0

    if-eqz v0, :cond_1d

    const/16 v0, 0x6738

    invoke-static {v6, v0}, Lnd;->a(Ljava/util/ArrayList;I)V

    :goto_5
    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    invoke-virtual {v0}, Lho;->cj()I

    move-result v0

    if-nez v0, :cond_f

    const/16 v0, 0x673d

    invoke-static {v6, v0}, Lnd;->a(Ljava/util/ArrayList;I)V

    :cond_f
    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    invoke-virtual {v0}, Lho;->ci()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    const-string v8, ""

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const/16 v0, 0x673e

    invoke-static {v6, v0}, Lnd;->a(Ljava/util/ArrayList;I)V

    :cond_10
    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    invoke-virtual {v0}, Lho;->bD()Z

    move-result v0

    if-eqz v0, :cond_11

    const/16 v0, 0x674b

    invoke-static {v6, v0}, Lnd;->a(Ljava/util/ArrayList;I)V

    const-class v0, Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;->getBindQQNum()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1e

    const-string v8, ""

    if-eq v0, v8, :cond_1e

    const/16 v0, 0x674f

    invoke-static {v6, v0}, Lnd;->a(Ljava/util/ArrayList;I)V

    :cond_11
    :goto_6
    const-class v0, Lcom/tencent/tmsecure/module/software/SoftwareManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/software/SoftwareManager;

    const-string v8, "com.tencent.powermanager"

    invoke-virtual {v0, v8}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v0, 0x671f

    invoke-static {v6, v0}, Lnd;->a(Ljava/util/ArrayList;I)V

    :cond_12
    const-class v0, Lcom/tencent/tmsecure/module/software/SoftwareManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/software/SoftwareManager;

    const-string v8, "com.tencent.benchmark"

    invoke-virtual {v0, v8}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/16 v0, 0x675f

    invoke-static {v6, v0}, Lnd;->a(Ljava/util/ArrayList;I)V

    :cond_13
    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    invoke-virtual {v0}, Lho;->dE()Z

    move-result v0

    if-eqz v0, :cond_1f

    const/16 v0, 0x674c

    invoke-static {v6, v0}, Lnd;->a(Ljava/util/ArrayList;I)V

    :cond_14
    :goto_7
    new-instance v8, Lbtb;

    invoke-direct {v8}, Lbtb;-><init>()V

    iget-object v0, v8, Lbtb;->a:Lbtl;

    const-string v9, "data"

    iget-object v10, v0, Lbtl;->c:Landroid/content/SharedPreferences;

    new-instance v11, Ljava/lang/StringBuilder;

    iget-object v0, v0, Lbtl;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v11, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "."

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v10, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_24

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_24

    const-string v9, ";"

    invoke-virtual {v0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    array-length v0, v9

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    move v1, v2

    :goto_8
    array-length v10, v0

    if-lt v1, v10, :cond_20

    iget-object v1, v8, Lbtb;->a:Lbtl;

    const-string v8, "data"

    iget-object v9, v1, Lbtl;->b:Landroid/content/SharedPreferences$Editor;

    new-instance v10, Ljava/lang/StringBuilder;

    iget-object v11, v1, Lbtl;->a:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v9, v8, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v1, v1, Lbtl;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-object v1, v0

    :goto_9
    if-eqz v1, :cond_22

    move v0, v2

    :goto_a
    array-length v3, v1

    if-ge v0, v3, :cond_22

    aget-object v3, v1, v0

    aget v3, v3, v2

    if-nez v3, :cond_21

    const/16 v3, 0x6760

    aget-object v8, v1, v0

    aget v8, v8, v4

    invoke-virtual {v7, v3, v8}, Lnd;->b(II)V

    :cond_15
    :goto_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_16
    const-string v8, "Editor_ACTION_TrafficAutoAdjust_Close"

    const/16 v9, 0xc8

    invoke-virtual {v7, v8, v9}, Lnd;->a(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_2

    const/16 v8, 0x6610

    invoke-static {v6, v8}, Lnd;->a(Ljava/util/ArrayList;I)V

    goto/16 :goto_0

    :cond_17
    const-string v8, "Editor_ACTION_NetWorkTraffic_Window_Close"

    const/16 v9, 0xc9

    invoke-virtual {v7, v8, v9}, Lnd;->a(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_3

    const/16 v8, 0x6615

    invoke-static {v6, v8}, Lnd;->a(Ljava/util/ArrayList;I)V

    goto/16 :goto_1

    :cond_18
    const/16 v0, 0x66c0

    invoke-static {v6, v0}, Lnd;->a(Ljava/util/ArrayList;I)V

    goto/16 :goto_2

    :cond_19
    invoke-static {}, La;->b()Z

    move-result v0

    if-nez v0, :cond_1a

    move v0, v1

    goto/16 :goto_3

    :cond_1a
    move v0, v2

    goto/16 :goto_3

    :cond_1b
    invoke-static {}, La;->b()Z

    move-result v0

    if-nez v0, :cond_1c

    move v0, v1

    goto/16 :goto_4

    :cond_1c
    move v0, v2

    goto/16 :goto_4

    :cond_1d
    const/16 v0, 0x6739

    invoke-static {v6, v0}, Lnd;->a(Ljava/util/ArrayList;I)V

    goto/16 :goto_5

    :cond_1e
    const/16 v0, 0x6750

    invoke-static {v6, v0}, Lnd;->a(Ljava/util/ArrayList;I)V

    goto/16 :goto_6

    :cond_1f
    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    invoke-virtual {v0}, Lho;->dF()Z

    move-result v0

    if-eqz v0, :cond_14

    const/16 v0, 0x674e

    invoke-static {v6, v0}, Lnd;->a(Ljava/util/ArrayList;I)V

    goto/16 :goto_7

    :cond_20
    aget-object v10, v9, v1

    const/16 v11, 0x3a

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    invoke-virtual {v10, v2, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v10, v11, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    aget-object v11, v0, v1

    aput v12, v11, v2

    aget-object v11, v0, v1

    aput v10, v11, v4

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_8

    :cond_21
    if-ne v3, v4, :cond_15

    const/16 v3, 0x6761

    aget-object v8, v1, v0

    aget v8, v8, v4

    invoke-virtual {v7, v3, v8}, Lnd;->b(II)V

    goto/16 :goto_b

    :cond_22
    invoke-static {v6}, Lnd;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v5}, Lnd;->e()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const-class v0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->reportSoftUsageInfo(Ljava/util/ArrayList;)I

    move-result v0

    if-nez v0, :cond_23

    invoke-virtual {v5}, Lnd;->c()V

    invoke-virtual {v5}, Lnd;->d()V

    iget-object v0, p0, Lyy;->b:Lho;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lho;->g(J)V

    :cond_23
    iget-object v0, p0, Lyy;->e:Lyw;

    invoke-static {v0}, Lyw;->c(Lyw;)V

    return-void

    :cond_24
    move-object v1, v3

    goto/16 :goto_9
.end method

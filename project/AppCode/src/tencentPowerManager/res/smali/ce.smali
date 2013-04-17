.class final Lce;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Z

.field private synthetic b:Lz;

.field private synthetic c:Z

.field private synthetic d:Z

.field private synthetic e:Lcc;


# direct methods
.method constructor <init>(Lcc;ZLz;ZZ)V
    .locals 0

    iput-object p1, p0, Lce;->e:Lcc;

    iput-boolean p2, p0, Lce;->a:Z

    iput-object p3, p0, Lce;->b:Lz;

    iput-boolean p4, p0, Lce;->c:Z

    iput-boolean p5, p0, Lce;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    const/4 v2, 0x0

    const/4 v10, 0x1

    iget-object v0, p0, Lce;->e:Lcc;

    invoke-static {v0}, Lcc;->b(Lcc;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lce;->e:Lcc;

    invoke-static {v0, v10}, Lcc;->a(Lcc;Z)Z

    iget-boolean v0, p0, Lce;->a:Z

    if-eqz v0, :cond_1

    const-class v0, Lgg;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lgg;

    invoke-virtual {v0}, Lgg;->a()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lce;->b:Lz;

    iget-boolean v1, p0, Lce;->c:Z

    invoke-virtual {v0, v1}, Lz;->a(Z)V

    :cond_1
    iget-boolean v0, p0, Lce;->d:Z

    if-eqz v0, :cond_b

    invoke-static {}, Lab;->a()Lab;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lbc;->e:[I

    array-length v5, v1

    move v0, v2

    :goto_1
    if-ge v0, v5, :cond_2

    aget v6, v1, v0

    invoke-static {v6}, LQQPIM/EModelID;->convert(I)LQQPIM/EModelID;

    move-result-object v7

    invoke-virtual {v7}, LQQPIM/EModelID;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v3, Lab;->a:Landroid/content/SharedPreferences;

    const/4 v9, 0x0

    invoke-interface {v8, v7, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v6}, Lab;->a(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v0, "ActionStatsManager read actionType "

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbc;

    iget v0, v0, Lbc;->a:I

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " actionTime "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbc;

    iget-wide v6, v0, Lbc;->c:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " actionCount "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbc;

    iget v0, v0, Lbc;->b:I

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " action ErrorCode "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbc;

    iget v0, v0, Lbc;->d:I

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_3
    invoke-static {}, Ls$a;->d()Lr;

    move-result-object v0

    invoke-virtual {v0}, Lr;->c()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_4

    new-instance v0, Lbc;

    invoke-direct {v0}, Lbc;-><init>()V

    const v1, 0xc359

    iput v1, v0, Lbc;->a:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, v0, Lbc;->c:J

    iput v10, v0, Lbc;->b:I

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_3
    :pswitch_0
    invoke-static {}, Ls$a;->d()Lr;

    move-result-object v0

    invoke-virtual {v0}, Lr;->r()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lbc;

    invoke-direct {v0}, Lbc;-><init>()V

    const v1, 0xc361

    iput v1, v0, Lbc;->a:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, v0, Lbc;->c:J

    iput v10, v0, Lbc;->b:I

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    invoke-static {}, Ls$a;->d()Lr;

    move-result-object v0

    invoke-virtual {v0}, Lr;->u()Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Lbc;

    invoke-direct {v0}, Lbc;-><init>()V

    const v1, 0xc362

    iput v1, v0, Lbc;->a:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, v0, Lbc;->c:J

    iput v10, v0, Lbc;->b:I

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    invoke-static {}, Ls$a;->d()Lr;

    move-result-object v0

    invoke-virtual {v0}, Lr;->q()Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Lbc;

    invoke-direct {v0}, Lbc;-><init>()V

    const v1, 0xc363

    iput v1, v0, Lbc;->a:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, v0, Lbc;->c:J

    iput v10, v0, Lbc;->b:I

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    invoke-static {}, Ls$a;->d()Lr;

    move-result-object v0

    invoke-virtual {v0}, Lr;->p()Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Lbc;

    invoke-direct {v0}, Lbc;-><init>()V

    const v1, 0xc364

    iput v1, v0, Lbc;->a:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, v0, Lbc;->c:J

    iput v10, v0, Lbc;->b:I

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Ls$a;->d()Lr;

    move-result-object v0

    invoke-virtual {v0}, Lr;->o()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    new-instance v0, Lbc;

    invoke-direct {v0}, Lbc;-><init>()V

    const v1, 0xc367

    iput v1, v0, Lbc;->a:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, v0, Lbc;->c:J

    iput v10, v0, Lbc;->b:I

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    :goto_4
    invoke-static {}, Ls$a;->d()Lr;

    move-result-object v0

    invoke-virtual {v0}, Lr;->c()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_9

    new-instance v0, Lbc;

    invoke-direct {v0}, Lbc;-><init>()V

    const v1, 0xc36c

    iput v1, v0, Lbc;->a:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, v0, Lbc;->c:J

    iput v10, v0, Lbc;->b:I

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    const-class v0, Lfs;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lfs;

    const-string v1, "com.tencent.qqpimsecure"

    invoke-virtual {v0, v1}, Lfs;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance v0, Lbc;

    invoke-direct {v0}, Lbc;-><init>()V

    const v1, 0xc36e

    iput v1, v0, Lbc;->a:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, v0, Lbc;->c:J

    iput v10, v0, Lbc;->b:I

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    invoke-static {v4}, Lab;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    const-class v0, Lgg;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lgg;

    invoke-virtual {v0, v1}, Lgg;->a(Ljava/util/ArrayList;)I

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, v3, Lab;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lce;->b:Lz;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lz;->b(J)V

    :cond_b
    iget-object v0, p0, Lce;->e:Lcc;

    invoke-static {v0, v2}, Lcc;->a(Lcc;Z)Z

    iget-object v0, p0, Lce;->e:Lcc;

    invoke-static {v0}, Lcc;->c(Lcc;)V

    goto/16 :goto_0

    :pswitch_1
    new-instance v0, Lbc;

    invoke-direct {v0}, Lbc;-><init>()V

    const v1, 0xc356

    iput v1, v0, Lbc;->a:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, v0, Lbc;->c:J

    iput v10, v0, Lbc;->b:I

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :pswitch_2
    new-instance v0, Lbc;

    invoke-direct {v0}, Lbc;-><init>()V

    const v1, 0xc357

    iput v1, v0, Lbc;->a:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, v0, Lbc;->c:J

    iput v10, v0, Lbc;->b:I

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :pswitch_3
    new-instance v0, Lbc;

    invoke-direct {v0}, Lbc;-><init>()V

    const v1, 0xc358

    iput v1, v0, Lbc;->a:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, v0, Lbc;->c:J

    iput v10, v0, Lbc;->b:I

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :pswitch_4
    new-instance v0, Lbc;

    invoke-direct {v0}, Lbc;-><init>()V

    const v1, 0xc365

    iput v1, v0, Lbc;->a:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, v0, Lbc;->c:J

    iput v10, v0, Lbc;->b:I

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :pswitch_5
    new-instance v0, Lbc;

    invoke-direct {v0}, Lbc;-><init>()V

    const v1, 0xc366

    iput v1, v0, Lbc;->a:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, v0, Lbc;->c:J

    iput v10, v0, Lbc;->b:I

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

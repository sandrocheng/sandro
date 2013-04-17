.class public final Lnd;
.super Ljava/lang/Object;


# static fields
.field private static e:Lnd;


# instance fields
.field private a:Landroid/content/SharedPreferences;

.field private b:Landroid/content/SharedPreferences$Editor;

.field private c:Landroid/content/SharedPreferences;

.field private d:Landroid/content/SharedPreferences$Editor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lnd;->e:Lnd;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lnd;->a:Landroid/content/SharedPreferences;

    iput-object v0, p0, Lnd;->b:Landroid/content/SharedPreferences$Editor;

    iput-object v0, p0, Lnd;->c:Landroid/content/SharedPreferences;

    iput-object v0, p0, Lnd;->d:Landroid/content/SharedPreferences$Editor;

    const-string v0, "actionStats"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lnd;->a:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lnd;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lnd;->b:Landroid/content/SharedPreferences$Editor;

    const-string v0, "mulValueActionStats"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lnd;->c:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lnd;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lnd;->d:Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lnd;->c:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "\\|"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static a(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lkt;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "LQQPIM/SUI;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkt;

    iget v3, v0, Lkt;->b:I

    if-lez v3, :cond_1

    new-instance v3, LQQPIM/SUI;

    invoke-direct {v3}, LQQPIM/SUI;-><init>()V

    iget v4, v0, Lkt;->a:I

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    iget v4, v0, Lkt;->a:I

    invoke-virtual {v3, v4}, LQQPIM/SUI;->setId(I)V

    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v0, Lkt;->b:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, LQQPIM/SUI;->setDesc(Ljava/lang/String;)V

    iget-wide v4, v0, Lkt;->c:J

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v4, v4

    invoke-virtual {v3, v4}, LQQPIM/SUI;->setTime(I)V

    iget v4, v0, Lkt;->d:I

    if-eqz v4, :cond_2

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, LQQPIM/SUI;->ivalues:Ljava/util/ArrayList;

    iget-object v4, v3, LQQPIM/SUI;->ivalues:Ljava/util/ArrayList;

    iget v0, v0, Lkt;->d:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_1
    const/16 v4, 0x4e21

    invoke-virtual {v3, v4}, LQQPIM/SUI;->setId(I)V

    goto :goto_2

    :pswitch_2
    const/16 v4, 0x4e22

    invoke-virtual {v3, v4}, LQQPIM/SUI;->setId(I)V

    goto :goto_2

    :pswitch_3
    const/16 v4, 0x4e23

    invoke-virtual {v3, v4}, LQQPIM/SUI;->setId(I)V

    goto :goto_2

    :pswitch_4
    const/16 v4, 0x4e24

    invoke-virtual {v3, v4}, LQQPIM/SUI;->setId(I)V

    goto :goto_2

    :pswitch_5
    const/16 v4, 0x4e25

    invoke-virtual {v3, v4}, LQQPIM/SUI;->setId(I)V

    goto :goto_2

    :pswitch_6
    const/16 v4, 0x4e26

    invoke-virtual {v3, v4}, LQQPIM/SUI;->setId(I)V

    goto :goto_2

    :pswitch_7
    const/16 v4, 0x4e27

    invoke-virtual {v3, v4}, LQQPIM/SUI;->setId(I)V

    goto :goto_2

    :pswitch_8
    const/16 v4, 0x4e28

    invoke-virtual {v3, v4}, LQQPIM/SUI;->setId(I)V

    goto :goto_2

    :pswitch_9
    const/16 v4, 0x4e29

    invoke-virtual {v3, v4}, LQQPIM/SUI;->setId(I)V

    goto :goto_2

    :pswitch_a
    const/16 v4, 0x4e4f

    invoke-virtual {v3, v4}, LQQPIM/SUI;->setId(I)V

    goto :goto_2

    :pswitch_b
    const/16 v4, 0x4e50

    invoke-virtual {v3, v4}, LQQPIM/SUI;->setId(I)V

    goto :goto_2

    :pswitch_c
    const/16 v4, 0x4e51

    invoke-virtual {v3, v4}, LQQPIM/SUI;->setId(I)V

    goto :goto_2

    :pswitch_d
    const/16 v4, 0x4e52

    invoke-virtual {v3, v4}, LQQPIM/SUI;->setId(I)V

    goto/16 :goto_2

    :pswitch_e
    const/16 v4, 0x4e54

    invoke-virtual {v3, v4}, LQQPIM/SUI;->setId(I)V

    goto/16 :goto_2

    :pswitch_f
    const/16 v4, 0x4e55

    invoke-virtual {v3, v4}, LQQPIM/SUI;->setId(I)V

    goto/16 :goto_2

    :pswitch_10
    const/16 v4, 0x4e56

    invoke-virtual {v3, v4}, LQQPIM/SUI;->setId(I)V

    goto/16 :goto_2

    :pswitch_11
    const/16 v4, 0x4e2e

    invoke-virtual {v3, v4}, LQQPIM/SUI;->setId(I)V

    goto/16 :goto_2

    :pswitch_12
    const/16 v4, 0x4e57

    invoke-virtual {v3, v4}, LQQPIM/SUI;->setId(I)V

    goto/16 :goto_2

    :pswitch_13
    const/16 v4, 0x4e58

    invoke-virtual {v3, v4}, LQQPIM/SUI;->setId(I)V

    goto/16 :goto_2

    :pswitch_14
    const/16 v4, 0x4e59

    invoke-virtual {v3, v4}, LQQPIM/SUI;->setId(I)V

    goto/16 :goto_2

    :pswitch_15
    const/16 v4, 0x4e5a

    invoke-virtual {v3, v4}, LQQPIM/SUI;->setId(I)V

    goto/16 :goto_2

    :pswitch_16
    const/16 v4, 0x4e5b

    invoke-virtual {v3, v4}, LQQPIM/SUI;->setId(I)V

    goto/16 :goto_2

    :pswitch_17
    const/16 v4, 0x4e5c

    invoke-virtual {v3, v4}, LQQPIM/SUI;->setId(I)V

    goto/16 :goto_2

    :pswitch_18
    const/16 v4, 0x4e5d

    invoke-virtual {v3, v4}, LQQPIM/SUI;->setId(I)V

    goto/16 :goto_2

    :pswitch_19
    const/16 v4, 0x4e5e

    invoke-virtual {v3, v4}, LQQPIM/SUI;->setId(I)V

    goto/16 :goto_2

    :pswitch_1a
    const/16 v4, 0x4e5f

    invoke-virtual {v3, v4}, LQQPIM/SUI;->setId(I)V

    goto/16 :goto_2

    :pswitch_1b
    const/16 v4, 0x4e60

    invoke-virtual {v3, v4}, LQQPIM/SUI;->setId(I)V

    goto/16 :goto_2

    :pswitch_1c
    const/16 v4, 0x4e61

    invoke-virtual {v3, v4}, LQQPIM/SUI;->setId(I)V

    goto/16 :goto_2

    :pswitch_1d
    const/16 v4, 0x4e62

    invoke-virtual {v3, v4}, LQQPIM/SUI;->setId(I)V

    goto/16 :goto_2

    :pswitch_1e
    const/16 v4, 0x4e63

    invoke-virtual {v3, v4}, LQQPIM/SUI;->setId(I)V

    goto/16 :goto_2

    :pswitch_1f
    const/16 v4, 0x4e53

    invoke-virtual {v3, v4}, LQQPIM/SUI;->setId(I)V

    goto/16 :goto_2

    :pswitch_20
    const/16 v4, 0x4e64

    invoke-virtual {v3, v4}, LQQPIM/SUI;->setId(I)V

    goto/16 :goto_2

    :pswitch_21
    const/16 v4, 0x6590

    invoke-virtual {v3, v4}, LQQPIM/SUI;->setId(I)V

    goto/16 :goto_2

    :pswitch_22
    const/16 v4, 0x6591

    invoke-virtual {v3, v4}, LQQPIM/SUI;->setId(I)V

    goto/16 :goto_2

    :pswitch_23
    const/16 v4, 0x6592

    invoke-virtual {v3, v4}, LQQPIM/SUI;->setId(I)V

    goto/16 :goto_2

    :pswitch_24
    const/16 v4, 0x6593

    invoke-virtual {v3, v4}, LQQPIM/SUI;->setId(I)V

    goto/16 :goto_2

    :pswitch_25
    const/16 v4, 0x6594

    invoke-virtual {v3, v4}, LQQPIM/SUI;->setId(I)V

    goto/16 :goto_2

    :pswitch_26
    const/16 v4, 0x6595

    invoke-virtual {v3, v4}, LQQPIM/SUI;->setId(I)V

    goto/16 :goto_2

    :pswitch_27
    const/16 v4, 0x65b4

    invoke-virtual {v3, v4}, LQQPIM/SUI;->setId(I)V

    goto/16 :goto_2

    :cond_3
    move-object v0, v1

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_0
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
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
        :pswitch_27
    .end packed-switch
.end method

.method public static declared-synchronized a()Lnd;
    .locals 3

    const-class v1, Lnd;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lnd;->e:Lnd;

    if-nez v0, :cond_0

    new-instance v0, Lnd;

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lnd;-><init>(Landroid/content/Context;)V

    sput-object v0, Lnd;->e:Lnd;

    :cond_0
    sget-object v0, Lnd;->e:Lnd;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(ILjava/lang/String;)V
    .locals 9

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v0, p0, Lnd;->a:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lnd;->b(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v6

    move v1, v2

    :goto_0
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkt;

    iget-wide v7, v0, Lkt;->c:J

    cmp-long v0, v4, v7

    if-nez v0, :cond_2

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkt;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkt;

    iget v1, v1, Lkt;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lkt;->b:I

    move v2, v3

    :cond_0
    if-nez v2, :cond_1

    new-instance v0, Lkt;

    invoke-direct {v0}, Lkt;-><init>()V

    iput p1, v0, Lkt;->a:I

    iput-wide v4, v0, Lkt;->c:J

    iput v3, v0, Lkt;->b:I

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-static {v6}, Lnd;->b(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lnd;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private a(ILjava/lang/String;I)V
    .locals 9

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v0, p0, Lnd;->a:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lnd;->b(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v6

    move v1, v2

    :goto_0
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkt;

    iget-wide v7, v0, Lkt;->c:J

    cmp-long v0, v4, v7

    if-nez v0, :cond_2

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkt;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkt;

    iget v1, v1, Lkt;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lkt;->b:I

    move v2, v3

    :cond_0
    if-nez v2, :cond_1

    new-instance v0, Lkt;

    invoke-direct {v0}, Lkt;-><init>()V

    iput p1, v0, Lkt;->a:I

    iput-wide v4, v0, Lkt;->c:J

    iput v3, v0, Lkt;->b:I

    iput p3, v0, Lkt;->d:I

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-static {v6}, Lnd;->b(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lnd;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public static a(Ljava/util/ArrayList;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lkt;",
            ">;I)V"
        }
    .end annotation

    new-instance v0, Lkt;

    invoke-direct {v0}, Lkt;-><init>()V

    iput p1, v0, Lkt;->a:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lkt;->c:J

    const/4 v1, 0x1

    iput v1, v0, Lkt;->b:I

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private a(Ljava/util/ArrayList;Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lkt;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    iget-object v0, p0, Lnd;->a:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3}, Lnd;->b(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private b(I)LQQPIM/SUI;
    .locals 5

    new-instance v0, LQQPIM/SUI;

    invoke-direct {v0}, LQQPIM/SUI;-><init>()V

    invoke-virtual {v0, p1}, LQQPIM/SUI;->setId(I)V

    sparse-switch p1, :sswitch_data_0

    :goto_0
    invoke-virtual {v0}, LQQPIM/SUI;->getIvalues()Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :sswitch_0
    const-string v1, "EMID_Secure_Before_OneKeyAnaly_UseMemory_Percent"

    invoke-direct {p0, v1}, Lnd;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, LQQPIM/SUI;->setIvalues(Ljava/util/ArrayList;)V

    goto :goto_0

    :sswitch_1
    const-string v1, "EMID_Secure_After_OneKeyAnaly_UseMemory_Percent"

    invoke-direct {p0, v1}, Lnd;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, LQQPIM/SUI;->setIvalues(Ljava/util/ArrayList;)V

    goto :goto_0

    :sswitch_2
    const-string v1, "EMID_Secure_Ram_Used_Revert_percent_After_Clean"

    invoke-direct {p0, v1}, Lnd;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, LQQPIM/SUI;->setIvalues(Ljava/util/ArrayList;)V

    goto :goto_0

    :sswitch_3
    const-string v1, "EMID_Secure_Root_Status"

    invoke-direct {p0, v1}, Lnd;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, LQQPIM/SUI;->setIvalues(Ljava/util/ArrayList;)V

    goto :goto_0

    :sswitch_4
    const-string v1, "EMID_Secure_Installed_digit"

    invoke-direct {p0, v1}, Lnd;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, LQQPIM/SUI;->setIvalues(Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_0
    const-string v1, "1"

    invoke-virtual {v0, v1}, LQQPIM/SUI;->setDesc(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-int v1, v1

    invoke-virtual {v0, v1}, LQQPIM/SUI;->setTime(I)V

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x66bd -> :sswitch_0
        0x66be -> :sswitch_1
        0x6734 -> :sswitch_2
        0x6760 -> :sswitch_3
        0x6761 -> :sswitch_4
    .end sparse-switch
.end method

.method private static b(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lkt;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkt;

    iget-wide v3, v0, Lkt;->c:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string v0, "&"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkt;

    iget v0, v0, Lkt;->b:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkt;

    iget v0, v0, Lkt;->d:I

    if-eqz v0, :cond_0

    const-string v0, "&"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkt;

    iget v0, v0, Lkt;->d:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_0
    const-string v0, ";"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b(Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Lkt;",
            ">;"
        }
    .end annotation

    const/4 v9, 0x0

    const/4 v8, -0x1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_1

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    const-string v1, ";"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v8, :cond_0

    new-instance v2, Lkt;

    invoke-direct {v2}, Lkt;-><init>()V

    invoke-virtual {p0, v9, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v8, :cond_3

    iput p1, v2, Lkt;->a:I

    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v9, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v2, Lkt;->c:J

    iget-wide v4, v2, Lkt;->c:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v2, Lkt;->c:J

    :cond_2
    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v8, :cond_4

    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v9, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v2, Lkt;->b:I

    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lkt;->d:I

    :goto_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v1, v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_4
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lkt;->b:I

    goto :goto_1
.end method

.method private c(Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lnd;->c:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lnd;->d:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1, p1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    sparse-switch p1, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    const-string v0, "FILTER_SAVE_SUC_STR"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string v0, "INTO_FILTERINFO_STR"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto :goto_0

    :sswitch_2
    const-string v0, "START_KILL_STR"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto :goto_0

    :sswitch_3
    const-string v0, "UPDATE_VIRUS_BASE_STR"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto :goto_0

    :sswitch_4
    const-string v0, "INTO_SECRET_STR"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto :goto_0

    :sswitch_5
    const-string v0, "ONEKEY_CLEAR_STR"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto :goto_0

    :sswitch_6
    const-string v0, "INTO_PRO_MANAGE_STR"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto :goto_0

    :sswitch_7
    const-string v0, "INTO_APP_MANAGE_STR"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto :goto_0

    :sswitch_8
    const-string v0, "DOWNLOAD_STR"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto :goto_0

    :sswitch_9
    const-string v0, "DAY_BEST_TAB_STR"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto :goto_0

    :sswitch_a
    const-string v0, "PRESS_AD_STR"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto :goto_0

    :sswitch_b
    const-string v0, "PRESS_FIRST_SEND_STR"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto :goto_0

    :sswitch_c
    const-string v0, "ONE_KEY_CHECK_STR"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto :goto_0

    :sswitch_d
    const-string v0, "ONE_KEY_OPTIMIZATION_STR"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto :goto_0

    :sswitch_e
    const-string v0, "USED_COPY_STR"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto :goto_0

    :sswitch_f
    const-string v0, "USED_RESET_STR"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto :goto_0

    :sswitch_10
    const-string v0, "CHARGE_SMS_CHECK_STR"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto :goto_0

    :sswitch_11
    const-string v0, "LOCATION_CHECK_STR"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto :goto_0

    :sswitch_12
    const-string v0, "OPEN_IPCALL_STR"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto :goto_0

    :sswitch_13
    const-string v0, "SET_IPCALL_STR"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto :goto_0

    :sswitch_14
    const-string v0, "KILL_ONE_P_STR"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto :goto_0

    :sswitch_15
    const-string v0, "KILL_ALL_P_STR"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_16
    const-string v0, "CLEAR_ONE_RUBISH_STR"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_17
    const-string v0, "CLEAR_All_RUBISH_STR"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_18
    const-string v0, "ADD_WHITE_NAME_STR"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_19
    const-string v0, "ADD_NET_WIDGET_STR"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_1a
    const-string v0, "INTO_NETSETTING_STR"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_1b
    const-string v0, "GET_ROOT_STR"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_1c
    const-string v0, "MOTION_APP_CHANGE_STR"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_1d
    const-string v0, "SAVE_APP_CHANGE_STR"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_1e
    const-string v0, "LOG_APP_CHANGE_STR"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_1f
    const-string v0, "ACTION_UNINSTALLATION_STR"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_20
    const-string v0, "Editor_RUNNING_ONEKEY_DO"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_21
    const-string v0, "Editor_OPEN_PHONE_ONEKEY_DO"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_22
    const-string v0, "Editor_ANTI_THEFT_SWITH"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_23
    const-string v0, "Editor_PHONE_CUT_SWITH"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_24
    const-string v0, "Editor_PUSH_FUNTION"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_25
    const-string v0, "Editor_INTO_MAIN_MENU"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_26
    const-string v0, "Editor_INTO_PHONE_KEY_SMALL"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_27
    const-string v0, "Editor_INTO_MAINVIEW"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_28
    const-string v0, "Editor_INTO_MYSOFTWARE_ONEKEYANALY"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_29
    const-string v0, "Editor_INTO_MYSOFTWARE_UPDATE"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_2a
    const-string v0, "Editor_INTO_MYSOFTWARE_UNINSTALL"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_2b
    const-string v0, "Editor_INTO_MYSOFTWARE_APKMANAGER"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_2c
    const-string v0, "Editor_INTO_MYSOFTWARE_SOFTWARE_MOVE"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_2d
    const-string v0, "Editor_INTO_MARKET_CATEGORY"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_2e
    const-string v0, "Editor_INTO_MARKET_NECESSARY"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_2f
    const-string v0, "Editor_INTO_MARKET_SEARCH"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_30
    const-string v0, "Editor_INTO_MARKET_DOWNLOAD_MANAGER"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_31
    const-string v0, "Editor_INTO_SYNC_BACKUP_CONTACT"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_32
    const-string v0, "Editor_INTO_SYNC_RESTORE_CONTACT"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_33
    const-string v0, "Editor_INTO_SYNC_ACCOUNT_SETTING"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_34
    const-string v0, "Editor_INTO_MAINVIEW_MYSOFTWARE"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_35
    const-string v0, "Editor_INTO_MAINVIEW_MARKET"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_36
    const-string v0, "Editor_INTO_MAINVIEW_INTERCEPT"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_37
    const-string v0, "Editor_INTO_MIANVIEW_VIRUS_SCAN"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_38
    const-string v0, "Editor_INTO_MAINVIEW_COMMON_TOOLS"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_39
    const-string v0, "Editor_INTO_NOTIFICATION_VIRUS_SCAN"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_3a
    const-string v0, "Editor_INTO_NOTIFICATION_SMS_CHECK"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_3b
    const-string v0, "Editor_INTO_NOTIFICATION_SECURESPACE"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_3c
    const-string v0, "Editor_INTO_NOTIFICATION_UPDATE"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_3d
    const-string v0, "Editor_INTO_NOTIFICATION_DOWNLOAD"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_3e
    const-string v0, "Editor_INTO_BOTIFICATION_SCREENSHOT"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_3f
    const-string v0, "Editor_INTO_PROCESSMAIN_MANAGER"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_40
    const-string v0, "Editor_INTO_PROCESSMAIN_BOOT_OPTIMIZE"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_41
    const-string v0, "Editor_INTO_PROCESSMAIN_DATA_CLEAR"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_42
    const-string v0, "Editor_INTO_VIRUS_QUICKSCAN"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_43
    const-string v0, "Editor_INTO_VIRUS_FULL_SCAN"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_44
    const-string v0, "Editor_INTO_VIRUS_UPDATE"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_45
    const-string v0, "Editor_INTO_VIRUS_RECORD"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_46
    const-string v0, "Editor_INTO_PERMISSION_SETTING"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_47
    const-string v0, "Editor_INTO_PERMISSION_SOFTWARE"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_48
    const-string v0, "Editor_INTO_PERMISSION_LOG"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_49
    const-string v0, "Editor_INTO_TOOLS_SCREEN_SHOT"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_4a
    const-string v0, "Editor_INTO_TOOLS_IPCALL"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_4b
    const-string v0, "Editor_INTO_TOOLS_LOCATION"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_4c
    const-string v0, "Editor_INTO_TOOLS_NUMBER_QUERY"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_4d
    const-string v0, "Editor_INTO_TOOLS_PASSWORD_VER"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_4e
    const-string v0, "Editor_MYSOFTWARE_ANALY_UNINSTALL"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_4f
    const-string v0, "Editor_MYSOFTWARE_UPDATE_ALL"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_50
    const-string v0, "Editor_MYSOFTWARE_UPDATE_ONE"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_51
    const-string v0, "Editor_MYSOFTWARE_UNINSTALL_PERSONAL"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_52
    const-string v0, "Editor_BATTERY_CHANGE_MODE"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_53
    const-string v0, "Editor_BATTERY_ADD_DIYMODE"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_54
    const-string v0, "Editor_BATTERY_OPEN"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_55
    const-string v0, "Editor_BATTERY_CLOSE"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_56
    const-string v0, "Editor_BATTERY_SETTING"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_57
    const-string v0, "Editor_WEBDISK_SETTING"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_58
    const-string v0, "Editor_WEBDISK_CHANGE_TAB"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_59
    const-string v0, "Editor_NETWORK_AUTOADJUST"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_5a
    const-string v0, "Editor_NETWORK_WAP_SORT"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_5b
    const-string v0, "Editor_NETWORK_SETTING"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_5c
    const-string v0, "Editor_SMSCHARGE_CHECK_SCAN"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_5d
    const-string v0, "Editor_INTERCEPT_FILTER_SETTING"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_5e
    const-string v0, "Editor_INTERCEPT_CONTACT_LIST_BACKUP"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_5f
    const-string v0, "Editor_INTERCEPT_CONTACT_LIST_RESTORE"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_60
    const-string v0, "Editor_INTERCEPT_ADD_BLACK_CONTACT"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_61
    const-string v0, "Editor_INTERCEPT_ADD_WHITE_CONTACT"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_62
    const-string v0, "Editor_INTERCEPT_ADD_KEYWORD"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_63
    const-string v0, "Editor_SECURE_SPACE_ADD_CONTACT"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_64
    const-string v0, "Editor_PICKPROOF_OPEN"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_65
    const-string v0, "Editor_PICKPROOF_GUIDE_FINISH"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_66
    const-string v0, "Editor_PROCESSMAIN_ONE_KEY_OPTIMIZE"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_67
    const-string v0, "Editor_PROCESSMAIN_PRO_MRG_STOPALL"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_68
    const-string v0, "Editor_PERMISSION_OPEN"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_69
    const-string v0, "Editor_PERMISSION_SOFTWARE_SET"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_6a
    const-string v0, "Editor_PERMISSION_SECURESPACE"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_6b
    const-string v0, "Editor_TOOLS_SCREEN_SHOT_OPEN"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_6c
    const-string v0, "Editor_MAINVIEW_OPTIMIZE_FINISH"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_6d
    const-string v0, "Editor_INTO_NET_MANAGER"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_6e
    const-string v0, "Editor_INTO_PHONE_UP"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_6f
    const-string v0, "Editor_INTO_SAVE_POWER"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_70
    const-string v0, "Editor_INTO_SYNC_COPY"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_71
    const-string v0, "Editor_INTO_OPEN_UP"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_72
    const-string v0, "Editor_INTO_APK_MAANGER"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_73
    const-string v0, "Editor_INTO_US_MAANGER"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_74
    const-string v0, "Editor_INTO_PAY_SMS"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_75
    const-string v0, "Editor_INTO_IP_CALL"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_76
    const-string v0, "Editor_INTO_PHONE_CHECK"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_77
    const-string v0, "Editor_INTO_INTO_SAVE_PHONE"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_78
    const-string v0, "Editor_INTO_PHONE_CUT"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_79
    const-string v0, "Editor_INTO_INTO_COMMON_FUNTION"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_7a
    const-string v0, "Editor_INTO_WEBDISK"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_7b
    const-string v0, "Editor_State_NetWorkTraffic_Window_Open"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_7c
    const-string v0, "Editor_TaskManagerWidgetMini_Open"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_7d
    const-string v0, "Editor_TaskManagerWidgetMini_Close"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_7e
    const-string v0, "Editor_KillProcess_WidgetMini"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_7f
    const-string v0, "Editor_TaskManagerWidget_Open"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_80
    const-string v0, "Editor_TaskManagerWidger_Close"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_81
    const-string v0, "Editor_TaskManagerWidget_INTO_MainView"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_82
    const-string v0, "Editor_OneKeyOptimize_TaskManagerWidger"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_83
    const-string v0, "Editor_NetSetWidget_Open"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_84
    const-string v0, "Editor_NetSetWidget_Close"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_85
    const-string v0, "Editor_NetSetWidget_INTO_MainView"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_86
    const-string v0, "Editor_NetSetWidget_Wifi_Open"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_87
    const-string v0, "Editor_NetSetWidget_Wifi_Close"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_88
    const-string v0, "Editor_NetSetWidget_GPRS_Open"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_89
    const-string v0, "Editor_NetSetWidget_GPRS_Close"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_8a
    const-string v0, "Editor_NetSetWidget_NET_WAP_Change"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_8b
    const-string v0, "Editor_NetSetWidget_INTO_SettingView"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_8c
    const-string v0, "Editor_MainView_CheckDBUpdate"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_8d
    const-string v0, "Editor_MainView_CheckVersionUpdate"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_8e
    const-string v0, "Editor_Market_INTO_MySoftware"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_8f
    const-string v0, "Editor_Market_Advertise_Position1"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_90
    const-string v0, "Editor_Market_Advertise_Position2"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_91
    const-string v0, "Editor_Market_Advertise_Position3"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_92
    const-string v0, "Editor_Market_SOFTWARE_CATEGORY"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_93
    const-string v0, "Editor_Market_TAB_NEW_PRODUCT"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_94
    const-string v0, "Editor_ACTIVATE_QQSECURE_UI"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_95
    const-string v0, "Editor_SETTINGS_STOP_SERVICE"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_96
    const-string v0, "Editor_SETTINGS_START_SERVICE"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_97
    const-string v0, "Editor_SETTINGS_STOP_ASSISTANT"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_98
    const-string v0, "Editor_SETTINGS_START_ASSISTANT"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_99
    const-string v0, "Editor_ASSISTANT_OPTIMIZE"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_9a
    const-string v0, "Editor_ASSISTANT_EXPAND_MORE"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_9b
    const-string v0, "Editor_ASSISTANT_CLOSE_MORE"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_9c
    const-string v0, "Editor_ASSISTANT_CLOSE_FLOW_WINDOW"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_9d
    const-string v0, "Editor_ASSISTANT_OPEN_FLOW_WINDOW"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_9e
    const-string v0, "Editor_ASSISTANT_SWITCH_GPRS"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_9f
    const-string v0, "Editor_ASSISTANT_SWITCH_WIFI"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_a0
    const-string v0, "Editor_ASSISTANT_SWITCH_BELL"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_a1
    const-string v0, "Editor_STOP_TASK_CANCEL_ADVICE"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_a2
    const-string v0, "Editor_STOP_TASK_ACCEPT_ADVICE"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_a3
    const-string v0, "Editor_Private_Secure_INTO_Permission_Monitor"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_a4
    const-string v0, "Editor_Private_Secure_INTO_File_Save"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_a5
    const-string v0, "Editor_Private_Secure_INTO_Privacy_Lock"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_a6
    const-string v0, "Editor_Notification_INTO_Intercept"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_a7
    const-string v0, "Editor_ONEKEY_CHECK_Cancel_On_Switch"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_a8
    const-string v0, "Editor_ONEKEY_CHECK_Cancel_On_AutoRun"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_a9
    const-string v0, "Editor_ONEKEY_CHECK_Cancel_On_CacheData"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_aa
    const-string v0, "Editor_ONEKEY_CHECK_Cancel_On_Virus"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_ab
    const-string v0, "Editor_NETWORK_MANAGER_INTO_NetWork_Filter"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_ac
    const-string v0, "Editor_NETWORK_MANAGER_NetWork_Filter_OperSwitch"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_ad
    const-string v0, "Editor_ImportContactInfo_Import"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_ae
    const-string v0, "Editor_ImportContactInfo_Cancel"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_af
    const-string v0, "Editor_VirusTabView_INTO_ProfessionalKiller"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_b0
    const-string v0, "Editor_VirusTabView_Finish_QuickScan"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_b1
    const-string v0, "Editor_VirusTabView_Finish_FullScan"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_b2
    const-string v0, "Editor_Market_INTO_Software_Rank"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_b3
    const-string v0, "Editor_Market_INTO_Game"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_b4
    const-string v0, "Editor_New_Secure_OPEN_PHONE_ONEKEY_DO"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_b5
    const-string v0, "Editor_ACTION_Secure_QQPHONEBOOK_PUSH_OK"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_b6
    const-string v0, "Editor_ACTION_Secure_QQPHONEBOOK_PUSH_CAMCEL"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_b7
    const-string v0, "Editor_PUSH_WANDOUJIA"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_b8
    const-string v0, "Editor_Secure_MAINVIEW_Move_Desktop_Panel_Boxes"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_b9
    const-string v0, "Editor_Secure_NETWORK_MANAGER_Flow_Auto_Adjust_Config"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_ba
    const-string v0, "Editor_Secure_NETWORK_MANAGER_GPRS_Used_For_Month_Config"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_bb
    const-string v0, "Editor_Secure_NETWORK_MANAGER_GPRS_Used_For_Month_Config_Confirm"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_bc
    const-string v0, "Editor_Secure_NETWORK_MANAGER_GPRS_Used_For_Month_Config_By_SMS"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_bd
    const-string v0, "Editor_Secure_NETWORK_MANAGER_GPRS_Used_For_Month_Config_By_Phone"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_be
    const-string v0, "Editor_Secure_NETWORK_MANAGER_GPRS_TotalLimit_For_Month_Config"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_bf
    const-string v0, "Editor_Secure_NETWORK_MANAGER_GPRS_Closing_Day_Config"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_c0
    const-string v0, "Editor_Secure_Notification_Recommend_Weekly"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_c1
    const-string v0, "Editor_Secure_Market_Create_Desktop_Shortcut"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_c2
    const-string v0, "Editor_Secure_MYSOFTWARE_ONEKEYANALY_Unistall"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_c3
    const-string v0, "Editor_Secure_PROCESSMAIN_INTO_SettingView"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_c4
    const-string v0, "Editor_Secure_PROCESSMAIN_Add_OneKeyAnaly_WhiteList"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_c5
    const-string v0, "Editor_Secure_PROCESSMAIN_Add_OneKeyAnaly_WhiteList_Confirm"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_c6
    const-string v0, "Editor_Secure_VirusTabView_Show_Menu"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_c7
    const-string v0, "Editor_Secure_VirusTabView_INTO_Menu_SettingView"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_c8
    const-string v0, "Editor_Secure_VirusTabView_Cancel_QuickScan"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_c9
    const-string v0, "Editor_Secure_VirusTabView_Cancel_FullScan"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_ca
    const-string v0, "Editor_Secure_PROCESSMAIN_WhileList_Setting_Hint_Set_Immediately"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_cb
    const-string v0, "Editor_Secure_PROCESSMAIN_WhileList_Setting_Hint_Never_Ask"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_cc
    const-string v0, "Editor_Secure_Notification_Prompt_VirusLib_Update"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_cd
    const-string v0, "Editor_Secure_Notification_VirusLib_Update_And_Scan"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_ce
    const-string v0, "Editor_Secure_Notification_VirusLib_Update_Cancel"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_cf
    const-string v0, "Editor_Secure_Notification_Prompt_New_ProfessionalKiller"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_d0
    const-string v0, "Editor_Secure_Outside_VirusTabView_Kill_Immediately"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_d1
    const-string v0, "Editor_Secure_Outside_VirusTabView_Dont_Kill_Now"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_d2
    const-string v0, "Editor_Secure_MAINVIEW_Show_Menu"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_d3
    const-string v0, "Editor_Secure_MAINVIEW_Into_Menu_Setting"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_d4
    const-string v0, "Editor_Secure_MAINVIEW_Into_Menu_Feedback"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_d5
    const-string v0, "Editor_Secure_MAINVIEW_Into_Menu_CheckUpdate"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_d6
    const-string v0, "Editor_Secure_MAINVIEW_Into_Menu_Feedback_Problem"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_d7
    const-string v0, "Editor_Secure_MAINVIEW_Into_Menu_Feedback_Location"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_d8
    const-string v0, "Editor_Secure_MAINVIEW_Into_Menu_CheckUpdate_Update_Immediately"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_d9
    const-string v0, "Editor_Secure_MAINVIEW_Into_Menu_CheckUpdate_Update_NextTime"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_da
    const-string v0, "Editor_Secure_MAINVIEW_Into_Menu_About"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_db
    const-string v0, "Editor_Secure_MAINVIEW_Into_Menu_Recommend_To_Friend"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_dc
    const-string v0, "Editor_Secure_MAINVIEW_Into_Menu_OperatingActivity"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_dd
    const-string v0, "Editor_Secure_Battery_Open_Deep_Save"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_de
    const-string v0, "editor_assistant_switch_audio"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_df
    const-string v0, "editor_assistant_open"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_e0
    const-string v0, "editor_system_setting_assistant_style_number"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_e1
    const-string v0, "editor_system_setting_assistant_style_rocket"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_e2
    const-string v0, "editor_assistant_setting"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_e3
    const-string v0, "editor_assistant_setting_open"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_e4
    const-string v0, "editor_assistant_setting_style_number"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_e5
    const-string v0, "editor_assistant_setting_style_rocket"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_e6
    const-string v0, "editor_assistant_move_to_fire"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_e7
    const-string v0, "editor_assistant_rocket_launch_success"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_e8
    const-string v0, "editor_commontools_wandoujia_enabled"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_e9
    const-string v0, "editor_commontools_wandoujia_next_time"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_ea
    const-string v0, "editor_commontools_wandoujia_open"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_eb
    const-string v0, "editor_securespace_restore_sms_from_sdcard"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_ec
    const-string v0, "editor_securespace_restore_sms_from_sdcard_cancel"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_ed
    const-string v0, "editor_sync_assist_download_immediatly"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_ee
    const-string v0, "editor_sync_assist_download_later"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_ef
    const-string v0, "editor_sync_assist_download_from_yellow_text"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_f0
    const-string v0, "editor_sync_assist_into_qqsyncassist"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_f1
    const-string v0, "editor_recommend_weekly_popup_download"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_f2
    const-string v0, "editor_notification_remind_updatevirusbase"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_f3
    const-string v0, "editor_notification_update_virus_database"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_f4
    const-string v0, "editor_notification_cancel_update_virusbase"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_f5
    const-string v0, "editor_notification_enter_kill_tool"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_f6
    const-string v0, "editor_enter_qqpim"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_f7
    const-string v0, "editor_notification_adblock"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_f8
    const-string v0, "editor_into_tools_adblock"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_f9
    const-string v0, "editor_adblock_allow_this_notify"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_fa
    const-string v0, "editor_adblock_ban_this_notify"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_fb
    const-string v0, "editor_adblock_allow_suspicious_notify"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_fc
    const-string v0, "editor_adblock_ban_suspicious_notify"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_fd
    const-string v0, "editor_adblock_menu_clean_history"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_fe
    const-string v0, "editor_adblock_into_setting"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_ff
    const-string v0, "editor_adblock_into_setting_notification_service"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_100
    const-string v0, "editor_adblock_report_adapplication"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_101
    const-string v0, "editor_adblock_notify_times"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_102
    const-string v0, "editor_before_onekeyanaly_usememory_percent"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_103
    const-string v0, "editor_after_onekeyanaly_usememory_percent"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_104
    const-string v0, "editor_websiteremind_remindwindow_iknow"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_105
    const-string v0, "editor_websiteremind_remindwindow_neverremind"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_106
    const-string v0, "editor_settings_websiteremind_open_or_close"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_107
    const-string v0, "editor_settings_websiteremind_keep_open"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_108
    const-string v0, "editor_settings_websiteremind_keep_close"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_109
    const-string v0, "editor_network_manager_click_flow_not_right"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_10a
    const-string v0, "editor_network_manager_report_flow_not_right"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_10b
    const-string v0, "editor_network_manager_adjust_flow_not_right"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_10c
    const-string v0, "editor_block_sms_report_single_message"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_10d
    const-string v0, "editor_block_sms_delete_single_message"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_10e
    const-string v0, "editor_block_sms_addblacklist_single_message"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_10f
    const-string v0, "editor_block_sms_addwhitelist_single_message"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_110
    const-string v0, "editor_block_sms_restore_single_message"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_111
    const-string v0, "editor_block_sms_reportview_report_sysmessage"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_112
    const-string v0, "editor_block_sms_reportview_report_blockedmessage"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_113
    const-string v0, "editor_block_sms_report_single_calllog"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_114
    const-string v0, "editor_block_sms_addblacklist_single_calllog"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_115
    const-string v0, "editor_block_sms_addcontact_single_calllog"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_116
    const-string v0, "editor_block_sms_call_single_calllog"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_117
    const-string v0, "editor_block_sms_sendsms_single_calllog"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_118
    const-string v0, "editor_block_sms_reportview_report_syscall"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_119
    const-string v0, "editor_block_sms_reportview_report_blockedcall"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_11a
    const-string v0, "editor_secure_space_create_desktop"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_11b
    const-string v0, "editor_notification_contact_backup"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_11c
    const-string v0, "editor_save_power_from_notification"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_11d
    const-string v0, "editor_charge_vindicator_from_notification"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_11e
    const-string v0, "editor_charge_vindicator_from_save_power"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_11f
    const-string v0, "editor_usmanager_filesave_havefile_users"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_120
    const-string v0, "editor_usmanager_privacylock_havesoftware_users"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_121
    const-string v0, "editor_usmanager_securespace_havecontent_users"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_122
    const-string v0, "editor_usmanager_permissionmonitor_open_users"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_123
    const-string v0, "editor_usmanager_file_save_encrypt"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_124
    const-string v0, "editor_usmanager_file_save_decrytion"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_125
    const-string v0, "editor_usmanager_privacy_lock_addlock"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_126
    const-string v0, "editor_usmanager_privacy_lock_releaselock"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_127
    const-string v0, "Editor_ACTION_TrafficAutoAdjust_Close"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_128
    const-string v0, "Editor_ACTION_NetWorkTraffic_Window_Close"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_129
    const-string v0, "editor_malicoous_urls_dialog_i_know"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_12a
    const-string v0, "editor_close_service_keep_open"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_12b
    const-string v0, "editor_desk_assist_fly_mode"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_12c
    const-string v0, "editor_desk_assist_fly_gps"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_12d
    const-string v0, "editor_desk_assist_fly_shock"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_12e
    const-string v0, "editor_desk_assist_fly_screen_rotation"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_12f
    const-string v0, "editore_desk_assist_fly_slide_time_deskassis_area"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_130
    const-string v0, "editor_desk_assist_fly_running_process_num"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_131
    const-string v0, "editor_desk_assist_fly_processmanager_click_num"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_132
    const-string v0, "editor_desk_assist_fly_processmanager_back_click_num"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_133
    const-string v0, "editor_rocket_egg_share_dialog_microblog"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_134
    const-string v0, "editor_rocket_egg_share_dialog_back_btn"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_135
    const-string v0, "editor_rocket_egg_share_dialog_no_notifi_checkbox"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_136
    const-string v0, "editor_rocket_egg_introduction_dialog_i_know"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_137
    const-string v0, "editor_rocket_egg_introduction_dialog_more"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_138
    const-string v0, "editor_rocket_egg_award_winning_dialog_get"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_139
    const-string v0, "editor_rocket_egg_award_winning_dialog_no_get"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_13a
    const-string v0, "editor_rocket_egg_giveup_award_winning_dialog_click_wrong"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_13b
    const-string v0, "editor_rocket_egg_giveup_award_winning_dialog_click_right"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_13c
    const-string v0, "editor_rocket_egg_sure_award_winning_dialog_has_get"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_13d
    const-string v0, "editor_rocket_egg_sure_award_winning_dialog_try_again"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_13e
    const-string v0, "editor_about_givescore"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_13f
    const-string v0, "editor_about_givescore_comein"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_140
    const-string v0, "editor_about_givescore_next"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_141
    const-string v0, "editor_update_self_mode_googleplay"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_142
    const-string v0, "editor_update_self_mode_offical"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_143
    const-string v0, "editor_mobile_antithief_open"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_144
    const-string v0, "editor_mobile_antithief_next"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_145
    const-string v0, "editor_mobile_antithief_guide_open"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_146
    const-string v0, "editor_mobile_antithief_guide_land"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_147
    const-string v0, "editor_mobile_antithief_guide_skip"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_148
    const-string v0, "editor_mobile_antithief_guide_finish"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_149
    const-string v0, "editor_mobile_antithief_by_protected_info"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_14a
    const-string v0, "editor_mobile_antithief_close"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_14b
    const-string v0, "editor_get_root_superuser_mode"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_14c
    const-string v0, "editor_malicoous_urls_dialog_time"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_14d
    const-string v0, "editor_malicoous_urls_toast_time"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_14e
    const-string v0, "editor_private_smsbox_face_recognition_update"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_14f
    const-string v0, "editor_private_smsbox_face_recognition_click"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_150
    const-string v0, "editor_private_smsbox_face_recognition_independent_password_setting"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_151
    const-string v0, "editor_private_protect_password_setting"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_152
    const-string v0, "editor_password_center_switch_password_mode"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_153
    const-string v0, "editor_powermanager_download_powermanager"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_154
    const-string v0, "editor_powermanager_install_powermanager"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_155
    const-string v0, "editor_tarffic_monitor_setting_auto_traffic_redress"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_156
    const-string v0, "editor_mysoftware_software_update_cancel_ignore"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_157
    const-string v0, "editor_mysoftware_software_update_ignore"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_158
    const-string v0, "editor_mysoftware_software_update_ignore_list"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_159
    const-string v0, "editor_secure_settings_desktopstyle"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_15a
    const-string v0, "editor_secure_assistant_setting_style"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_15b
    const-string v0, "editor_secure_rocket_style"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_15c
    const-string v0, "editor_secure_moon_style"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_15d
    const-string v0, "editor_secure_remind_after_10_2_entersetting"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_15e
    const-string v0, "editor_secure_remind_after_10_2_cancle"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_15f
    const-string v0, "editor_secure_adbblock_setting"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_160
    const-string v0, "editor_secure_websitecheck_keepvisit"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_161
    const-string v0, "editor_secure_websitecheck_stopvisit"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_162
    const-string v0, "editor_secure_tool_qqpimcenter_useimmediatly"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_163
    const-string v0, "editor_secure_tool_qqpimcenter_saylater"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_164
    const-string v0, "editor_secure_uninstall_one_key_analysis_dialog"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_165
    const-string v0, "editor_secure_uninstall_one_key_analysis_dialog_go_to_analysis"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_166
    const-string v0, "editor_secure_intercept_resume_message"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_167
    const-string v0, "editor_secure_intercept_recover_sms_sure"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_168
    const-string v0, "editor_secure_tools_recharge"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_169
    const-string v0, "editor_secure_network_manager_config_change_sure"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_16a
    const-string v0, "editor_secure_us_manager_software_lock_open"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_16b
    const-string v0, "editor_secure_us_manager_software_lock_close"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_16c
    const-string v0, "editor_secure_us_manager_software_lock_click"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_16d
    const-string v0, "editor_secure_us_manager_unlock_by_photo"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_16e
    const-string v0, "editor_secure_us_manager_unlock_by_faceverify"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_16f
    const-string v0, "editor_secure_us_manager_use_photo_lock"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_170
    const-string v0, "editor_secure_us_manager_open_password_protect"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_171
    const-string v0, "editor_secure_us_manager_faceverify_failed"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_172
    const-string v0, "editor_secure_us_manager_faceverify_success"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_173
    const-string v0, "editor_secure_into_notification_movesoftware"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_174
    const-string v0, "editor_secure_mainview_guide_user_intercept_prority_sure"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_175
    const-string v0, "editor_secure_mainview_guide_user_intercept_prority_cancel"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_176
    const-string v0, "editor_secure_intercept_guide_user_intercept_prority_sure"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_177
    const-string v0, "editor_secure_intercept_guide_user_intercept_prority_cancel"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_178
    const-string v0, "editor_secure_privatecontact_call"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_179
    const-string v0, "editor_secure_privatecontact_send"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_17a
    const-string v0, "editor_secure_privatecontact_delete"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_17b
    const-string v0, "editor_secure_mobile_antithief_by_lost_phone_link"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_17c
    const-string v0, "editor_secure_one_key_optimize_not_optimize_infact"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_17d
    const-string v0, "editor_secure_mobile_antithief_click_have_no_qq"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_17e
    const-string v0, "editor_secure_into_deep_clean"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_17f
    const-string v0, "editor_secure_deep_clean_into_system_rubbish"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_180
    const-string v0, "editor_secure_deep_clean_remnants_onekey_all"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_181
    const-string v0, "editor_secure_deep_clean_remnants_onekey_not_all"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_182
    const-string v0, "editor_secure_deep_clean_system_rubbish_onekey_all"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_183
    const-string v0, "editor_secure_deep_clean_system_rubbish_onekey_not_all"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_184
    const-string v0, "editor_secure_mainview_click_menu_connect_computer"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_185
    const-string v0, "editor_secure_into_connectassistant_downloadview"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_186
    const-string v0, "editor_secure_connectassistant_downloadview_click_download"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_187
    const-string v0, "editor_secure_network_manager_click_call_check_gprs"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_188
    const-string v0, "editor_secure_network_manager_click_recomand"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_189
    const-string v0, "editor_secure_network_manager_not_click_recomand"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_18a
    const-string v0, "editor_secure_benchmark_click_entrance"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_18b
    const-string v0, "editor_secure_benchmark_click_download"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_18c
    const-string v0, "editor_secure_intercept_receive_mark_unfamily_remind"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_18d
    const-string v0, "editor_secure_intercept_click_notification_mark_unfamily"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_18e
    const-string v0, "editor_secure_intercept_notification_mark_unfamily_mark"

    invoke-direct {p0, p1, v0}, Lnd;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_6
        0x8 -> :sswitch_7
        0x9 -> :sswitch_8
        0xa -> :sswitch_9
        0xb -> :sswitch_a
        0xc -> :sswitch_b
        0xd -> :sswitch_c
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_d
        0x20 -> :sswitch_1f
        0x22 -> :sswitch_20
        0x23 -> :sswitch_21
        0x24 -> :sswitch_22
        0x25 -> :sswitch_23
        0x26 -> :sswitch_24
        0x27 -> :sswitch_25
        0x46 -> :sswitch_26
        0xc8 -> :sswitch_127
        0xc9 -> :sswitch_128
        0x65b9 -> :sswitch_27
        0x65ba -> :sswitch_28
        0x65bb -> :sswitch_29
        0x65bc -> :sswitch_2a
        0x65bd -> :sswitch_2b
        0x65be -> :sswitch_2c
        0x65bf -> :sswitch_2d
        0x65c0 -> :sswitch_2e
        0x65c1 -> :sswitch_2f
        0x65c2 -> :sswitch_30
        0x65c3 -> :sswitch_31
        0x65c4 -> :sswitch_32
        0x65c5 -> :sswitch_33
        0x65c6 -> :sswitch_34
        0x65c7 -> :sswitch_35
        0x65c8 -> :sswitch_36
        0x65c9 -> :sswitch_37
        0x65ca -> :sswitch_38
        0x65cb -> :sswitch_39
        0x65cc -> :sswitch_3a
        0x65cd -> :sswitch_3b
        0x65ce -> :sswitch_3c
        0x65cf -> :sswitch_3d
        0x65d0 -> :sswitch_3e
        0x65d1 -> :sswitch_3f
        0x65d2 -> :sswitch_40
        0x65d3 -> :sswitch_41
        0x65d4 -> :sswitch_42
        0x65d5 -> :sswitch_43
        0x65d6 -> :sswitch_44
        0x65d7 -> :sswitch_45
        0x65d8 -> :sswitch_46
        0x65d9 -> :sswitch_47
        0x65da -> :sswitch_48
        0x65db -> :sswitch_49
        0x65dc -> :sswitch_4a
        0x65dd -> :sswitch_4b
        0x65de -> :sswitch_4c
        0x65df -> :sswitch_4d
        0x65e0 -> :sswitch_4e
        0x65e1 -> :sswitch_4f
        0x65e2 -> :sswitch_50
        0x65e3 -> :sswitch_51
        0x65e4 -> :sswitch_52
        0x65e5 -> :sswitch_53
        0x65e6 -> :sswitch_54
        0x65e7 -> :sswitch_55
        0x65e8 -> :sswitch_56
        0x65e9 -> :sswitch_57
        0x65ea -> :sswitch_58
        0x65eb -> :sswitch_59
        0x65ec -> :sswitch_5a
        0x65ed -> :sswitch_5b
        0x65ee -> :sswitch_5c
        0x65ef -> :sswitch_5d
        0x65f0 -> :sswitch_5e
        0x65f1 -> :sswitch_5f
        0x65f2 -> :sswitch_60
        0x65f3 -> :sswitch_61
        0x65f4 -> :sswitch_62
        0x65f5 -> :sswitch_63
        0x65f6 -> :sswitch_64
        0x65f7 -> :sswitch_65
        0x65f8 -> :sswitch_66
        0x65f9 -> :sswitch_67
        0x65fa -> :sswitch_68
        0x65fb -> :sswitch_69
        0x65fc -> :sswitch_6a
        0x65fd -> :sswitch_6b
        0x65fe -> :sswitch_6c
        0x6600 -> :sswitch_6d
        0x6601 -> :sswitch_6e
        0x6602 -> :sswitch_6f
        0x6603 -> :sswitch_70
        0x6604 -> :sswitch_71
        0x6605 -> :sswitch_72
        0x6606 -> :sswitch_73
        0x6607 -> :sswitch_74
        0x6608 -> :sswitch_75
        0x6609 -> :sswitch_76
        0x660a -> :sswitch_77
        0x660b -> :sswitch_78
        0x660c -> :sswitch_79
        0x660d -> :sswitch_7a
        0x6614 -> :sswitch_7b
        0x6616 -> :sswitch_7c
        0x6617 -> :sswitch_7d
        0x6618 -> :sswitch_7e
        0x6619 -> :sswitch_7f
        0x661a -> :sswitch_80
        0x661b -> :sswitch_81
        0x661c -> :sswitch_82
        0x661d -> :sswitch_83
        0x661e -> :sswitch_84
        0x661f -> :sswitch_85
        0x6620 -> :sswitch_86
        0x6621 -> :sswitch_87
        0x6622 -> :sswitch_88
        0x6623 -> :sswitch_89
        0x6624 -> :sswitch_8a
        0x6625 -> :sswitch_8b
        0x6626 -> :sswitch_8c
        0x6627 -> :sswitch_8d
        0x6628 -> :sswitch_8e
        0x6629 -> :sswitch_8f
        0x662a -> :sswitch_90
        0x662b -> :sswitch_91
        0x662c -> :sswitch_92
        0x662d -> :sswitch_93
        0x662e -> :sswitch_94
        0x662f -> :sswitch_95
        0x6630 -> :sswitch_96
        0x6631 -> :sswitch_97
        0x6632 -> :sswitch_98
        0x6633 -> :sswitch_99
        0x6634 -> :sswitch_9a
        0x6635 -> :sswitch_9b
        0x6636 -> :sswitch_9c
        0x6637 -> :sswitch_9d
        0x6638 -> :sswitch_9e
        0x6639 -> :sswitch_9f
        0x663a -> :sswitch_a0
        0x663b -> :sswitch_a1
        0x663c -> :sswitch_a2
        0x6648 -> :sswitch_a3
        0x6649 -> :sswitch_a4
        0x664a -> :sswitch_a5
        0x664b -> :sswitch_a6
        0x664c -> :sswitch_a7
        0x664d -> :sswitch_a8
        0x664e -> :sswitch_a9
        0x664f -> :sswitch_aa
        0x6650 -> :sswitch_ab
        0x6651 -> :sswitch_ac
        0x6653 -> :sswitch_ad
        0x6654 -> :sswitch_ae
        0x6655 -> :sswitch_af
        0x6656 -> :sswitch_b0
        0x6657 -> :sswitch_b1
        0x6658 -> :sswitch_b2
        0x6659 -> :sswitch_b3
        0x665a -> :sswitch_b4
        0x6664 -> :sswitch_b5
        0x6665 -> :sswitch_b6
        0x6666 -> :sswitch_b7
        0x6667 -> :sswitch_b8
        0x666b -> :sswitch_b9
        0x666c -> :sswitch_ba
        0x666d -> :sswitch_bb
        0x666e -> :sswitch_bc
        0x666f -> :sswitch_bd
        0x6670 -> :sswitch_be
        0x6671 -> :sswitch_bf
        0x6677 -> :sswitch_c0
        0x6678 -> :sswitch_c1
        0x6679 -> :sswitch_c2
        0x667a -> :sswitch_c3
        0x667b -> :sswitch_c4
        0x667c -> :sswitch_c5
        0x667d -> :sswitch_c6
        0x667e -> :sswitch_c7
        0x667f -> :sswitch_c8
        0x6680 -> :sswitch_c9
        0x6681 -> :sswitch_ca
        0x6682 -> :sswitch_cb
        0x6683 -> :sswitch_cc
        0x6684 -> :sswitch_cd
        0x6685 -> :sswitch_ce
        0x6686 -> :sswitch_cf
        0x6687 -> :sswitch_d0
        0x6688 -> :sswitch_d1
        0x6689 -> :sswitch_d2
        0x668a -> :sswitch_d3
        0x668b -> :sswitch_d4
        0x668c -> :sswitch_d5
        0x668d -> :sswitch_d6
        0x668e -> :sswitch_d7
        0x668f -> :sswitch_d8
        0x6690 -> :sswitch_d9
        0x6691 -> :sswitch_da
        0x6692 -> :sswitch_db
        0x6693 -> :sswitch_dc
        0x6696 -> :sswitch_dd
        0x6697 -> :sswitch_de
        0x6698 -> :sswitch_df
        0x6699 -> :sswitch_e0
        0x669a -> :sswitch_e1
        0x669b -> :sswitch_e2
        0x669c -> :sswitch_e3
        0x669d -> :sswitch_e4
        0x669e -> :sswitch_e5
        0x669f -> :sswitch_e6
        0x66a0 -> :sswitch_e7
        0x66a1 -> :sswitch_e8
        0x66a2 -> :sswitch_e9
        0x66a3 -> :sswitch_ea
        0x66a4 -> :sswitch_eb
        0x66a5 -> :sswitch_ec
        0x66a6 -> :sswitch_ed
        0x66a7 -> :sswitch_ee
        0x66a8 -> :sswitch_ef
        0x66a9 -> :sswitch_f0
        0x66ab -> :sswitch_f1
        0x66ad -> :sswitch_f2
        0x66ae -> :sswitch_f3
        0x66af -> :sswitch_f4
        0x66b0 -> :sswitch_f5
        0x66b1 -> :sswitch_f6
        0x66b2 -> :sswitch_f7
        0x66b3 -> :sswitch_f8
        0x66b4 -> :sswitch_f9
        0x66b5 -> :sswitch_fa
        0x66b6 -> :sswitch_fb
        0x66b7 -> :sswitch_fc
        0x66b8 -> :sswitch_fd
        0x66b9 -> :sswitch_fe
        0x66ba -> :sswitch_ff
        0x66bb -> :sswitch_100
        0x66bc -> :sswitch_101
        0x66bd -> :sswitch_102
        0x66be -> :sswitch_103
        0x66c3 -> :sswitch_104
        0x66c4 -> :sswitch_105
        0x66c5 -> :sswitch_106
        0x66c6 -> :sswitch_107
        0x66c7 -> :sswitch_108
        0x66c8 -> :sswitch_109
        0x66c9 -> :sswitch_10a
        0x66ca -> :sswitch_10b
        0x66cb -> :sswitch_10c
        0x66cc -> :sswitch_10d
        0x66cd -> :sswitch_10e
        0x66ce -> :sswitch_10f
        0x66cf -> :sswitch_110
        0x66d0 -> :sswitch_111
        0x66d1 -> :sswitch_112
        0x66d2 -> :sswitch_113
        0x66d3 -> :sswitch_114
        0x66d4 -> :sswitch_115
        0x66d5 -> :sswitch_116
        0x66d6 -> :sswitch_117
        0x66d7 -> :sswitch_118
        0x66d8 -> :sswitch_119
        0x66d9 -> :sswitch_11a
        0x66da -> :sswitch_11b
        0x66e5 -> :sswitch_11c
        0x66e6 -> :sswitch_11d
        0x66e7 -> :sswitch_11e
        0x66e8 -> :sswitch_11f
        0x66e9 -> :sswitch_120
        0x66ea -> :sswitch_121
        0x66eb -> :sswitch_122
        0x66ec -> :sswitch_123
        0x66ed -> :sswitch_124
        0x66ee -> :sswitch_125
        0x66ef -> :sswitch_126
        0x66f3 -> :sswitch_129
        0x66f4 -> :sswitch_12a
        0x66f5 -> :sswitch_12b
        0x66f6 -> :sswitch_12d
        0x66f7 -> :sswitch_12c
        0x66f8 -> :sswitch_12e
        0x66f9 -> :sswitch_12f
        0x66fa -> :sswitch_130
        0x66fb -> :sswitch_131
        0x66fc -> :sswitch_132
        0x66fd -> :sswitch_133
        0x66fe -> :sswitch_134
        0x66ff -> :sswitch_135
        0x6700 -> :sswitch_136
        0x6701 -> :sswitch_137
        0x6702 -> :sswitch_138
        0x6703 -> :sswitch_139
        0x6704 -> :sswitch_13a
        0x6705 -> :sswitch_13b
        0x6706 -> :sswitch_13c
        0x6707 -> :sswitch_13d
        0x6708 -> :sswitch_13e
        0x6709 -> :sswitch_13f
        0x670a -> :sswitch_140
        0x670b -> :sswitch_141
        0x670c -> :sswitch_142
        0x670d -> :sswitch_143
        0x670e -> :sswitch_144
        0x670f -> :sswitch_145
        0x6710 -> :sswitch_146
        0x6711 -> :sswitch_147
        0x6712 -> :sswitch_148
        0x6713 -> :sswitch_149
        0x6714 -> :sswitch_14a
        0x6716 -> :sswitch_14b
        0x6717 -> :sswitch_14c
        0x6718 -> :sswitch_14d
        0x6719 -> :sswitch_14f
        0x671a -> :sswitch_14e
        0x671b -> :sswitch_150
        0x671c -> :sswitch_151
        0x671d -> :sswitch_152
        0x671e -> :sswitch_153
        0x671f -> :sswitch_154
        0x6720 -> :sswitch_155
        0x6721 -> :sswitch_157
        0x6722 -> :sswitch_158
        0x6723 -> :sswitch_156
        0x6725 -> :sswitch_159
        0x6726 -> :sswitch_15a
        0x6727 -> :sswitch_15b
        0x6728 -> :sswitch_15c
        0x6729 -> :sswitch_15d
        0x672a -> :sswitch_15e
        0x672b -> :sswitch_15f
        0x672c -> :sswitch_160
        0x672d -> :sswitch_161
        0x672e -> :sswitch_162
        0x672f -> :sswitch_163
        0x6730 -> :sswitch_164
        0x6731 -> :sswitch_165
        0x6732 -> :sswitch_166
        0x6735 -> :sswitch_167
        0x6736 -> :sswitch_168
        0x6737 -> :sswitch_169
        0x6738 -> :sswitch_16a
        0x6739 -> :sswitch_16b
        0x673a -> :sswitch_16c
        0x673b -> :sswitch_16d
        0x673c -> :sswitch_16e
        0x673d -> :sswitch_16f
        0x673e -> :sswitch_170
        0x673f -> :sswitch_171
        0x6740 -> :sswitch_172
        0x6741 -> :sswitch_173
        0x6742 -> :sswitch_174
        0x6743 -> :sswitch_175
        0x6744 -> :sswitch_176
        0x6745 -> :sswitch_177
        0x6746 -> :sswitch_178
        0x6747 -> :sswitch_179
        0x6748 -> :sswitch_17a
        0x6749 -> :sswitch_17c
        0x674a -> :sswitch_17b
        0x674d -> :sswitch_17d
        0x6751 -> :sswitch_17e
        0x6752 -> :sswitch_17f
        0x6753 -> :sswitch_180
        0x6754 -> :sswitch_181
        0x6755 -> :sswitch_182
        0x6756 -> :sswitch_183
        0x6757 -> :sswitch_184
        0x6758 -> :sswitch_185
        0x6759 -> :sswitch_186
        0x675a -> :sswitch_187
        0x675b -> :sswitch_188
        0x675c -> :sswitch_189
        0x675d -> :sswitch_18a
        0x675e -> :sswitch_18b
        0x6763 -> :sswitch_18c
        0x6764 -> :sswitch_18d
        0x6765 -> :sswitch_18e
    .end sparse-switch
.end method

.method public final a(II)V
    .locals 1

    sparse-switch p1, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    const-string v0, "Editor_Secure_NetError_CloudScan"

    invoke-direct {p0, p1, v0, p2}, Lnd;->a(ILjava/lang/String;I)V

    goto :goto_0

    :sswitch_1
    const-string v0, "Editor_Secure_NetError_UpdateVirusBase"

    invoke-direct {p0, p1, v0, p2}, Lnd;->a(ILjava/lang/String;I)V

    goto :goto_0

    :sswitch_2
    const-string v0, "Editor_Secure_NetError_CheckDataBase"

    invoke-direct {p0, p1, v0, p2}, Lnd;->a(ILjava/lang/String;I)V

    goto :goto_0

    :sswitch_3
    const-string v0, "Editor_Secure_NetError_CheckSoftVersion"

    invoke-direct {p0, p1, v0, p2}, Lnd;->a(ILjava/lang/String;I)V

    goto :goto_0

    :sswitch_4
    const-string v0, "Editor_Secure_NetError_CheckMySoftware"

    invoke-direct {p0, p1, v0, p2}, Lnd;->a(ILjava/lang/String;I)V

    goto :goto_0

    :sswitch_5
    const-string v0, "Editor_Secure_NetError_SoftwareGame"

    invoke-direct {p0, p1, v0, p2}, Lnd;->a(ILjava/lang/String;I)V

    goto :goto_0

    :sswitch_6
    const-string v0, "Editor_Secure_NetError_QQNetDisk"

    invoke-direct {p0, p1, v0, p2}, Lnd;->a(ILjava/lang/String;I)V

    goto :goto_0

    :sswitch_7
    const-string v0, "editor_secure_cloudmanager_connect"

    invoke-direct {p0, p1, v0, p2}, Lnd;->a(ILjava/lang/String;I)V

    goto :goto_0

    :sswitch_8
    const-string v0, "editor_get_root_result"

    invoke-direct {p0, p1, v0, p2}, Lnd;->a(ILjava/lang/String;I)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x663e -> :sswitch_0
        0x663f -> :sswitch_1
        0x6640 -> :sswitch_2
        0x6641 -> :sswitch_3
        0x6642 -> :sswitch_4
        0x6643 -> :sswitch_5
        0x6644 -> :sswitch_6
        0x6715 -> :sswitch_8
        0x6733 -> :sswitch_7
    .end sparse-switch
.end method

.method public final a(Ljava/lang/String;I)Z
    .locals 2

    iget-object v0, p0, Lnd;->a:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lnd;->b(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lkt;",
            ">;"
        }
    .end annotation

    const/16 v4, 0x671c

    const/16 v3, 0x6653

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "FILTER_SAVE_SUC_STR"

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "INTO_FILTERINFO_STR"

    const/4 v2, 0x2

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "START_KILL_STR"

    const/4 v2, 0x3

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "UPDATE_VIRUS_BASE_STR"

    const/4 v2, 0x4

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "INTO_SECRET_STR"

    const/4 v2, 0x5

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "ONEKEY_CLEAR_STR"

    const/4 v2, 0x6

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "INTO_PRO_MANAGE_STR"

    const/4 v2, 0x7

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "INTO_APP_MANAGE_STR"

    const/16 v2, 0x8

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "DOWNLOAD_STR"

    const/16 v2, 0x9

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "DAY_BEST_TAB_STR"

    const/16 v2, 0xa

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "PRESS_AD_STR"

    const/16 v2, 0xb

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "PRESS_FIRST_SEND_STR"

    const/16 v2, 0xc

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "ONE_KEY_CHECK_STR"

    const/16 v2, 0xd

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "ONE_KEY_OPTIMIZATION_STR"

    const/16 v2, 0x1f

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "USED_COPY_STR"

    const/16 v2, 0xe

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "USED_RESET_STR"

    const/16 v2, 0xf

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "CHARGE_SMS_CHECK_STR"

    const/16 v2, 0x10

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "LOCATION_CHECK_STR"

    const/16 v2, 0x11

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "OPEN_IPCALL_STR"

    const/16 v2, 0x12

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "SET_IPCALL_STR"

    const/16 v2, 0x13

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "KILL_ONE_P_STR"

    const/16 v2, 0x14

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "KILL_ALL_P_STR"

    const/16 v2, 0x15

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "CLEAR_ONE_RUBISH_STR"

    const/16 v2, 0x16

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "CLEAR_All_RUBISH_STR"

    const/16 v2, 0x17

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "ADD_WHITE_NAME_STR"

    const/16 v2, 0x18

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "ADD_NET_WIDGET_STR"

    const/16 v2, 0x19

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "INTO_NETSETTING_STR"

    const/16 v2, 0x1a

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "GET_ROOT_STR"

    const/16 v2, 0x1b

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "MOTION_APP_CHANGE_STR"

    const/16 v2, 0x1c

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "SAVE_APP_CHANGE_STR"

    const/16 v2, 0x1d

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "LOG_APP_CHANGE_STR"

    const/16 v2, 0x1e

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "ACTION_UNINSTALLATION_STR"

    const/16 v2, 0x20

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_RUNNING_ONEKEY_DO"

    const/16 v2, 0x22

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_OPEN_PHONE_ONEKEY_DO"

    const/16 v2, 0x23

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_ANTI_THEFT_SWITH"

    const/16 v2, 0x24

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_PHONE_CUT_SWITH"

    const/16 v2, 0x25

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_PUSH_FUNTION"

    const/16 v2, 0x26

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_INTO_MAIN_MENU"

    const/16 v2, 0x27

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_INTO_PHONE_KEY_SMALL"

    const/16 v2, 0x46

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_INTO_MAINVIEW"

    const/16 v2, 0x65b9

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_INTO_MYSOFTWARE_ONEKEYANALY"

    const/16 v2, 0x65ba

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_INTO_MYSOFTWARE_UPDATE"

    const/16 v2, 0x65bb

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_INTO_MYSOFTWARE_UNINSTALL"

    const/16 v2, 0x65bc

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_INTO_MYSOFTWARE_APKMANAGER"

    const/16 v2, 0x65bd

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_INTO_MYSOFTWARE_SOFTWARE_MOVE"

    const/16 v2, 0x65be

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_INTO_MARKET_CATEGORY"

    const/16 v2, 0x65bf

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_INTO_MARKET_NECESSARY"

    const/16 v2, 0x65c0

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_INTO_MARKET_SEARCH"

    const/16 v2, 0x65c1

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_INTO_MARKET_DOWNLOAD_MANAGER"

    const/16 v2, 0x65c2

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_INTO_SYNC_BACKUP_CONTACT"

    const/16 v2, 0x65c3

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_INTO_SYNC_RESTORE_CONTACT"

    const/16 v2, 0x65c4

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_INTO_SYNC_ACCOUNT_SETTING"

    const/16 v2, 0x65c5

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_INTO_MAINVIEW_MYSOFTWARE"

    const/16 v2, 0x65c6

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_INTO_MAINVIEW_MARKET"

    const/16 v2, 0x65c7

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_INTO_MAINVIEW_INTERCEPT"

    const/16 v2, 0x65c8

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_INTO_MIANVIEW_VIRUS_SCAN"

    const/16 v2, 0x65c9

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_INTO_MAINVIEW_COMMON_TOOLS"

    const/16 v2, 0x65ca

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_INTO_NOTIFICATION_VIRUS_SCAN"

    const/16 v2, 0x65cb

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_INTO_NOTIFICATION_SMS_CHECK"

    const/16 v2, 0x65cc

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_INTO_NOTIFICATION_SECURESPACE"

    const/16 v2, 0x65cd

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_INTO_NOTIFICATION_UPDATE"

    const/16 v2, 0x65ce

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_INTO_NOTIFICATION_DOWNLOAD"

    const/16 v2, 0x65cf

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_INTO_BOTIFICATION_SCREENSHOT"

    const/16 v2, 0x65d0

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_INTO_PROCESSMAIN_MANAGER"

    const/16 v2, 0x65d1

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_INTO_PROCESSMAIN_BOOT_OPTIMIZE"

    const/16 v2, 0x65d2

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_INTO_PROCESSMAIN_DATA_CLEAR"

    const/16 v2, 0x65d3

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_INTO_VIRUS_QUICKSCAN"

    const/16 v2, 0x65d4

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_INTO_VIRUS_FULL_SCAN"

    const/16 v2, 0x65d5

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_INTO_VIRUS_UPDATE"

    const/16 v2, 0x65d6

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_INTO_VIRUS_RECORD"

    const/16 v2, 0x65d7

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_INTO_PERMISSION_SETTING"

    const/16 v2, 0x65d8

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_INTO_PERMISSION_SOFTWARE"

    const/16 v2, 0x65d9

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_INTO_PERMISSION_LOG"

    const/16 v2, 0x65da

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_INTO_TOOLS_SCREEN_SHOT"

    const/16 v2, 0x65db

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_INTO_TOOLS_IPCALL"

    const/16 v2, 0x65dc

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_INTO_TOOLS_LOCATION"

    const/16 v2, 0x65dd

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_INTO_TOOLS_NUMBER_QUERY"

    const/16 v2, 0x65de

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_INTO_TOOLS_PASSWORD_VER"

    const/16 v2, 0x65df

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_MYSOFTWARE_ANALY_UNINSTALL"

    const/16 v2, 0x65e0

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_MYSOFTWARE_UPDATE_ALL"

    const/16 v2, 0x65e1

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_MYSOFTWARE_UPDATE_ONE"

    const/16 v2, 0x65e2

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_MYSOFTWARE_UNINSTALL_PERSONAL"

    const/16 v2, 0x65e3

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_BATTERY_CHANGE_MODE"

    const/16 v2, 0x65e4

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_BATTERY_ADD_DIYMODE"

    const/16 v2, 0x65e5

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_BATTERY_OPEN"

    const/16 v2, 0x65e6

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_BATTERY_CLOSE"

    const/16 v2, 0x65e7

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_BATTERY_SETTING"

    const/16 v2, 0x65e8

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_WEBDISK_SETTING"

    const/16 v2, 0x65e9

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_WEBDISK_CHANGE_TAB"

    const/16 v2, 0x65ea

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_NETWORK_AUTOADJUST"

    const/16 v2, 0x65eb

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_NETWORK_WAP_SORT"

    const/16 v2, 0x65ec

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_NETWORK_SETTING"

    const/16 v2, 0x65ed

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_SMSCHARGE_CHECK_SCAN"

    const/16 v2, 0x65ee

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_INTERCEPT_FILTER_SETTING"

    const/16 v2, 0x65ef

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_INTERCEPT_CONTACT_LIST_BACKUP"

    const/16 v2, 0x65f0

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_INTERCEPT_CONTACT_LIST_RESTORE"

    const/16 v2, 0x65f1

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_INTERCEPT_ADD_BLACK_CONTACT"

    const/16 v2, 0x65f2

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_INTERCEPT_ADD_WHITE_CONTACT"

    const/16 v2, 0x65f3

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_INTERCEPT_ADD_KEYWORD"

    const/16 v2, 0x65f4

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_SECURE_SPACE_ADD_CONTACT"

    const/16 v2, 0x65f5

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_PICKPROOF_OPEN"

    const/16 v2, 0x65f6

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_PICKPROOF_GUIDE_FINISH"

    const/16 v2, 0x65f7

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_PROCESSMAIN_ONE_KEY_OPTIMIZE"

    const/16 v2, 0x65f8

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_PROCESSMAIN_PRO_MRG_STOPALL"

    const/16 v2, 0x65f9

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_PERMISSION_OPEN"

    const/16 v2, 0x65fa

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_PERMISSION_SOFTWARE_SET"

    const/16 v2, 0x65fb

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_PERMISSION_SECURESPACE"

    const/16 v2, 0x65fc

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_TOOLS_SCREEN_SHOT_OPEN"

    const/16 v2, 0x65fd

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_MAINVIEW_OPTIMIZE_FINISH"

    const/16 v2, 0x65fe

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_INTO_NET_MANAGER"

    const/16 v2, 0x6600

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_INTO_PHONE_UP"

    const/16 v2, 0x6601

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_INTO_SAVE_POWER"

    const/16 v2, 0x6602

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_INTO_SYNC_COPY"

    const/16 v2, 0x6603

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_INTO_OPEN_UP"

    const/16 v2, 0x6604

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_INTO_APK_MAANGER"

    const/16 v2, 0x6605

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_INTO_US_MAANGER"

    const/16 v2, 0x6606

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_INTO_PAY_SMS"

    const/16 v2, 0x6607

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_INTO_IP_CALL"

    const/16 v2, 0x6608

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_INTO_PHONE_CHECK"

    const/16 v2, 0x6609

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_INTO_INTO_SAVE_PHONE"

    const/16 v2, 0x660a

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_INTO_PHONE_CUT"

    const/16 v2, 0x660b

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_INTO_INTO_COMMON_FUNTION"

    const/16 v2, 0x660c

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_INTO_WEBDISK"

    const/16 v2, 0x660d

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_State_NetWorkTraffic_Window_Open"

    const/16 v2, 0x6614

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_TaskManagerWidgetMini_Open"

    const/16 v2, 0x6616

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_TaskManagerWidgetMini_Close"

    const/16 v2, 0x6617

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_KillProcess_WidgetMini"

    const/16 v2, 0x6618

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_TaskManagerWidget_Open"

    const/16 v2, 0x6619

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_TaskManagerWidger_Close"

    const/16 v2, 0x661a

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_TaskManagerWidget_INTO_MainView"

    const/16 v2, 0x661b

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_OneKeyOptimize_TaskManagerWidger"

    const/16 v2, 0x661c

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_NetSetWidget_Open"

    const/16 v2, 0x661d

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_NetSetWidget_Close"

    const/16 v2, 0x661e

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_NetSetWidget_INTO_MainView"

    const/16 v2, 0x661f

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_NetSetWidget_Wifi_Open"

    const/16 v2, 0x6620

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_NetSetWidget_Wifi_Close"

    const/16 v2, 0x6621

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_NetSetWidget_GPRS_Open"

    const/16 v2, 0x6622

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_NetSetWidget_GPRS_Close"

    const/16 v2, 0x6623

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_NetSetWidget_NET_WAP_Change"

    const/16 v2, 0x6624

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_NetSetWidget_INTO_SettingView"

    const/16 v2, 0x6625

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_MainView_CheckDBUpdate"

    const/16 v2, 0x6626

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_MainView_CheckVersionUpdate"

    const/16 v2, 0x6627

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_Market_INTO_MySoftware"

    const/16 v2, 0x6628

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_Market_Advertise_Position1"

    const/16 v2, 0x6629

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_Market_Advertise_Position2"

    const/16 v2, 0x662a

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_Market_Advertise_Position3"

    const/16 v2, 0x662b

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_Market_SOFTWARE_CATEGORY"

    const/16 v2, 0x662c

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_Market_TAB_NEW_PRODUCT"

    const/16 v2, 0x662d

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_ACTIVATE_QQSECURE_UI"

    const/16 v2, 0x662e

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_SETTINGS_STOP_SERVICE"

    const/16 v2, 0x662f

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_SETTINGS_START_SERVICE"

    const/16 v2, 0x6630

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_SETTINGS_STOP_ASSISTANT"

    const/16 v2, 0x6631

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_SETTINGS_START_ASSISTANT"

    const/16 v2, 0x6632

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_ASSISTANT_OPTIMIZE"

    const/16 v2, 0x6633

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_ASSISTANT_EXPAND_MORE"

    const/16 v2, 0x6634

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_ASSISTANT_CLOSE_MORE"

    const/16 v2, 0x6635

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_ASSISTANT_CLOSE_FLOW_WINDOW"

    const/16 v2, 0x6636

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_ASSISTANT_OPEN_FLOW_WINDOW"

    const/16 v2, 0x6637

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_ASSISTANT_SWITCH_GPRS"

    const/16 v2, 0x6638

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_ASSISTANT_SWITCH_WIFI"

    const/16 v2, 0x6639

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_ASSISTANT_SWITCH_BELL"

    const/16 v2, 0x663a

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_STOP_TASK_CANCEL_ADVICE"

    const/16 v2, 0x663b

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_STOP_TASK_ACCEPT_ADVICE"

    const/16 v2, 0x663c

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_Private_Secure_INTO_Permission_Monitor"

    const/16 v2, 0x6648

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_Private_Secure_INTO_File_Save"

    const/16 v2, 0x6649

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_Private_Secure_INTO_Privacy_Lock"

    const/16 v2, 0x664a

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_Notification_INTO_Intercept"

    const/16 v2, 0x664b

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_ONEKEY_CHECK_Cancel_On_Switch"

    const/16 v2, 0x664c

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_ONEKEY_CHECK_Cancel_On_AutoRun"

    const/16 v2, 0x664d

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_ONEKEY_CHECK_Cancel_On_CacheData"

    const/16 v2, 0x664e

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_ONEKEY_CHECK_Cancel_On_Virus"

    const/16 v2, 0x664f

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_NETWORK_MANAGER_INTO_NetWork_Filter"

    const/16 v2, 0x6650

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_NETWORK_MANAGER_NetWork_Filter_OperSwitch"

    const/16 v2, 0x6651

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_ImportContactInfo_Import"

    invoke-direct {p0, v0, v1, v3}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_ImportContactInfo_Cancel"

    invoke-direct {p0, v0, v1, v3}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_VirusTabView_INTO_ProfessionalKiller"

    const/16 v2, 0x6655

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_VirusTabView_Finish_QuickScan"

    const/16 v2, 0x6656

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_VirusTabView_Finish_FullScan"

    const/16 v2, 0x6657

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_Market_INTO_Software_Rank"

    const/16 v2, 0x6658

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_Market_INTO_Game"

    const/16 v2, 0x6659

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_New_Secure_OPEN_PHONE_ONEKEY_DO"

    const/16 v2, 0x665a

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_Secure_NetError_CloudScan"

    const/16 v2, 0x663e

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_Secure_NetError_UpdateVirusBase"

    const/16 v2, 0x663f

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_Secure_NetError_CheckDataBase"

    const/16 v2, 0x6640

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_Secure_NetError_CheckSoftVersion"

    const/16 v2, 0x6641

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_Secure_NetError_CheckMySoftware"

    const/16 v2, 0x6642

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_Secure_NetError_SoftwareGame"

    const/16 v2, 0x6643

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_Secure_NetError_QQNetDisk"

    const/16 v2, 0x6644

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_ACTION_Secure_QQPHONEBOOK_PUSH_OK"

    const/16 v2, 0x6664

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_ACTION_Secure_QQPHONEBOOK_PUSH_CAMCEL"

    const/16 v2, 0x6665

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_PUSH_WANDOUJIA"

    const/16 v2, 0x6666

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_Secure_MAINVIEW_Move_Desktop_Panel_Boxes"

    const/16 v2, 0x6667

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_Secure_NETWORK_MANAGER_Flow_Auto_Adjust_Config"

    const/16 v2, 0x666b

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_Secure_NETWORK_MANAGER_GPRS_Used_For_Month_Config"

    const/16 v2, 0x666c

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_Secure_NETWORK_MANAGER_GPRS_Used_For_Month_Config_Confirm"

    const/16 v2, 0x666d

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_Secure_NETWORK_MANAGER_GPRS_Used_For_Month_Config_By_SMS"

    const/16 v2, 0x666e

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_Secure_NETWORK_MANAGER_GPRS_Used_For_Month_Config_By_Phone"

    const/16 v2, 0x666f

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_Secure_NETWORK_MANAGER_GPRS_TotalLimit_For_Month_Config"

    const/16 v2, 0x6670

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_Secure_NETWORK_MANAGER_GPRS_Closing_Day_Config"

    const/16 v2, 0x6671

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_Secure_Notification_Recommend_Weekly"

    const/16 v2, 0x6677

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_Secure_Market_Create_Desktop_Shortcut"

    const/16 v2, 0x6678

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_Secure_MYSOFTWARE_ONEKEYANALY_Unistall"

    const/16 v2, 0x6679

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_Secure_PROCESSMAIN_INTO_SettingView"

    const/16 v2, 0x667a

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_Secure_PROCESSMAIN_Add_OneKeyAnaly_WhiteList"

    const/16 v2, 0x667b

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_Secure_PROCESSMAIN_Add_OneKeyAnaly_WhiteList_Confirm"

    const/16 v2, 0x667c

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_Secure_VirusTabView_Show_Menu"

    const/16 v2, 0x667d

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_Secure_VirusTabView_INTO_Menu_SettingView"

    const/16 v2, 0x667e

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_Secure_VirusTabView_Cancel_QuickScan"

    const/16 v2, 0x667f

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_Secure_VirusTabView_Cancel_FullScan"

    const/16 v2, 0x6680

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_Secure_PROCESSMAIN_WhileList_Setting_Hint_Set_Immediately"

    const/16 v2, 0x6681

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_Secure_PROCESSMAIN_WhileList_Setting_Hint_Never_Ask"

    const/16 v2, 0x6682

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_Secure_Notification_Prompt_VirusLib_Update"

    const/16 v2, 0x6683

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_Secure_Notification_VirusLib_Update_And_Scan"

    const/16 v2, 0x6684

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_Secure_Notification_VirusLib_Update_Cancel"

    const/16 v2, 0x6685

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_Secure_Notification_Prompt_New_ProfessionalKiller"

    const/16 v2, 0x6686

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_Secure_Outside_VirusTabView_Kill_Immediately"

    const/16 v2, 0x6687

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_Secure_Outside_VirusTabView_Dont_Kill_Now"

    const/16 v2, 0x6688

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_Secure_MAINVIEW_Show_Menu"

    const/16 v2, 0x6689

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_Secure_MAINVIEW_Into_Menu_Setting"

    const/16 v2, 0x668a

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_Secure_MAINVIEW_Into_Menu_Feedback"

    const/16 v2, 0x668b

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_Secure_MAINVIEW_Into_Menu_CheckUpdate"

    const/16 v2, 0x668c

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_Secure_MAINVIEW_Into_Menu_Feedback_Problem"

    const/16 v2, 0x668d

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_Secure_MAINVIEW_Into_Menu_Feedback_Location"

    const/16 v2, 0x668e

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_Secure_MAINVIEW_Into_Menu_CheckUpdate_Update_Immediately"

    const/16 v2, 0x668f

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_Secure_MAINVIEW_Into_Menu_CheckUpdate_Update_NextTime"

    const/16 v2, 0x6690

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_Secure_MAINVIEW_Into_Menu_About"

    const/16 v2, 0x6691

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_Secure_MAINVIEW_Into_Menu_Recommend_To_Friend"

    const/16 v2, 0x6692

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_Secure_MAINVIEW_Into_Menu_OperatingActivity"

    const/16 v2, 0x6693

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "Editor_Secure_Battery_Open_Deep_Save"

    const/16 v2, 0x6696

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_assistant_switch_audio"

    const/16 v2, 0x6697

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_assistant_open"

    const/16 v2, 0x6698

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_system_setting_assistant_style_number"

    const/16 v2, 0x6699

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_system_setting_assistant_style_rocket"

    const/16 v2, 0x669a

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_assistant_setting"

    const/16 v2, 0x669b

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_assistant_setting_open"

    const/16 v2, 0x669c

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_assistant_setting_style_number"

    const/16 v2, 0x669d

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_assistant_setting_style_rocket"

    const/16 v2, 0x669e

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_assistant_move_to_fire"

    const/16 v2, 0x669f

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_assistant_rocket_launch_success"

    const/16 v2, 0x66a0

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_commontools_wandoujia_enabled"

    const/16 v2, 0x66a1

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_commontools_wandoujia_next_time"

    const/16 v2, 0x66a2

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_commontools_wandoujia_open"

    const/16 v2, 0x66a3

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_securespace_restore_sms_from_sdcard"

    const/16 v2, 0x66a4

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_securespace_restore_sms_from_sdcard_cancel"

    const/16 v2, 0x66a5

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_sync_assist_download_immediatly"

    const/16 v2, 0x66a6

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_sync_assist_download_later"

    const/16 v2, 0x66a7

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_sync_assist_download_from_yellow_text"

    const/16 v2, 0x66a8

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_sync_assist_into_qqsyncassist"

    const/16 v2, 0x66a9

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_recommend_weekly_popup_download"

    const/16 v2, 0x66ab

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_notification_remind_updatevirusbase"

    const/16 v2, 0x66ad

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_notification_update_virus_database"

    const/16 v2, 0x66ae

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_notification_cancel_update_virusbase"

    const/16 v2, 0x66af

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_notification_enter_kill_tool"

    const/16 v2, 0x66b0

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_enter_qqpim"

    const/16 v2, 0x66b1

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_notification_adblock"

    const/16 v2, 0x66b2

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_into_tools_adblock"

    const/16 v2, 0x66b3

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_adblock_allow_this_notify"

    const/16 v2, 0x66b4

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_adblock_ban_this_notify"

    const/16 v2, 0x66b5

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_adblock_allow_suspicious_notify"

    const/16 v2, 0x66b6

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_adblock_ban_suspicious_notify"

    const/16 v2, 0x66b7

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_adblock_menu_clean_history"

    const/16 v2, 0x66b8

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_adblock_into_setting"

    const/16 v2, 0x66b9

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_adblock_into_setting_notification_service"

    const/16 v2, 0x66ba

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_adblock_report_adapplication"

    const/16 v2, 0x66bb

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_adblock_notify_times"

    const/16 v2, 0x66bc

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_before_onekeyanaly_usememory_percent"

    const/16 v2, 0x66bd

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_after_onekeyanaly_usememory_percent"

    const/16 v2, 0x66be

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_websiteremind_remindwindow_iknow"

    const/16 v2, 0x66c3

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_websiteremind_remindwindow_neverremind"

    const/16 v2, 0x66c4

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_settings_websiteremind_open_or_close"

    const/16 v2, 0x66c5

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_settings_websiteremind_keep_open"

    const/16 v2, 0x66c6

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_settings_websiteremind_keep_close"

    const/16 v2, 0x66c7

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_network_manager_click_flow_not_right"

    const/16 v2, 0x66c8

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_network_manager_report_flow_not_right"

    const/16 v2, 0x66c9

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_network_manager_adjust_flow_not_right"

    const/16 v2, 0x66ca

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_block_sms_report_single_message"

    const/16 v2, 0x66cb

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_block_sms_delete_single_message"

    const/16 v2, 0x66cc

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_block_sms_addblacklist_single_message"

    const/16 v2, 0x66cd

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_block_sms_addwhitelist_single_message"

    const/16 v2, 0x66ce

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_block_sms_restore_single_message"

    const/16 v2, 0x66cf

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_block_sms_reportview_report_sysmessage"

    const/16 v2, 0x66d0

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_block_sms_reportview_report_blockedmessage"

    const/16 v2, 0x66d1

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_block_sms_report_single_calllog"

    const/16 v2, 0x66d2

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_block_sms_addblacklist_single_calllog"

    const/16 v2, 0x66d3

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_block_sms_addcontact_single_calllog"

    const/16 v2, 0x66d4

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_block_sms_call_single_calllog"

    const/16 v2, 0x66d5

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_block_sms_sendsms_single_calllog"

    const/16 v2, 0x66d6

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_block_sms_reportview_report_syscall"

    const/16 v2, 0x66d7

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_block_sms_reportview_report_blockedcall"

    const/16 v2, 0x66d8

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_secure_space_create_desktop"

    const/16 v2, 0x66d9

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_notification_contact_backup"

    const/16 v2, 0x66da

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_save_power_from_notification"

    const/16 v2, 0x66e5

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_charge_vindicator_from_notification"

    const/16 v2, 0x66e6

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_charge_vindicator_from_save_power"

    const/16 v2, 0x66e7

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_usmanager_filesave_havefile_users"

    const/16 v2, 0x66e8

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_usmanager_privacylock_havesoftware_users"

    const/16 v2, 0x66e9

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_usmanager_securespace_havecontent_users"

    const/16 v2, 0x66ea

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_usmanager_permissionmonitor_open_users"

    const/16 v2, 0x66eb

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_usmanager_file_save_encrypt"

    const/16 v2, 0x66ec

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_usmanager_file_save_decrytion"

    const/16 v2, 0x66ed

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_usmanager_privacy_lock_addlock"

    const/16 v2, 0x66ee

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_usmanager_privacy_lock_releaselock"

    const/16 v2, 0x66ef

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_malicoous_urls_dialog_i_know"

    const/16 v2, 0x66f3

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_close_service_keep_open"

    const/16 v2, 0x66f4

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_desk_assist_fly_mode"

    const/16 v2, 0x66f5

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_desk_assist_fly_gps"

    const/16 v2, 0x66f7

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_desk_assist_fly_shock"

    const/16 v2, 0x66f6

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_desk_assist_fly_screen_rotation"

    const/16 v2, 0x66f8

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editore_desk_assist_fly_slide_time_deskassis_area"

    const/16 v2, 0x66f9

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_desk_assist_fly_running_process_num"

    const/16 v2, 0x66fa

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_desk_assist_fly_processmanager_click_num"

    const/16 v2, 0x66fb

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_desk_assist_fly_processmanager_back_click_num"

    const/16 v2, 0x66fc

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_rocket_egg_share_dialog_microblog"

    const/16 v2, 0x66fd

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_rocket_egg_share_dialog_back_btn"

    const/16 v2, 0x66fe

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_rocket_egg_share_dialog_no_notifi_checkbox"

    const/16 v2, 0x66ff

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_rocket_egg_introduction_dialog_i_know"

    const/16 v2, 0x6700

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_rocket_egg_introduction_dialog_more"

    const/16 v2, 0x6701

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_rocket_egg_award_winning_dialog_get"

    const/16 v2, 0x6702

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_rocket_egg_award_winning_dialog_no_get"

    const/16 v2, 0x6703

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_rocket_egg_giveup_award_winning_dialog_click_wrong"

    const/16 v2, 0x6704

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_rocket_egg_giveup_award_winning_dialog_click_right"

    const/16 v2, 0x6705

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_rocket_egg_sure_award_winning_dialog_has_get"

    const/16 v2, 0x6706

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_rocket_egg_sure_award_winning_dialog_try_again"

    const/16 v2, 0x6707

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_about_givescore"

    const/16 v2, 0x6708

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_about_givescore_comein"

    const/16 v2, 0x6709

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_about_givescore_next"

    const/16 v2, 0x670a

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_update_self_mode_googleplay"

    const/16 v2, 0x670b

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_update_self_mode_offical"

    const/16 v2, 0x670c

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_mobile_antithief_open"

    const/16 v2, 0x670d

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_mobile_antithief_next"

    const/16 v2, 0x670e

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_mobile_antithief_guide_open"

    const/16 v2, 0x670f

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_mobile_antithief_guide_land"

    const/16 v2, 0x6710

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_mobile_antithief_guide_skip"

    const/16 v2, 0x6711

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_mobile_antithief_guide_finish"

    const/16 v2, 0x6712

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_mobile_antithief_by_protected_info"

    const/16 v2, 0x6713

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_mobile_antithief_close"

    const/16 v2, 0x6714

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_get_root_result"

    const/16 v2, 0x6715

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_get_root_superuser_mode"

    const/16 v2, 0x6716

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_malicoous_urls_dialog_time"

    const/16 v2, 0x6717

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_malicoous_urls_toast_time"

    const/16 v2, 0x6718

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_private_smsbox_face_recognition_update"

    const/16 v2, 0x671a

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_private_smsbox_face_recognition_click"

    const/16 v2, 0x6719

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_private_smsbox_face_recognition_independent_password_setting"

    const/16 v2, 0x671b

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_private_protect_password_setting"

    invoke-direct {p0, v0, v1, v4}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_password_center_switch_password_mode"

    invoke-direct {p0, v0, v1, v4}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_powermanager_download_powermanager"

    const/16 v2, 0x671e

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_powermanager_install_powermanager"

    const/16 v2, 0x671f

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_tarffic_monitor_setting_auto_traffic_redress"

    const/16 v2, 0x6720

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_mysoftware_software_update_cancel_ignore"

    const/16 v2, 0x6723

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_mysoftware_software_update_ignore"

    const/16 v2, 0x6721

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_mysoftware_software_update_ignore_list"

    const/16 v2, 0x6722

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_secure_settings_desktopstyle"

    const/16 v2, 0x6725

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_secure_assistant_setting_style"

    const/16 v2, 0x6726

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_secure_rocket_style"

    const/16 v2, 0x6727

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_secure_moon_style"

    const/16 v2, 0x6728

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_secure_remind_after_10_2_entersetting"

    const/16 v2, 0x6729

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_secure_remind_after_10_2_cancle"

    const/16 v2, 0x672a

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_secure_adbblock_setting"

    const/16 v2, 0x672b

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_secure_websitecheck_keepvisit"

    const/16 v2, 0x672c

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_secure_websitecheck_stopvisit"

    const/16 v2, 0x672d

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_secure_tool_qqpimcenter_useimmediatly"

    const/16 v2, 0x672e

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_secure_tool_qqpimcenter_saylater"

    const/16 v2, 0x672f

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_secure_uninstall_one_key_analysis_dialog"

    const/16 v2, 0x6730

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_secure_uninstall_one_key_analysis_dialog_go_to_analysis"

    const/16 v2, 0x6731

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_secure_intercept_resume_message"

    const/16 v2, 0x6732

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_secure_cloudmanager_connect"

    const/16 v2, 0x6733

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_secure_intercept_recover_sms_sure"

    const/16 v2, 0x6735

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_secure_tools_recharge"

    const/16 v2, 0x6736

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_secure_network_manager_config_change_sure"

    const/16 v2, 0x6737

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_secure_us_manager_software_lock_open"

    const/16 v2, 0x6738

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_secure_us_manager_software_lock_close"

    const/16 v2, 0x6739

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_secure_us_manager_software_lock_click"

    const/16 v2, 0x673a

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_secure_us_manager_unlock_by_photo"

    const/16 v2, 0x673b

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_secure_us_manager_unlock_by_faceverify"

    const/16 v2, 0x673c

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_secure_us_manager_use_photo_lock"

    const/16 v2, 0x673d

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_secure_us_manager_open_password_protect"

    const/16 v2, 0x673e

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_secure_us_manager_faceverify_failed"

    const/16 v2, 0x673f

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_secure_us_manager_faceverify_success"

    const/16 v2, 0x6740

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_secure_into_notification_movesoftware"

    const/16 v2, 0x6741

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_secure_mainview_guide_user_intercept_prority_sure"

    const/16 v2, 0x6742

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_secure_mainview_guide_user_intercept_prority_cancel"

    const/16 v2, 0x6743

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_secure_intercept_guide_user_intercept_prority_sure"

    const/16 v2, 0x6744

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_secure_intercept_guide_user_intercept_prority_cancel"

    const/16 v2, 0x6745

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_secure_privatecontact_call"

    const/16 v2, 0x6746

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_secure_privatecontact_send"

    const/16 v2, 0x6747

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_secure_privatecontact_delete"

    const/16 v2, 0x6748

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_secure_mobile_antithief_by_lost_phone_link"

    const/16 v2, 0x674a

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_secure_one_key_optimize_not_optimize_infact"

    const/16 v2, 0x6749

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_secure_mobile_antithief_click_have_no_qq"

    const/16 v2, 0x674d

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_secure_into_deep_clean"

    const/16 v2, 0x6751

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_secure_deep_clean_into_system_rubbish"

    const/16 v2, 0x6752

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_secure_deep_clean_remnants_onekey_all"

    const/16 v2, 0x6753

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_secure_deep_clean_remnants_onekey_not_all"

    const/16 v2, 0x6754

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_secure_deep_clean_system_rubbish_onekey_all"

    const/16 v2, 0x6755

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_secure_deep_clean_system_rubbish_onekey_not_all"

    const/16 v2, 0x6756

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_secure_mainview_click_menu_connect_computer"

    const/16 v2, 0x6757

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_secure_into_connectassistant_downloadview"

    const/16 v2, 0x6758

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_secure_connectassistant_downloadview_click_download"

    const/16 v2, 0x6759

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_secure_network_manager_click_call_check_gprs"

    const/16 v2, 0x675a

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_secure_network_manager_click_recomand"

    const/16 v2, 0x675b

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_secure_network_manager_not_click_recomand"

    const/16 v2, 0x675c

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_secure_benchmark_click_entrance"

    const/16 v2, 0x675d

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_secure_benchmark_click_download"

    const/16 v2, 0x675e

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_secure_intercept_receive_mark_unfamily_remind"

    const/16 v2, 0x6763

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_secure_intercept_click_notification_mark_unfamily"

    const/16 v2, 0x6764

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    const-string v1, "editor_secure_intercept_notification_mark_unfamily_mark"

    const/16 v2, 0x6765

    invoke-direct {p0, v0, v1, v2}, Lnd;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    return-object v0
.end method

.method public final b(II)V
    .locals 1

    sparse-switch p1, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    const-string v0, "EMID_Secure_Before_OneKeyAnaly_UseMemory_Percent"

    invoke-direct {p0, v0, p2}, Lnd;->c(Ljava/lang/String;I)V

    goto :goto_0

    :sswitch_1
    const-string v0, "EMID_Secure_After_OneKeyAnaly_UseMemory_Percent"

    invoke-direct {p0, v0, p2}, Lnd;->c(Ljava/lang/String;I)V

    goto :goto_0

    :sswitch_2
    const-string v0, "EMID_Secure_Ram_Used_Revert_percent_After_Clean"

    invoke-direct {p0, v0, p2}, Lnd;->c(Ljava/lang/String;I)V

    goto :goto_0

    :sswitch_3
    const-string v0, "EMID_Secure_Root_Status"

    invoke-direct {p0, v0, p2}, Lnd;->c(Ljava/lang/String;I)V

    goto :goto_0

    :sswitch_4
    const-string v0, "EMID_Secure_Installed_digit"

    invoke-direct {p0, v0, p2}, Lnd;->c(Ljava/lang/String;I)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x66bd -> :sswitch_0
        0x66be -> :sswitch_1
        0x6734 -> :sswitch_2
        0x6760 -> :sswitch_3
        0x6761 -> :sswitch_4
    .end sparse-switch
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lnd;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Lnd;->d:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final e()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "LQQPIM/SUI;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/16 v1, 0x66bd

    invoke-direct {p0, v1}, Lnd;->b(I)LQQPIM/SUI;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const/16 v1, 0x66be

    invoke-direct {p0, v1}, Lnd;->b(I)LQQPIM/SUI;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const/16 v1, 0x6734

    invoke-direct {p0, v1}, Lnd;->b(I)LQQPIM/SUI;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    const/16 v1, 0x6760

    invoke-direct {p0, v1}, Lnd;->b(I)LQQPIM/SUI;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    const/16 v1, 0x6761

    invoke-direct {p0, v1}, Lnd;->b(I)LQQPIM/SUI;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    return-object v0
.end method

.method public final f()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lne;

    invoke-direct {v1, p0}, Lne;-><init>(Lnd;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final g()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lnf;

    invoke-direct {v1, p0}, Lnf;-><init>(Lnd;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final h()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lng;

    invoke-direct {v1, p0}, Lng;-><init>(Lnd;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

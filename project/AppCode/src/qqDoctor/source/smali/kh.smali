.class public final Lkh;
.super Ljava/lang/Object;

# interfaces
.implements Lcb;


# instance fields
.field private a:Lhq;

.field private b:Lhq;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lhq;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lhq;-><init>(I)V

    iput-object v0, p0, Lkh;->a:Lhq;

    new-instance v0, Lhq;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lhq;-><init>(I)V

    iput-object v0, p0, Lkh;->b:Lhq;

    return-void
.end method

.method private static c(Lcc;)Llf;
    .locals 7

    const/4 v6, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    iget-object v0, p0, Lcc;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcc;->d:Ljava/lang/Integer;

    move v0, v3

    :goto_0
    if-nez v0, :cond_3

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return-object v0

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    new-instance v0, Llf;

    invoke-direct {v0}, Llf;-><init>()V

    :cond_4
    :goto_1
    iget-object v1, p0, Lcc;->d:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v4, p0, Lcc;->c:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_6

    move v1, v2

    :goto_2
    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcc;->b()Lcp;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v4, "TEL"

    iget-object v5, v1, Lcp;->a:[Ljava/lang/StringBuilder;

    aget-object v5, v5, v2

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v1, v1, Lcp;->a:[Ljava/lang/StringBuilder;

    aget-object v1, v1, v6

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Llf;->phonenum:Ljava/lang/String;

    :cond_5
    :goto_3
    iget-object v1, p0, Lcc;->d:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcc;->d:Ljava/lang/Integer;

    goto :goto_1

    :cond_6
    move v1, v3

    goto :goto_2

    :cond_7
    const-string v4, "N"

    iget-object v5, v1, Lcp;->a:[Ljava/lang/StringBuilder;

    aget-object v5, v5, v2

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v1, v1, Lcp;->a:[Ljava/lang/StringBuilder;

    aget-object v1, v1, v6

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Llf;->name:Ljava/lang/String;

    goto :goto_3

    :cond_8
    const-string v4, "STATUS"

    iget-object v5, v1, Lcp;->a:[Ljava/lang/StringBuilder;

    aget-object v5, v5, v2

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v1, v1, Lcp;->a:[Ljava/lang/StringBuilder;

    aget-object v1, v1, v6

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    iput-boolean v2, v0, Llf;->enableForCalling:Z

    iput-boolean v2, v0, Llf;->enableForSMS:Z

    goto :goto_3

    :pswitch_1
    iput-boolean v3, v0, Llf;->enableForCalling:Z

    iput-boolean v2, v0, Llf;->enableForSMS:Z

    goto :goto_3

    :pswitch_2
    iput-boolean v2, v0, Llf;->enableForCalling:Z

    iput-boolean v3, v0, Llf;->enableForSMS:Z

    goto :goto_3

    :pswitch_3
    iput-boolean v3, v0, Llf;->enableForCalling:Z

    iput-boolean v3, v0, Llf;->enableForSMS:Z

    goto :goto_3

    :cond_9
    const-string v4, "TYPE"

    iget-object v5, v1, Lcp;->a:[Ljava/lang/StringBuilder;

    aget-object v5, v5, v2

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v1, v1, Lcp;->a:[Ljava/lang/StringBuilder;

    aget-object v1, v1, v6

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Llf;->b:I

    goto/16 :goto_3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public final a()I
    .locals 2

    iget-object v0, p0, Lkh;->a:Lhq;

    invoke-virtual {v0}, Lhq;->c()I

    move-result v0

    iget-object v1, p0, Lkh;->b:Lhq;

    invoke-virtual {v1}, Lhq;->c()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final a(Ljava/lang/String;)Lcb$a;
    .locals 4

    if-nez p1, :cond_0

    sget-object v0, Lcb$a;->a:Lcb$a;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lkh;->a:Lhq;

    iget-object v1, p0, Lkh;->a:Lhq;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lhq;->a(I)Llf;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhq;->c(Llf;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v1, p0, Lkh;->b:Lhq;

    iget-object v2, p0, Lkh;->b:Lhq;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lhq;->a(I)Llf;

    move-result-object v2

    invoke-virtual {v1, v2}, Lhq;->c(Llf;)Z

    :cond_1
    if-eqz v0, :cond_2

    sget-object v0, Lcb$a;->b:Lcb$a;

    goto :goto_0

    :cond_2
    sget-object v0, Lcb$a;->a:Lcb$a;

    goto :goto_0
.end method

.method public final a(Lcc;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    iget-object v3, p1, Lcc;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p1, Lcc;->d:Ljava/lang/Integer;

    move v1, v2

    :cond_0
    if-nez v1, :cond_2

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    invoke-static {p1}, Lkh;->c(Lcc;)Llf;

    move-result-object v3

    if-eqz v3, :cond_1

    const-wide/16 v0, 0x0

    iget v4, v3, Llf;->b:I

    if-nez v4, :cond_4

    iget-object v0, p0, Lkh;->a:Lhq;

    invoke-virtual {v0, v3}, Lhq;->a(Llf;)J

    move-result-wide v0

    :cond_3
    :goto_1
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    iget v4, v3, Llf;->b:I

    if-ne v4, v2, :cond_3

    iget-object v0, p0, Lkh;->b:Lhq;

    invoke-virtual {v0, v3}, Lhq;->a(Llf;)J

    move-result-wide v0

    goto :goto_1
.end method

.method public final a([Ljava/lang/String;Z)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lkh;->a:Lhq;

    invoke-virtual {v0}, Lhq;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llf;

    iget v0, v0, Llf;->id:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lkh;->b:Lhq;

    invoke-virtual {v0}, Lhq;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llf;

    iget v0, v0, Llf;->id:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    return-object v1
.end method

.method public final a(Ljava/util/ArrayList;Ljava/util/ArrayList;[I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcc;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;[I)Z"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcc;

    invoke-virtual {p0, v0}, Lkh;->a(Lcc;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;->TCC_ERR_DATA_COMMAND_FAILED:Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;

    invoke-virtual {v0}, Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;->toInt()I

    move-result v0

    aput v0, p3, v1

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;->TCC_ERR_NONE:Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;

    invoke-virtual {v0}, Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;->toInt()I

    move-result v0

    aput v0, p3, v1

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public final b(Lcc;)Lcb$a;
    .locals 2

    invoke-static {p1}, Lkh;->c(Lcc;)Llf;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lkh;->a:Lhq;

    invoke-virtual {v0, v1}, Lhq;->b(Llf;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lkh;->b:Lhq;

    invoke-virtual {v0, v1}, Lhq;->b(Llf;)Z

    move-result v0

    :cond_0
    if-eqz v0, :cond_1

    sget-object v0, Lcb$a;->b:Lcb$a;

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcb$a;->a:Lcb$a;

    goto :goto_0

    :cond_2
    sget-object v0, Lcb$a;->a:Lcb$a;

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lkh;->a:Lhq;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lhq;->a(I)Llf;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lkh;->b:Lhq;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lhq;->a(I)Llf;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c(Ljava/lang/String;)Lcc;
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v8, 0x2

    const/4 v2, 0x0

    iget-object v3, p0, Lkh;->a:Lhq;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lhq;->a(I)Llf;

    move-result-object v3

    if-nez v3, :cond_c

    iget-object v3, p0, Lkh;->b:Lhq;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lhq;->a(I)Llf;

    move-result-object v3

    move-object v4, v3

    :goto_0
    if-eqz v4, :cond_0

    if-nez v4, :cond_1

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    new-instance v3, Lcm;

    invoke-direct {v3}, Lcm;-><init>()V

    iget v0, v4, Llf;->id:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcc;->b:Ljava/lang/String;

    iget-object v0, v4, Llf;->phonenum:Ljava/lang/String;

    if-eqz v0, :cond_3

    new-instance v5, Lcp;

    invoke-direct {v5}, Lcp;-><init>()V

    const-string v6, "TEL"

    iget-object v7, v5, Lcp;->a:[Ljava/lang/StringBuilder;

    aget-object v7, v7, v2

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_2

    iget-object v6, v5, Lcp;->a:[Ljava/lang/StringBuilder;

    aget-object v6, v6, v8

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    if-eqz v5, :cond_3

    iget-object v0, v3, Lcc;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v0, v4, Llf;->name:Ljava/lang/String;

    if-eqz v0, :cond_5

    new-instance v5, Lcp;

    invoke-direct {v5}, Lcp;-><init>()V

    const-string v6, "N"

    iget-object v7, v5, Lcp;->a:[Ljava/lang/StringBuilder;

    aget-object v7, v7, v2

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_4

    iget-object v6, v5, Lcp;->a:[Ljava/lang/StringBuilder;

    aget-object v6, v6, v8

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    if-eqz v5, :cond_5

    iget-object v0, v3, Lcc;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    iget-boolean v0, v4, Llf;->enableForCalling:Z

    if-eqz v0, :cond_a

    move v0, v1

    :goto_2
    iget-boolean v5, v4, Llf;->enableForSMS:Z

    if-eqz v5, :cond_b

    :goto_3
    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    new-instance v1, Lcp;

    invoke-direct {v1}, Lcp;-><init>()V

    const-string v5, "STATUS"

    iget-object v6, v1, Lcp;->a:[Ljava/lang/StringBuilder;

    aget-object v6, v6, v2

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_6

    iget-object v5, v1, Lcp;->a:[Ljava/lang/StringBuilder;

    aget-object v5, v5, v8

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    if-eqz v1, :cond_7

    iget-object v0, v3, Lcc;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    iget v0, v4, Llf;->b:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    new-instance v1, Lcp;

    invoke-direct {v1}, Lcp;-><init>()V

    const-string v4, "TYPE"

    iget-object v5, v1, Lcp;->a:[Ljava/lang/StringBuilder;

    aget-object v2, v5, v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_8

    iget-object v2, v1, Lcp;->a:[Ljava/lang/StringBuilder;

    aget-object v2, v2, v8

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    if-eqz v1, :cond_9

    iget-object v0, v3, Lcc;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    move-object v0, v3

    goto/16 :goto_1

    :cond_a
    move v0, v2

    goto :goto_2

    :cond_b
    move v1, v2

    goto :goto_3

    :cond_c
    move-object v4, v3

    goto/16 :goto_0
.end method

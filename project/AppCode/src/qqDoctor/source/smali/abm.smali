.class public final Labm;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tmsecure/module/aresengine/DataHandler$DataHandlerCallback;


# instance fields
.field private a:Lov;

.field private b:Lho;

.field private c:Ljp;

.field private d:Ljb;

.field private e:Lzs;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lov;->a()Lov;

    move-result-object v0

    iput-object v0, p0, Labm;->a:Lov;

    new-instance v0, Lzs;

    invoke-direct {v0}, Lzs;-><init>()V

    iput-object v0, p0, Labm;->e:Lzs;

    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    iput-object v0, p0, Labm;->b:Lho;

    new-instance v0, Ljp;

    const-string v1, "smslog"

    const-string v2, "mms_pdu"

    const-string v3, "mms_parts"

    invoke-direct {v0, v1, v2, v3}, Ljp;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Labm;->c:Ljp;

    invoke-static {}, Ljb;->a()Ljb;

    move-result-object v0

    iput-object v0, p0, Labm;->d:Ljb;

    return-void
.end method

.method static synthetic a(Labm;)Ljp;
    .locals 1

    iget-object v0, p0, Labm;->c:Ljp;

    return-object v0
.end method

.method static synthetic b(Labm;)Lov;
    .locals 1

    iget-object v0, p0, Labm;->a:Lov;

    return-object v0
.end method

.method static synthetic c(Labm;)Lzs;
    .locals 1

    iget-object v0, p0, Labm;->e:Lzs;

    return-object v0
.end method


# virtual methods
.method public final varargs onCallback(Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;II[Ljava/lang/Object;)V
    .locals 8

    const-wide/16 v6, 0xf

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v1, 0x0

    instance-of v0, p1, Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;

    sparse-switch p2, :sswitch_data_0

    :cond_2
    :goto_1
    iget v2, v0, Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;->type:I

    if-ne v2, v4, :cond_0

    invoke-static {}, Lf;->g()Lio;

    move-result-object v2

    if-eqz v0, :cond_4

    :try_start_0
    iget-object v3, v0, Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;->phonenum:Ljava/lang/String;

    invoke-static {v3}, Lfu;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v4, v0, Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;->phonenum:Ljava/lang/String;

    invoke-static {v4}, Lfu;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v1, v2, Lio;->e:Ljava/lang/String;

    invoke-static {v4}, Lfu;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lfu;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    :cond_3
    if-nez v1, :cond_4

    iget-object v1, v2, Lio;->c:Lhq;

    iget-object v4, v0, Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;->phonenum:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lhq;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, v2, Lio;->d:Lhq;

    iget-object v4, v0, Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;->phonenum:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lhq;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, v2, Lio;->b:Lki;

    iget-object v4, v0, Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;->phonenum:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lki;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {v3}, Lfu;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lfu;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lio;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_2
    iget-wide v1, v0, Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;->duration:J

    const-wide/16 v3, 0x2

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Labn;

    invoke-direct {v2, p0, v0, p1}, Labn;-><init>(Labm;Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :sswitch_0
    iget v2, v0, Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;->type:I

    if-ne v2, v5, :cond_2

    iget-object v2, p0, Labm;->b:Lho;

    invoke-virtual {v2}, Lho;->bd()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Labm;->b:Lho;

    invoke-virtual {v2}, Lho;->av()I

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Labm;->a:Lov;

    invoke-virtual {v2}, Lov;->d()V

    goto/16 :goto_1

    :sswitch_1
    const/4 v2, 0x2

    if-ne p3, v2, :cond_2

    iget-object v2, p0, Labm;->b:Lho;

    iget-object v3, p0, Labm;->b:Lho;

    invoke-virtual {v3}, Lho;->G()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Lho;->d(I)V

    iget-object v2, p0, Labm;->b:Lho;

    iget-object v3, p0, Labm;->b:Lho;

    invoke-virtual {v3}, Lho;->L()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Lho;->f(I)V

    iget-object v2, p0, Labm;->a:Lov;

    iget-object v3, p1, Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;->phonenum:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lov;->b(Ljava/lang/String;)V

    iget-object v2, p0, Labm;->a:Lov;

    invoke-virtual {v2, v5, p1}, Lov;->a(ILcom/tencent/tmsecure/module/aresengine/TelephonyEntity;)V

    goto/16 :goto_1

    :sswitch_2
    iget v2, v0, Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;->type:I

    if-ne v2, v4, :cond_6

    iget-wide v2, v0, Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;->duration:J

    cmp-long v2, v2, v6

    if-gez v2, :cond_6

    iget-object v2, p0, Labm;->d:Ljb;

    iget-object v3, p1, Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;->phonenum:Ljava/lang/String;

    invoke-static {v3}, Lfu;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object v2, v2, Ljb;->a:Ljava/util/Set;

    invoke-static {v3}, Lfu;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    :goto_3
    if-nez v2, :cond_6

    iget-object v2, p0, Labm;->d:Ljb;

    invoke-virtual {v2, v0}, Ljb;->a(Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;)V

    iget-object v2, p0, Labm;->a:Lov;

    invoke-virtual {v2, v0}, Lov;->a(Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;)V

    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v2

    const/16 v3, 0x6763

    invoke-virtual {v2, v3}, Lnd;->a(I)V

    goto/16 :goto_1

    :cond_5
    move v2, v1

    goto :goto_3

    :cond_6
    iget-object v2, p0, Labm;->b:Lho;

    invoke-virtual {v2}, Lho;->z()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Labm;->a:Lov;

    iget-object v3, p1, Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;->phonenum:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lov;->c(Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_3
    iget v2, v0, Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;->type:I

    if-ne v2, v4, :cond_2

    iget-wide v2, v0, Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;->duration:J

    cmp-long v2, v2, v6

    if-gez v2, :cond_2

    iget-object v2, p0, Labm;->d:Ljb;

    iget-object v3, p1, Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;->phonenum:Ljava/lang/String;

    invoke-static {v3}, Lfu;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    iget-object v2, v2, Ljb;->a:Ljava/util/Set;

    invoke-static {v3}, Lfu;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    :goto_4
    if-nez v2, :cond_2

    iget-object v2, p0, Labm;->d:Ljb;

    invoke-virtual {v2, v0}, Ljb;->a(Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;)V

    iget-object v2, p0, Labm;->a:Lov;

    invoke-virtual {v2, v0}, Lov;->a(Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;)V

    goto/16 :goto_1

    :cond_7
    move v2, v1

    goto :goto_4

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x40 -> :sswitch_2
        0x80 -> :sswitch_1
        0x100 -> :sswitch_3
    .end sparse-switch
.end method

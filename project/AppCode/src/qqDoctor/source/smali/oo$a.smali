.class public final Loo$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tmsecure/module/aresengine/IEntityConverter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Loo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;Z)Ljava/lang/String;
    .locals 5

    const/4 v1, 0x0

    const/4 v4, 0x2

    iget-object v2, p0, Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;->phonenum:Ljava/lang/String;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v4, :cond_6

    if-eqz p1, :cond_0

    new-instance v0, Lhq;

    invoke-direct {v0, v4}, Lhq;-><init>(I)V

    invoke-virtual {v0, v2}, Lhq;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_0
    new-instance v0, Lhq;

    const/4 v3, 0x1

    invoke-direct {v0, v3}, Lhq;-><init>(I)V

    invoke-virtual {v0, v2}, Lhq;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_1
    new-instance v0, Lhq;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Lhq;-><init>(I)V

    invoke-virtual {v0, v2}, Lhq;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v4, :cond_5

    :cond_2
    const-class v0, Lcom/tencent/tmsecure/module/tools/SingletonManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/tools/SingletonManager;

    const-class v3, Lki;

    invoke-virtual {v0, v3}, Lcom/tencent/tmsecure/module/tools/SingletonManager;->getSingleton(Ljava/lang/Class;)Lcom/tencent/tmsecure/module/tools/ISingleton;

    invoke-static {v2}, Lki;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    move-object v0, v1

    :cond_4
    :goto_0
    return-object v0

    :cond_5
    invoke-static {v0}, Lhq;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_6
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final convert(Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;)Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;",
            ">(",
            "Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;",
            ")TT;"
        }
    .end annotation

    new-instance v0, Lky;

    invoke-direct {v0, p1}, Lky;-><init>(Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;)V

    const/4 v1, 0x0

    invoke-static {p1, v1}, Loo$a;->a(Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lky;->name:Ljava/lang/String;

    iget v1, v0, Lky;->type:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    iget-wide v1, v0, Lky;->duration:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p1, Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;->date:J

    sub-long/2addr v1, v3

    iput-wide v1, v0, Lky;->duration:J

    iget-wide v1, v0, Lky;->duration:J

    long-to-double v1, v1

    const-wide v3, 0x408f400000000000L

    div-double/2addr v1, v3

    double-to-long v1, v1

    iput-wide v1, v0, Lky;->duration:J

    :cond_0
    return-object v0
.end method

.method public final convert(Lcom/tencent/tmsecure/module/aresengine/SmsEntity;)Lcom/tencent/tmsecure/module/aresengine/SmsEntity;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/tencent/tmsecure/module/aresengine/SmsEntity;",
            ">(",
            "Lcom/tencent/tmsecure/module/aresengine/SmsEntity;",
            ")TT;"
        }
    .end annotation

    new-instance v1, Lmk;

    invoke-direct {v1, p1}, Lmk;-><init>(Lcom/tencent/tmsecure/module/aresengine/SmsEntity;)V

    const/4 v0, -0x1

    iput v0, v1, Lmk;->id:I

    iget-boolean v0, v1, Lmk;->g:Z

    invoke-static {p1, v0}, Loo$a;->a(Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lmk;->name:Ljava/lang/String;

    iget-wide v2, p1, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->date:J

    iput-wide v2, v1, Lmk;->date:J

    iget v0, p1, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->type:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, v1, Lmk;->a:I

    return-object v1

    :cond_0
    iget v0, v1, Lmk;->read:I

    goto :goto_0
.end method

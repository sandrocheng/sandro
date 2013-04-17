.class public final Laam;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tmsecure/module/aresengine/DataHandler$DataHandlerCallback;


# instance fields
.field private a:Lov;

.field private b:Lzs;

.field private c:Lho;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lov;->a()Lov;

    move-result-object v0

    iput-object v0, p0, Laam;->a:Lov;

    new-instance v0, Lzs;

    invoke-direct {v0}, Lzs;-><init>()V

    iput-object v0, p0, Laam;->b:Lzs;

    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    iput-object v0, p0, Laam;->c:Lho;

    return-void
.end method


# virtual methods
.method public final varargs onCallback(Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;II[Ljava/lang/Object;)V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    instance-of v0, p1, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-ne p2, v3, :cond_3

    check-cast p1, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;

    if-ne p3, v4, :cond_2

    iget v0, p1, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->protocolType:I

    if-eq v0, v3, :cond_2

    iget-object v0, p0, Laam;->a:Lov;

    invoke-virtual {v0}, Lov;->e()V

    goto :goto_0

    :cond_2
    if-ne p3, v4, :cond_0

    invoke-static {}, Loo;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p1, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->protocolType:I

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Laam;->a:Lov;

    invoke-virtual {v0}, Lov;->e()V

    goto :goto_0

    :cond_3
    const/16 v0, 0x100

    if-eq p2, v0, :cond_0

    if-ne p3, v3, :cond_4

    iget-object v0, p0, Laam;->c:Lho;

    iget-object v1, p0, Laam;->c:Lho;

    invoke-virtual {v1}, Lho;->K()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lho;->e(I)V

    iget-object v0, p0, Laam;->a:Lov;

    invoke-virtual {v0, v4, p1}, Lov;->a(ILcom/tencent/tmsecure/module/aresengine/TelephonyEntity;)V

    goto :goto_0

    :cond_4
    if-ne p3, v4, :cond_0

    if-eqz p4, :cond_0

    array-length v0, p4

    if-le v0, v4, :cond_0

    aget-object v0, p4, v3

    check-cast v0, Lcom/tencent/tmsecure/module/aresengine/IIntelligentSmsChecker$CheckResult;

    aget-object v1, p4, v4

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/tencent/tmsecure/module/aresengine/IIntelligentSmsChecker$CheckResult;->shouldBeBlockedOrNot(Lcom/tencent/tmsecure/module/aresengine/IIntelligentSmsChecker$CheckResult;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Laam;->b:Lzs;

    move-object v1, p1

    check-cast v1, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;

    iget-object v0, v0, Lcom/tencent/tmsecure/module/aresengine/IIntelligentSmsChecker$CheckResult;->mInnterResult:Lcom/tencent/tccdb/MMatchSysResult;

    invoke-static {v1, v0, v3}, Lzs;->a(Lcom/tencent/tmsecure/module/aresengine/SmsEntity;Lcom/tencent/tccdb/MMatchSysResult;Z)Lmm;

    move-result-object v0

    iget-object v1, p0, Laam;->b:Lzs;

    invoke-virtual {v1, v0, v3}, Lzs;->a(Lmm;Z)V

    if-eqz v2, :cond_0

    iget-object v0, p0, Laam;->c:Lho;

    iget-object v1, p0, Laam;->c:Lho;

    invoke-virtual {v1}, Lho;->K()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lho;->e(I)V

    iget-object v0, p0, Laam;->a:Lov;

    invoke-virtual {v0, v4, p1}, Lov;->a(ILcom/tencent/tmsecure/module/aresengine/TelephonyEntity;)V

    goto :goto_0

    :cond_5
    iget v1, v0, Lcom/tencent/tmsecure/module/aresengine/IIntelligentSmsChecker$CheckResult;->mSuggestion:I

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Laam;->b:Lzs;

    check-cast p1, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;

    iget-object v0, v0, Lcom/tencent/tmsecure/module/aresengine/IIntelligentSmsChecker$CheckResult;->mInnterResult:Lcom/tencent/tccdb/MMatchSysResult;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lzs;->a(Lcom/tencent/tmsecure/module/aresengine/SmsEntity;Lcom/tencent/tccdb/MMatchSysResult;Z)Lmm;

    move-result-object v0

    iget-object v1, p0, Laam;->b:Lzs;

    invoke-virtual {v1, v0, v3}, Lzs;->a(Lmm;Z)V

    goto/16 :goto_0
.end method

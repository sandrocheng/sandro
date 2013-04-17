.class public final Lbvj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tmsecure/module/aresengine/IIntelligentSmsChecker;


# instance fields
.field private a:Lcom/tencent/tmsecure/module/aresengine/IIntelligentSmsChecker$CheckResult;


# direct methods
.method public constructor <init>()V
    .locals 8

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/tencent/tmsecure/module/aresengine/IIntelligentSmsChecker$CheckResult;

    invoke-direct {v0}, Lcom/tencent/tmsecure/module/aresengine/IIntelligentSmsChecker$CheckResult;-><init>()V

    iput-object v0, p0, Lbvj;->a:Lcom/tencent/tmsecure/module/aresengine/IIntelligentSmsChecker$CheckResult;

    iget-object v0, p0, Lbvj;->a:Lcom/tencent/tmsecure/module/aresengine/IIntelligentSmsChecker$CheckResult;

    const/4 v2, 0x1

    iput v2, v0, Lcom/tencent/tmsecure/module/aresengine/IIntelligentSmsChecker$CheckResult;->mContentType:I

    iget-object v0, p0, Lbvj;->a:Lcom/tencent/tmsecure/module/aresengine/IIntelligentSmsChecker$CheckResult;

    const/4 v2, 0x4

    iput v2, v0, Lcom/tencent/tmsecure/module/aresengine/IIntelligentSmsChecker$CheckResult;->mSuggestion:I

    iget-object v7, p0, Lbvj;->a:Lcom/tencent/tmsecure/module/aresengine/IIntelligentSmsChecker$CheckResult;

    new-instance v0, Lcom/tencent/tccdb/MMatchSysResult;

    const/4 v6, 0x0

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    invoke-direct/range {v0 .. v6}, Lcom/tencent/tccdb/MMatchSysResult;-><init>(IIIII[Lcom/tencent/tccdb/MRuleTypeID;)V

    iput-object v0, v7, Lcom/tencent/tmsecure/module/aresengine/IIntelligentSmsChecker$CheckResult;->mInnterResult:Lcom/tencent/tccdb/MMatchSysResult;

    return-void
.end method


# virtual methods
.method public final check(Lcom/tencent/tmsecure/module/aresengine/SmsEntity;)Lcom/tencent/tmsecure/module/aresengine/IIntelligentSmsChecker$CheckResult;
    .locals 1

    iget-object v0, p0, Lbvj;->a:Lcom/tencent/tmsecure/module/aresengine/IIntelligentSmsChecker$CheckResult;

    return-object v0
.end method

.method public final isChartSms(Lcom/tencent/tmsecure/module/aresengine/SmsEntity;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

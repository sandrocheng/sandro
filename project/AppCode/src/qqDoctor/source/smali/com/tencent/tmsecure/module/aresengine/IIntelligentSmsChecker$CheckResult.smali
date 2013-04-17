.class public final Lcom/tencent/tmsecure/module/aresengine/IIntelligentSmsChecker$CheckResult;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tmsecure/module/aresengine/IIntelligentSmsChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CheckResult"
.end annotation


# static fields
.field public static final SUGGESTION_DOUBT:I = 0x3

.field public static final SUGGESTION_ERROR:I = -0x1

.field public static final SUGGESTION_INTERCEPT:I = 0x2

.field public static final SUGGESTION_PASS:I = 0x1

.field public static final SUGGESTION_UNKNOWN:I = 0x4

.field public static final TYPE_12590:I = 0x5

.field public static final TYPE_ADS:I = 0x3

.field public static final TYPE_EVIL_SOFT:I = 0xa

.field public static final TYPE_FRAUD:I = 0x4

.field public static final TYPE_INIT_ERROR:I = 0x0

.field public static final TYPE_LEGAL_ORGANIZATION:I = 0x7

.field public static final TYPE_MO_CHARGE:I = 0x8

.field public static final TYPE_MT_CHARGE:I = 0x9

.field public static final TYPE_NORMAL:I = 0x2

.field public static final TYPE_SEX:I = 0x6

.field public static final TYPE_UNKOWN:I = 0x1


# instance fields
.field public mContentType:I

.field public mInnterResult:Lcom/tencent/tccdb/MMatchSysResult;

.field public mSuggestion:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static shouldBeBlockedOrNot(Lcom/tencent/tmsecure/module/aresengine/IIntelligentSmsChecker$CheckResult;)Z
    .locals 2

    if-eqz p0, :cond_1

    iget v0, p0, Lcom/tencent/tmsecure/module/aresengine/IIntelligentSmsChecker$CheckResult;->mSuggestion:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/tencent/tmsecure/module/aresengine/IIntelligentSmsChecker$CheckResult;->mSuggestion:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final contentType()I
    .locals 1

    iget v0, p0, Lcom/tencent/tmsecure/module/aresengine/IIntelligentSmsChecker$CheckResult;->mContentType:I

    rem-int/lit8 v0, v0, 0x7f

    return v0
.end method

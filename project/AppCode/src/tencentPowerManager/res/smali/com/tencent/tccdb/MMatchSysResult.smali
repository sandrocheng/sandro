.class public Lcom/tencent/tccdb/MMatchSysResult;
.super Ljava/lang/Object;


# static fields
.field public static final EM_FINAL_ACTION_DOUBT:I = 0x3

.field public static final EM_FINAL_ACTION_INTERCEPT:I = 0x2

.field public static final EM_FINAL_ACTION_NEXT_STEP:I = 0x4

.field public static final EM_FINAL_ACTION_PASS:I = 0x1


# instance fields
.field public actionReason:I

.field public contentType:I

.field public finalAction:I

.field public matchCnt:I

.field public minusMark:I

.field public ruleTypeID:[Lcom/tencent/tccdb/MRuleTypeID;


# direct methods
.method public constructor <init>(IIIII[Lcom/tencent/tccdb/MRuleTypeID;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/tencent/tccdb/MMatchSysResult;->finalAction:I

    iput p2, p0, Lcom/tencent/tccdb/MMatchSysResult;->contentType:I

    iput p3, p0, Lcom/tencent/tccdb/MMatchSysResult;->matchCnt:I

    iput p4, p0, Lcom/tencent/tccdb/MMatchSysResult;->minusMark:I

    iput p5, p0, Lcom/tencent/tccdb/MMatchSysResult;->actionReason:I

    iput-object p6, p0, Lcom/tencent/tccdb/MMatchSysResult;->ruleTypeID:[Lcom/tencent/tccdb/MRuleTypeID;

    return-void
.end method

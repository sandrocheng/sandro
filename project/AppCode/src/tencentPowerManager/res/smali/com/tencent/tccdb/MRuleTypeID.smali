.class public Lcom/tencent/tccdb/MRuleTypeID;
.super Ljava/lang/Object;


# instance fields
.field public ruleID:I

.field public ruleType:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/tencent/tccdb/MRuleTypeID;->ruleType:I

    iput p2, p0, Lcom/tencent/tccdb/MRuleTypeID;->ruleID:I

    return-void
.end method

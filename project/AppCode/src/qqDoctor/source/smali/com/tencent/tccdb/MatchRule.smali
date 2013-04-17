.class public Lcom/tencent/tccdb/MatchRule;
.super Ljava/lang/Object;


# instance fields
.field public postfix:Ljava/lang/String;

.field public prefix:Ljava/lang/String;

.field public type:I

.field public unit:I


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/tencent/tccdb/MatchRule;->unit:I

    iput p2, p0, Lcom/tencent/tccdb/MatchRule;->type:I

    iput-object p3, p0, Lcom/tencent/tccdb/MatchRule;->prefix:Ljava/lang/String;

    iput-object p4, p0, Lcom/tencent/tccdb/MatchRule;->postfix:Ljava/lang/String;

    return-void
.end method

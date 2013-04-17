.class public Lcom/tencent/tccdb/RuleFileHeader;
.super Ljava/lang/Object;


# instance fields
.field public md5str:Ljava/lang/String;

.field public time:I

.field public version:I


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/tencent/tccdb/RuleFileHeader;->version:I

    iput p2, p0, Lcom/tencent/tccdb/RuleFileHeader;->time:I

    iput-object p3, p0, Lcom/tencent/tccdb/RuleFileHeader;->md5str:Ljava/lang/String;

    return-void
.end method

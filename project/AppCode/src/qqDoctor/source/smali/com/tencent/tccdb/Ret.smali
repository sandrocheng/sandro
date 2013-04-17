.class public Lcom/tencent/tccdb/Ret;
.super Ljava/lang/Object;


# instance fields
.field public number:I

.field public sms:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/tencent/tccdb/Ret;->number:I

    iput-object p2, p0, Lcom/tencent/tccdb/Ret;->sms:Ljava/lang/String;

    return-void
.end method

.class final Lcom/tencent/feedback/b/a$a;
.super Ljava/lang/Object;
.source "HttpConnUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/feedback/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 315
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/feedback/b/a$a;->a:Ljava/lang/String;

    .line 316
    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/feedback/b/a$a;->b:I

    .line 317
    return-void
.end method

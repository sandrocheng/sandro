.class final Lcom/tencent/feedback/eup/k;
.super Ljava/lang/Thread;
.source "ProGuard"


# instance fields
.field private synthetic a:Lcom/tencent/feedback/eup/h;


# direct methods
.method constructor <init>(Lcom/tencent/feedback/eup/h;)V
    .locals 0
    .parameter

    .prologue
    .line 574
    iput-object p1, p0, Lcom/tencent/feedback/eup/k;->a:Lcom/tencent/feedback/eup/h;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 577
    iget-object v0, p0, Lcom/tencent/feedback/eup/k;->a:Lcom/tencent/feedback/eup/h;

    invoke-static {v0}, Lcom/tencent/feedback/eup/h;->a(Lcom/tencent/feedback/eup/h;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/feedback/a/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 579
    invoke-static {}, Lcom/tencent/feedback/common/d;->a()Lcom/tencent/feedback/common/c;

    move-result-object v0

    iget v0, v0, Lcom/tencent/feedback/common/c;->c:I

    .line 580
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 582
    invoke-static {}, Lcom/tencent/feedback/common/d;->a()Lcom/tencent/feedback/common/c;

    move-result-object v0

    iget v0, v0, Lcom/tencent/feedback/common/c;->b:I

    .line 585
    :cond_0
    invoke-static {v0}, Lcom/tencent/feedback/eup/ExceptionUpload;->doUploadExceptionDatas(I)V

    .line 586
    return-void
.end method

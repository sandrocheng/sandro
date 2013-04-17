.class final Lcom/tencent/feedback/eup/j;
.super Ljava/lang/Thread;
.source "CrashHandler.java"


# instance fields
.field private synthetic a:Lcom/tencent/feedback/eup/g;


# direct methods
.method constructor <init>(Lcom/tencent/feedback/eup/g;)V
    .locals 0
    .parameter

    .prologue
    .line 655
    iput-object p1, p0, Lcom/tencent/feedback/eup/j;->a:Lcom/tencent/feedback/eup/g;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 658
    iget-object v0, p0, Lcom/tencent/feedback/eup/j;->a:Lcom/tencent/feedback/eup/g;

    invoke-static {v0}, Lcom/tencent/feedback/eup/g;->a(Lcom/tencent/feedback/eup/g;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/feedback/common/d;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 660
    invoke-static {}, Lcom/tencent/feedback/common/f;->a()Lcom/tencent/feedback/common/f$a;

    move-result-object v0

    iget v0, v0, Lcom/tencent/feedback/common/f$a;->c:I

    .line 661
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 663
    invoke-static {}, Lcom/tencent/feedback/common/f;->a()Lcom/tencent/feedback/common/f$a;

    move-result-object v0

    iget v0, v0, Lcom/tencent/feedback/common/f$a;->b:I

    .line 666
    :cond_0
    invoke-static {v0}, Lcom/tencent/feedback/eup/ExceptionUpload;->doUploadExceptionDatas(I)V

    .line 667
    return-void
.end method

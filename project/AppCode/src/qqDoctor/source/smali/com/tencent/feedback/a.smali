.class final Lcom/tencent/feedback/a;
.super Ljava/lang/Object;
.source "UserActionRecord.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/tencent/feedback/UserActionRecord;


# direct methods
.method constructor <init>(Lcom/tencent/feedback/UserActionRecord;)V
    .locals 0
    .parameter

    .prologue
    .line 618
    iput-object p1, p0, Lcom/tencent/feedback/a;->a:Lcom/tencent/feedback/UserActionRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 624
    :try_start_0
    iget-object v0, p0, Lcom/tencent/feedback/a;->a:Lcom/tencent/feedback/UserActionRecord;

    #getter for: Lcom/tencent/feedback/UserActionRecord;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/tencent/feedback/UserActionRecord;->access$000(Lcom/tencent/feedback/UserActionRecord;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/feedback/common/d;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 626
    const-string v0, "RQD_UAInitUPThread on wifi double"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 627
    invoke-static {}, Lcom/tencent/feedback/common/f;->b()Lcom/tencent/feedback/common/a;

    move-result-object v0

    iget-wide v0, v0, Lcom/tencent/feedback/common/a;->b:J

    invoke-static {v0, v1}, Lcom/tencent/feedback/UserActionRecord;->doUploadRecentCommonDataOnSize(J)V

    .line 641
    :goto_0
    return-void

    .line 631
    :cond_0
    const-string v0, "RQD_UAInitUPThread on notwifi"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 632
    invoke-static {}, Lcom/tencent/feedback/common/f;->b()Lcom/tencent/feedback/common/a;

    move-result-object v0

    iget-wide v0, v0, Lcom/tencent/feedback/common/a;->c:J

    invoke-static {v0, v1}, Lcom/tencent/feedback/UserActionRecord;->doUploadRecentCommonDataOnSize(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 635
    :catch_0
    move-exception v0

    .line 637
    const-string v1, "RQD_UAInitUPThread error"

    invoke-static {v1}, Lcom/tencent/feedback/common/ELog;->error(Ljava/lang/String;)V

    .line 638
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.class final Lcom/tencent/feedback/c/c;
.super Ljava/lang/Object;
.source "CommonProcess.java"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/tencent/feedback/c/a;)V
    .locals 0
    .parameter

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    .prologue
    .line 41
    invoke-static {}, Lcom/tencent/feedback/UserActionRecord;->doUploadRecentCommonData()V

    .line 42
    return-void
.end method

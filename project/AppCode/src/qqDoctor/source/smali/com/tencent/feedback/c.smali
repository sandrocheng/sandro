.class final Lcom/tencent/feedback/c;
.super Ljava/lang/Object;
.source "UserActionRecord.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Landroid/content/Context;

.field private synthetic b:Lcom/tencent/feedback/c/i;

.field private synthetic c:Lcom/tencent/feedback/UserActionRecord;


# direct methods
.method constructor <init>(Lcom/tencent/feedback/UserActionRecord;Landroid/content/Context;Lcom/tencent/feedback/c/i;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 721
    iput-object p1, p0, Lcom/tencent/feedback/c;->c:Lcom/tencent/feedback/UserActionRecord;

    iput-object p2, p0, Lcom/tencent/feedback/c;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/tencent/feedback/c;->b:Lcom/tencent/feedback/c/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 725
    iget-object v0, p0, Lcom/tencent/feedback/c;->c:Lcom/tencent/feedback/UserActionRecord;

    invoke-virtual {v0}, Lcom/tencent/feedback/UserActionRecord;->isEnableModule()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 728
    const-string v0, "UserActionRecord insert launched event"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    .line 729
    iget-object v0, p0, Lcom/tencent/feedback/c;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/feedback/c;->b:Lcom/tencent/feedback/c/i;

    invoke-static {v0, v1}, Lcom/tencent/feedback/c/a;->a(Landroid/content/Context;Lcom/tencent/feedback/c/i;)Z

    .line 731
    :cond_0
    return-void
.end method

.class final Lcom/tencent/feedback/eup/i;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/tencent/feedback/eup/h;


# direct methods
.method constructor <init>(Lcom/tencent/feedback/eup/h;)V
    .locals 0
    .parameter

    .prologue
    .line 524
    iput-object p1, p0, Lcom/tencent/feedback/eup/i;->a:Lcom/tencent/feedback/eup/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 529
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/feedback/eup/i;->a:Lcom/tencent/feedback/eup/h;

    invoke-static {v1}, Lcom/tencent/feedback/eup/h;->a(Lcom/tencent/feedback/eup/h;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/tencent/feedback/eup/ConfirmDialog;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 530
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 531
    iget-object v1, p0, Lcom/tencent/feedback/eup/i;->a:Lcom/tencent/feedback/eup/h;

    invoke-static {v1}, Lcom/tencent/feedback/eup/h;->a(Lcom/tencent/feedback/eup/h;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 532
    return-void
.end method

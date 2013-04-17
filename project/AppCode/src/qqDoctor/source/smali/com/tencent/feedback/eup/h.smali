.class final Lcom/tencent/feedback/eup/h;
.super Ljava/lang/Object;
.source "CrashHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/tencent/feedback/eup/g;


# direct methods
.method constructor <init>(Lcom/tencent/feedback/eup/g;)V
    .locals 0
    .parameter

    .prologue
    .line 604
    iput-object p1, p0, Lcom/tencent/feedback/eup/h;->a:Lcom/tencent/feedback/eup/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 609
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/feedback/eup/h;->a:Lcom/tencent/feedback/eup/g;

    invoke-static {v1}, Lcom/tencent/feedback/eup/g;->a(Lcom/tencent/feedback/eup/g;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/tencent/feedback/eup/ConfirmDialog;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 610
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 611
    iget-object v1, p0, Lcom/tencent/feedback/eup/h;->a:Lcom/tencent/feedback/eup/g;

    invoke-static {v1}, Lcom/tencent/feedback/eup/g;->a(Lcom/tencent/feedback/eup/g;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 612
    return-void
.end method

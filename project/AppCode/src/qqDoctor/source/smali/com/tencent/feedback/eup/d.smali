.class final Lcom/tencent/feedback/eup/d;
.super Ljava/lang/Object;
.source "ConfirmDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/tencent/feedback/eup/ConfirmDialog;


# direct methods
.method constructor <init>(Lcom/tencent/feedback/eup/ConfirmDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/tencent/feedback/eup/d;->a:Lcom/tencent/feedback/eup/ConfirmDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 72
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tencent/feedback/eup/e;

    invoke-direct {v1, p0}, Lcom/tencent/feedback/eup/e;-><init>(Lcom/tencent/feedback/eup/d;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 87
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 89
    iget-object v0, p0, Lcom/tencent/feedback/eup/d;->a:Lcom/tencent/feedback/eup/ConfirmDialog;

    invoke-virtual {v0}, Lcom/tencent/feedback/eup/ConfirmDialog;->finish()V

    .line 90
    return-void
.end method

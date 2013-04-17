.class final Lcom/tencent/feedback/eup/b;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/tencent/feedback/eup/ConfirmDialog;


# direct methods
.method constructor <init>(Lcom/tencent/feedback/eup/ConfirmDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/tencent/feedback/eup/b;->a:Lcom/tencent/feedback/eup/ConfirmDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 37
    if-eqz p1, :cond_0

    .line 38
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/tencent/feedback/eup/b;->a:Lcom/tencent/feedback/eup/ConfirmDialog;

    #getter for: Lcom/tencent/feedback/eup/ConfirmDialog;->confirmer:Lcom/tencent/feedback/eup/IEupUserConfirmer;
    invoke-static {v0}, Lcom/tencent/feedback/eup/ConfirmDialog;->access$000(Lcom/tencent/feedback/eup/ConfirmDialog;)Lcom/tencent/feedback/eup/IEupUserConfirmer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 43
    const-string v0, "set contract to default"

    invoke-static {v0}, Lcom/tencent/feedback/common/c;->a(Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lcom/tencent/feedback/eup/b;->a:Lcom/tencent/feedback/eup/ConfirmDialog;

    #getter for: Lcom/tencent/feedback/eup/ConfirmDialog;->confirmer:Lcom/tencent/feedback/eup/IEupUserConfirmer;
    invoke-static {v0}, Lcom/tencent/feedback/eup/ConfirmDialog;->access$000(Lcom/tencent/feedback/eup/ConfirmDialog;)Lcom/tencent/feedback/eup/IEupUserConfirmer;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/feedback/eup/IEupUserConfirmer;->getUploadContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/feedback/eup/ExceptionUpload;->setDefaultContract(Ljava/lang/String;)V

    .line 48
    :cond_1
    new-instance v0, Lcom/tencent/feedback/eup/c;

    invoke-direct {v0, p0}, Lcom/tencent/feedback/eup/c;-><init>(Lcom/tencent/feedback/eup/b;)V

    .line 62
    const-string v1, "RQD_EUPUIThread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 65
    iget-object v0, p0, Lcom/tencent/feedback/eup/b;->a:Lcom/tencent/feedback/eup/ConfirmDialog;

    invoke-virtual {v0}, Lcom/tencent/feedback/eup/ConfirmDialog;->finish()V

    .line 66
    return-void
.end method

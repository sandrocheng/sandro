.class final Lcom/keniu/security/sync/ui/i;
.super Landroid/os/Handler;
.source "MyProgressDialog.java"


# instance fields
.field final synthetic a:Lcom/keniu/security/sync/ui/h;


# direct methods
.method constructor <init>(Lcom/keniu/security/sync/ui/h;)V
    .locals 0
    .parameter

    .prologue
    .line 150
    iput-object p1, p0, Lcom/keniu/security/sync/ui/i;->a:Lcom/keniu/security/sync/ui/h;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter

    .prologue
    .line 153
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 156
    iget-object v0, p0, Lcom/keniu/security/sync/ui/i;->a:Lcom/keniu/security/sync/ui/h;

    invoke-static {v0}, Lcom/keniu/security/sync/ui/h;->a(Lcom/keniu/security/sync/ui/h;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    .line 157
    iget-object v1, p0, Lcom/keniu/security/sync/ui/i;->a:Lcom/keniu/security/sync/ui/h;

    invoke-static {v1}, Lcom/keniu/security/sync/ui/h;->a(Lcom/keniu/security/sync/ui/h;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getMax()I

    move-result v1

    .line 159
    iget-object v2, p0, Lcom/keniu/security/sync/ui/i;->a:Lcom/keniu/security/sync/ui/h;

    invoke-static {v2}, Lcom/keniu/security/sync/ui/h;->b(Lcom/keniu/security/sync/ui/h;)Ljava/lang/String;

    move-result-object v2

    .line 160
    iget-object v3, p0, Lcom/keniu/security/sync/ui/i;->a:Lcom/keniu/security/sync/ui/h;

    invoke-static {v3}, Lcom/keniu/security/sync/ui/h;->c(Lcom/keniu/security/sync/ui/h;)Landroid/widget/TextView;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    return-void
.end method

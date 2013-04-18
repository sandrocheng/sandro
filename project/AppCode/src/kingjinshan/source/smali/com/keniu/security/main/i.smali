.class final Lcom/keniu/security/main/i;
.super Ljava/lang/Object;
.source "DubaDownload.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/keniu/security/main/f;


# direct methods
.method constructor <init>(Lcom/keniu/security/main/f;)V
    .locals 0
    .parameter

    .prologue
    .line 152
    iput-object p1, p0, Lcom/keniu/security/main/i;->a:Lcom/keniu/security/main/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 157
    iget-object v0, p0, Lcom/keniu/security/main/i;->a:Lcom/keniu/security/main/f;

    invoke-static {v0}, Lcom/keniu/security/main/f;->g(Lcom/keniu/security/main/f;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 158
    iget-object v0, p0, Lcom/keniu/security/main/i;->a:Lcom/keniu/security/main/f;

    invoke-static {v0}, Lcom/keniu/security/main/f;->b(Lcom/keniu/security/main/f;)Lcom/hoi/widget/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hoi/widget/q;->dismiss()V

    .line 159
    return-void
.end method

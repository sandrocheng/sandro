.class final Lcom/keniu/security/main/bb;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/keniu/security/main/MainActivity;


# direct methods
.method constructor <init>(Lcom/keniu/security/main/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 2816
    iput-object p1, p0, Lcom/keniu/security/main/bb;->a:Lcom/keniu/security/main/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 2821
    iget-object v0, p0, Lcom/keniu/security/main/bb;->a:Lcom/keniu/security/main/MainActivity;

    invoke-static {v0}, Lcom/keniu/security/main/MainActivity;->J(Lcom/keniu/security/main/MainActivity;)Lcom/keniu/security/main/a/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/main/a/h;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2822
    iget-object v0, p0, Lcom/keniu/security/main/bb;->a:Lcom/keniu/security/main/MainActivity;

    invoke-static {v0}, Lcom/keniu/security/main/MainActivity;->D(Lcom/keniu/security/main/MainActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2823
    iget-object v0, p0, Lcom/keniu/security/main/bb;->a:Lcom/keniu/security/main/MainActivity;

    invoke-static {v0}, Lcom/keniu/security/main/MainActivity;->J(Lcom/keniu/security/main/MainActivity;)Lcom/keniu/security/main/a/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/main/a/h;->c()V

    .line 2826
    :cond_0
    return-void
.end method

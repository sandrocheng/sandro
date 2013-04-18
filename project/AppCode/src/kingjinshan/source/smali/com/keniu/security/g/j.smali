.class final Lcom/keniu/security/g/j;
.super Ljava/lang/Object;
.source "UpdateUIHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/keniu/security/g/i;


# direct methods
.method constructor <init>(Lcom/keniu/security/g/i;)V
    .locals 0
    .parameter

    .prologue
    .line 667
    iput-object p1, p0, Lcom/keniu/security/g/j;->a:Lcom/keniu/security/g/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 670
    iget-object v0, p0, Lcom/keniu/security/g/j;->a:Lcom/keniu/security/g/i;

    invoke-static {v0}, Lcom/keniu/security/g/i;->a(Lcom/keniu/security/g/i;)Z

    .line 671
    iget-object v0, p0, Lcom/keniu/security/g/j;->a:Lcom/keniu/security/g/i;

    iget-object v0, v0, Lcom/keniu/security/g/i;->a:Lcom/keniu/security/f/p;

    invoke-virtual {v0}, Lcom/keniu/security/f/p;->f()V

    .line 672
    iget-object v0, p0, Lcom/keniu/security/g/j;->a:Lcom/keniu/security/g/i;

    iget-object v0, v0, Lcom/keniu/security/g/i;->b:Lcom/keniu/security/g/a;

    iget-object v0, v0, Lcom/keniu/security/g/a;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/keniu/security/g/j;->a:Lcom/keniu/security/g/i;

    iget-object v1, v1, Lcom/keniu/security/g/i;->b:Lcom/keniu/security/g/a;

    iget-object v1, v1, Lcom/keniu/security/g/a;->a:Landroid/content/Context;

    const v2, 0x7f0b0403

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 677
    return-void
.end method

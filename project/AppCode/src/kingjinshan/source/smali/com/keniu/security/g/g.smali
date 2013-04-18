.class final Lcom/keniu/security/g/g;
.super Ljava/lang/Object;
.source "UpdateUIHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/RadioButton;

.field final synthetic b:Lcom/keniu/security/f/t;

.field final synthetic c:Landroid/widget/RadioButton;

.field final synthetic d:Lcom/keniu/security/g/a;


# direct methods
.method constructor <init>(Lcom/keniu/security/g/a;Landroid/widget/RadioButton;Lcom/keniu/security/f/t;Landroid/widget/RadioButton;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 484
    iput-object p1, p0, Lcom/keniu/security/g/g;->d:Lcom/keniu/security/g/a;

    iput-object p2, p0, Lcom/keniu/security/g/g;->a:Landroid/widget/RadioButton;

    iput-object p3, p0, Lcom/keniu/security/g/g;->b:Lcom/keniu/security/f/t;

    iput-object p4, p0, Lcom/keniu/security/g/g;->c:Landroid/widget/RadioButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 488
    iget-object v0, p0, Lcom/keniu/security/g/g;->a:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 490
    new-instance v0, Lcom/keniu/security/g/i;

    iget-object v1, p0, Lcom/keniu/security/g/g;->d:Lcom/keniu/security/g/a;

    invoke-direct {v0, v1}, Lcom/keniu/security/g/i;-><init>(Lcom/keniu/security/g/a;)V

    .line 491
    iget-object v1, p0, Lcom/keniu/security/g/g;->b:Lcom/keniu/security/f/t;

    invoke-virtual {v0, v1}, Lcom/keniu/security/g/i;->a(Lcom/keniu/security/f/t;)V

    .line 498
    :cond_0
    :goto_0
    return-void

    .line 492
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/g/g;->c:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 494
    new-instance v0, Lcom/keniu/security/g/r;

    iget-object v1, p0, Lcom/keniu/security/g/g;->d:Lcom/keniu/security/g/a;

    invoke-direct {v0, v1}, Lcom/keniu/security/g/r;-><init>(Lcom/keniu/security/g/a;)V

    .line 495
    iget-object v1, p0, Lcom/keniu/security/g/g;->b:Lcom/keniu/security/f/t;

    invoke-virtual {v0, v1}, Lcom/keniu/security/g/r;->a(Lcom/keniu/security/f/t;)V

    goto :goto_0
.end method

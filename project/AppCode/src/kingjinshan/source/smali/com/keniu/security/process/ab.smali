.class final Lcom/keniu/security/process/ab;
.super Ljava/lang/Object;
.source "ProcessWhiteSettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/keniu/security/d/e;

.field final synthetic b:Lcom/keniu/security/process/z;


# direct methods
.method constructor <init>(Lcom/keniu/security/process/z;Lcom/keniu/security/d/e;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 233
    iput-object p1, p0, Lcom/keniu/security/process/ab;->b:Lcom/keniu/security/process/z;

    iput-object p2, p0, Lcom/keniu/security/process/ab;->a:Lcom/keniu/security/d/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 237
    check-cast p1, Landroid/widget/CheckBox;

    .line 238
    iget-object v0, p0, Lcom/keniu/security/process/ab;->a:Lcom/keniu/security/d/e;

    invoke-virtual {v0}, Lcom/keniu/security/d/e;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 239
    iget-object v0, p0, Lcom/keniu/security/process/ab;->a:Lcom/keniu/security/d/e;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/d/e;->a(Z)V

    .line 240
    return-void

    .line 238
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

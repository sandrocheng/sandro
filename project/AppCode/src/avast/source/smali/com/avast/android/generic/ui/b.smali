.class Lcom/avast/android/generic/ui/b;
.super Ljava/lang/Object;
.source "ChangePasswordDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/avast/android/generic/ui/a/a;

.field final synthetic b:Landroid/widget/TextView;

.field final synthetic c:Landroid/widget/TextView;

.field final synthetic d:Ljava/lang/CharSequence;

.field final synthetic e:Ljava/lang/CharSequence;

.field final synthetic f:Lcom/avast/android/generic/ui/ChangePasswordDialog;


# direct methods
.method constructor <init>(Lcom/avast/android/generic/ui/ChangePasswordDialog;Lcom/avast/android/generic/ui/a/a;Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 138
    iput-object p1, p0, Lcom/avast/android/generic/ui/b;->f:Lcom/avast/android/generic/ui/ChangePasswordDialog;

    iput-object p2, p0, Lcom/avast/android/generic/ui/b;->a:Lcom/avast/android/generic/ui/a/a;

    iput-object p3, p0, Lcom/avast/android/generic/ui/b;->b:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/avast/android/generic/ui/b;->c:Landroid/widget/TextView;

    iput-object p5, p0, Lcom/avast/android/generic/ui/b;->d:Ljava/lang/CharSequence;

    iput-object p6, p0, Lcom/avast/android/generic/ui/b;->e:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 141
    iget-object v0, p0, Lcom/avast/android/generic/ui/b;->f:Lcom/avast/android/generic/ui/ChangePasswordDialog;

    invoke-static {v0}, Lcom/avast/android/generic/ui/ChangePasswordDialog;->a(Lcom/avast/android/generic/ui/ChangePasswordDialog;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/avast/android/generic/ui/b;->a:Lcom/avast/android/generic/ui/a/a;

    invoke-virtual {v0, v2}, Lcom/avast/android/generic/ui/a/a;->a(Z)V

    .line 143
    iget-object v0, p0, Lcom/avast/android/generic/ui/b;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/avast/android/generic/ui/b;->a:Lcom/avast/android/generic/ui/a/a;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 144
    iget-object v0, p0, Lcom/avast/android/generic/ui/b;->f:Lcom/avast/android/generic/ui/ChangePasswordDialog;

    invoke-static {v0, v3}, Lcom/avast/android/generic/ui/ChangePasswordDialog;->a(Lcom/avast/android/generic/ui/ChangePasswordDialog;Z)Z

    .line 146
    iget-object v0, p0, Lcom/avast/android/generic/ui/b;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/avast/android/generic/ui/b;->d:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    :goto_0
    return-void

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/avast/android/generic/ui/b;->a:Lcom/avast/android/generic/ui/a/a;

    invoke-virtual {v0, v3}, Lcom/avast/android/generic/ui/a/a;->a(Z)V

    .line 149
    iget-object v0, p0, Lcom/avast/android/generic/ui/b;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/avast/android/generic/ui/b;->a:Lcom/avast/android/generic/ui/a/a;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 150
    iget-object v0, p0, Lcom/avast/android/generic/ui/b;->f:Lcom/avast/android/generic/ui/ChangePasswordDialog;

    invoke-static {v0, v2}, Lcom/avast/android/generic/ui/ChangePasswordDialog;->a(Lcom/avast/android/generic/ui/ChangePasswordDialog;Z)Z

    .line 151
    iget-object v0, p0, Lcom/avast/android/generic/ui/b;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/avast/android/generic/ui/b;->e:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

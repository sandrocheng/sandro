.class Lcom/avast/android/generic/app/wizard/a;
.super Ljava/lang/Object;
.source "EulaFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/avast/android/generic/ui/a/a;

.field final synthetic b:Lcom/avast/android/generic/app/wizard/EulaFragment;


# direct methods
.method constructor <init>(Lcom/avast/android/generic/app/wizard/EulaFragment;Lcom/avast/android/generic/ui/a/a;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/avast/android/generic/app/wizard/a;->b:Lcom/avast/android/generic/app/wizard/EulaFragment;

    iput-object p2, p0, Lcom/avast/android/generic/app/wizard/a;->a:Lcom/avast/android/generic/ui/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter

    .prologue
    const-wide/16 v4, 0x0

    .line 67
    iget-object v0, p0, Lcom/avast/android/generic/app/wizard/a;->b:Lcom/avast/android/generic/app/wizard/EulaFragment;

    invoke-static {v0}, Lcom/avast/android/generic/app/wizard/EulaFragment;->a(Lcom/avast/android/generic/app/wizard/EulaFragment;)I

    move-result v0

    sget v1, Lcom/avast/android/generic/z;->cH:I

    if-ne v0, v1, :cond_0

    .line 68
    iget-object v0, p0, Lcom/avast/android/generic/app/wizard/a;->b:Lcom/avast/android/generic/app/wizard/EulaFragment;

    sget v1, Lcom/avast/android/generic/z;->aY:I

    invoke-static {v0, v1}, Lcom/avast/android/generic/app/wizard/EulaFragment;->a(Lcom/avast/android/generic/app/wizard/EulaFragment;I)I

    .line 69
    iget-object v0, p0, Lcom/avast/android/generic/app/wizard/a;->a:Lcom/avast/android/generic/ui/a/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/ui/a/a;->a(Z)V

    .line 70
    iget-object v0, p0, Lcom/avast/android/generic/app/wizard/a;->b:Lcom/avast/android/generic/app/wizard/EulaFragment;

    invoke-static {v0}, Lcom/avast/android/generic/app/wizard/EulaFragment;->b(Lcom/avast/android/generic/app/wizard/EulaFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/generic/app/wizard/a;->a:Lcom/avast/android/generic/ui/a/a;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 71
    iget-object v0, p0, Lcom/avast/android/generic/app/wizard/a;->b:Lcom/avast/android/generic/app/wizard/EulaFragment;

    invoke-static {v0}, Lcom/avast/android/generic/app/wizard/EulaFragment;->b(Lcom/avast/android/generic/app/wizard/EulaFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    .line 72
    iget-object v0, p0, Lcom/avast/android/generic/app/wizard/a;->b:Lcom/avast/android/generic/app/wizard/EulaFragment;

    const-string v1, "ms-Wizard"

    const-string v2, "eulaText"

    const-string v3, "show"

    invoke-virtual/range {v0 .. v5}, Lcom/avast/android/generic/app/wizard/EulaFragment;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 80
    :goto_0
    iget-object v0, p0, Lcom/avast/android/generic/app/wizard/a;->b:Lcom/avast/android/generic/app/wizard/EulaFragment;

    invoke-static {v0}, Lcom/avast/android/generic/app/wizard/EulaFragment;->c(Lcom/avast/android/generic/app/wizard/EulaFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/generic/app/wizard/a;->b:Lcom/avast/android/generic/app/wizard/EulaFragment;

    invoke-static {v1}, Lcom/avast/android/generic/app/wizard/EulaFragment;->a(Lcom/avast/android/generic/app/wizard/EulaFragment;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 81
    return-void

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/avast/android/generic/app/wizard/a;->b:Lcom/avast/android/generic/app/wizard/EulaFragment;

    sget v1, Lcom/avast/android/generic/z;->cH:I

    invoke-static {v0, v1}, Lcom/avast/android/generic/app/wizard/EulaFragment;->a(Lcom/avast/android/generic/app/wizard/EulaFragment;I)I

    .line 75
    iget-object v0, p0, Lcom/avast/android/generic/app/wizard/a;->a:Lcom/avast/android/generic/ui/a/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/ui/a/a;->a(Z)V

    .line 76
    iget-object v0, p0, Lcom/avast/android/generic/app/wizard/a;->b:Lcom/avast/android/generic/app/wizard/EulaFragment;

    invoke-static {v0}, Lcom/avast/android/generic/app/wizard/EulaFragment;->b(Lcom/avast/android/generic/app/wizard/EulaFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    .line 77
    iget-object v0, p0, Lcom/avast/android/generic/app/wizard/a;->b:Lcom/avast/android/generic/app/wizard/EulaFragment;

    invoke-static {v0}, Lcom/avast/android/generic/app/wizard/EulaFragment;->b(Lcom/avast/android/generic/app/wizard/EulaFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/generic/app/wizard/a;->a:Lcom/avast/android/generic/ui/a/a;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 78
    iget-object v0, p0, Lcom/avast/android/generic/app/wizard/a;->b:Lcom/avast/android/generic/app/wizard/EulaFragment;

    const-string v1, "ms-Wizard"

    const-string v2, "eulaText"

    const-string v3, "hide"

    invoke-virtual/range {v0 .. v5}, Lcom/avast/android/generic/app/wizard/EulaFragment;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0
.end method

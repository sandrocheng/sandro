.class Lcom/avast/android/generic/ui/widget/e;
.super Ljava/lang/Object;
.source "ContextDialogFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/avast/android/generic/ui/widget/ContextDialogFragment;


# direct methods
.method constructor <init>(Lcom/avast/android/generic/ui/widget/ContextDialogFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Lcom/avast/android/generic/ui/widget/e;->a:Lcom/avast/android/generic/ui/widget/ContextDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 121
    iget-object v0, p0, Lcom/avast/android/generic/ui/widget/e;->a:Lcom/avast/android/generic/ui/widget/ContextDialogFragment;

    invoke-virtual {v0}, Lcom/avast/android/generic/ui/widget/ContextDialogFragment;->dismiss()V

    .line 124
    iget-object v0, p0, Lcom/avast/android/generic/ui/widget/e;->a:Lcom/avast/android/generic/ui/widget/ContextDialogFragment;

    invoke-virtual {v0}, Lcom/avast/android/generic/ui/widget/ContextDialogFragment;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avast/android/generic/ui/widget/e;->a:Lcom/avast/android/generic/ui/widget/ContextDialogFragment;

    invoke-virtual {v0}, Lcom/avast/android/generic/ui/widget/ContextDialogFragment;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/avast/android/generic/ui/widget/f;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/avast/android/generic/ui/widget/e;->a:Lcom/avast/android/generic/ui/widget/ContextDialogFragment;

    invoke-virtual {v0}, Lcom/avast/android/generic/ui/widget/ContextDialogFragment;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/ui/widget/f;

    invoke-interface {v0, p3}, Lcom/avast/android/generic/ui/widget/f;->a(I)V

    .line 127
    :cond_0
    return-void
.end method

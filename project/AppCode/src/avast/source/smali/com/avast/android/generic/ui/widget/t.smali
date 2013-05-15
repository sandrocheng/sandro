.class Lcom/avast/android/generic/ui/widget/t;
.super Ljava/lang/Object;
.source "SelectorRow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/avast/android/generic/ui/widget/SelectorRow;


# direct methods
.method constructor <init>(Lcom/avast/android/generic/ui/widget/SelectorRow;)V
    .locals 0
    .parameter

    .prologue
    .line 122
    iput-object p1, p0, Lcom/avast/android/generic/ui/widget/t;->a:Lcom/avast/android/generic/ui/widget/SelectorRow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 125
    iget-object v0, p0, Lcom/avast/android/generic/ui/widget/t;->a:Lcom/avast/android/generic/ui/widget/SelectorRow;

    invoke-virtual {v0}, Lcom/avast/android/generic/ui/widget/SelectorRow;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/support/v4/app/FragmentActivity;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/avast/android/generic/ui/widget/t;->a:Lcom/avast/android/generic/ui/widget/SelectorRow;

    invoke-virtual {v0}, Lcom/avast/android/generic/ui/widget/SelectorRow;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 128
    iget-object v1, p0, Lcom/avast/android/generic/ui/widget/t;->a:Lcom/avast/android/generic/ui/widget/SelectorRow;

    invoke-virtual {v1}, Lcom/avast/android/generic/ui/widget/SelectorRow;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/avast/android/generic/ui/widget/t;->a:Lcom/avast/android/generic/ui/widget/SelectorRow;

    invoke-static {v2}, Lcom/avast/android/generic/ui/widget/SelectorRow;->a(Lcom/avast/android/generic/ui/widget/SelectorRow;)[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/avast/android/generic/ui/widget/t;->a:Lcom/avast/android/generic/ui/widget/SelectorRow;

    invoke-static {v3}, Lcom/avast/android/generic/ui/widget/SelectorRow;->b(Lcom/avast/android/generic/ui/widget/SelectorRow;)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/avast/android/generic/ui/widget/SelectorRow$SelectorDialog;->a(Landroid/support/v4/app/FragmentManager;I[Ljava/lang/String;I)V

    .line 131
    :cond_0
    return-void
.end method

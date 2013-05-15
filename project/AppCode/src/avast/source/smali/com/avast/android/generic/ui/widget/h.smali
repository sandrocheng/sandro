.class Lcom/avast/android/generic/ui/widget/h;
.super Ljava/lang/Object;
.source "LanguageSelectorRow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/avast/android/generic/ui/widget/LanguageSelectorRow;


# direct methods
.method constructor <init>(Lcom/avast/android/generic/ui/widget/LanguageSelectorRow;)V
    .locals 0
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/avast/android/generic/ui/widget/h;->a:Lcom/avast/android/generic/ui/widget/LanguageSelectorRow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lcom/avast/android/generic/ui/widget/h;->a:Lcom/avast/android/generic/ui/widget/LanguageSelectorRow;

    invoke-virtual {v0}, Lcom/avast/android/generic/ui/widget/LanguageSelectorRow;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/support/v4/app/FragmentActivity;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/avast/android/generic/ui/widget/h;->a:Lcom/avast/android/generic/ui/widget/LanguageSelectorRow;

    invoke-virtual {v0}, Lcom/avast/android/generic/ui/widget/LanguageSelectorRow;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 77
    invoke-static {v0}, Lcom/avast/android/generic/ui/widget/LanguageSelectorRow$LanguageSelectDialog;->a(Landroid/support/v4/app/FragmentManager;)V

    .line 79
    :cond_0
    return-void
.end method

.class Lcom/avast/android/generic/ui/widget/i;
.super Ljava/lang/Object;
.source "LanguageSelectorRow.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/avast/android/generic/ui/widget/LanguageSelectorRow$LanguageSelectDialog;


# direct methods
.method constructor <init>(Lcom/avast/android/generic/ui/widget/LanguageSelectorRow$LanguageSelectDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 151
    iput-object p1, p0, Lcom/avast/android/generic/ui/widget/i;->a:Lcom/avast/android/generic/ui/widget/LanguageSelectorRow$LanguageSelectDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 154
    iget-object v0, p0, Lcom/avast/android/generic/ui/widget/i;->a:Lcom/avast/android/generic/ui/widget/LanguageSelectorRow$LanguageSelectDialog;

    invoke-virtual {v0}, Lcom/avast/android/generic/ui/widget/LanguageSelectorRow$LanguageSelectDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/avast/android/generic/o;->c:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    .line 155
    iget-object v0, p0, Lcom/avast/android/generic/ui/widget/i;->a:Lcom/avast/android/generic/ui/widget/LanguageSelectorRow$LanguageSelectDialog;

    invoke-virtual {v0}, Lcom/avast/android/generic/ui/widget/LanguageSelectorRow$LanguageSelectDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-class v2, Lcom/avast/android/generic/ae;

    invoke-static {v0, v2}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/ae;

    aget-object v1, v1, p2

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/ae;->i(Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/avast/android/generic/ui/widget/i;->a:Lcom/avast/android/generic/ui/widget/LanguageSelectorRow$LanguageSelectDialog;

    invoke-virtual {v0}, Lcom/avast/android/generic/ui/widget/LanguageSelectorRow$LanguageSelectDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/avast/android/generic/util/s;

    invoke-static {v0, v1}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/util/s;

    sget v1, Lcom/avast/android/generic/t;->am:I

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/util/s;->a(I)Z

    .line 157
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 158
    return-void
.end method

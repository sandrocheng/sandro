.class Lcom/avast/android/generic/app/about/g;
.super Ljava/lang/Object;
.source "FeedbackFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/avast/android/generic/app/about/FeedbackFragment;


# direct methods
.method constructor <init>(Lcom/avast/android/generic/app/about/FeedbackFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 318
    iput-object p1, p0, Lcom/avast/android/generic/app/about/g;->a:Lcom/avast/android/generic/app/about/FeedbackFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter

    .prologue
    .line 329
    iget-object v0, p0, Lcom/avast/android/generic/app/about/g;->a:Lcom/avast/android/generic/app/about/FeedbackFragment;

    invoke-static {v0}, Lcom/avast/android/generic/app/about/FeedbackFragment;->o(Lcom/avast/android/generic/app/about/FeedbackFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/avast/android/generic/app/about/g;->a:Lcom/avast/android/generic/app/about/FeedbackFragment;

    invoke-static {v0}, Lcom/avast/android/generic/app/about/FeedbackFragment;->p(Lcom/avast/android/generic/app/about/FeedbackFragment;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 332
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 325
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 321
    return-void
.end method
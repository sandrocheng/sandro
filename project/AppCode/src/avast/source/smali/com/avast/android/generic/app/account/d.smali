.class Lcom/avast/android/generic/app/account/d;
.super Ljava/lang/Object;
.source "AccountFragment.java"

# interfaces
.implements Lcom/avast/android/generic/ui/widget/c;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/avast/android/generic/app/account/p;

.field final synthetic c:Lcom/avast/android/generic/app/account/AccountFragment;


# direct methods
.method constructor <init>(Lcom/avast/android/generic/app/account/AccountFragment;Landroid/view/View;Lcom/avast/android/generic/app/account/p;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 815
    iput-object p1, p0, Lcom/avast/android/generic/app/account/d;->c:Lcom/avast/android/generic/app/account/AccountFragment;

    iput-object p2, p0, Lcom/avast/android/generic/app/account/d;->a:Landroid/view/View;

    iput-object p3, p0, Lcom/avast/android/generic/app/account/d;->b:Lcom/avast/android/generic/app/account/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/avast/android/generic/ui/widget/CheckBoxRow;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 818
    iget-object v1, p0, Lcom/avast/android/generic/app/account/d;->a:Landroid/view/View;

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 819
    iget-object v0, p0, Lcom/avast/android/generic/app/account/d;->c:Lcom/avast/android/generic/app/account/AccountFragment;

    invoke-static {v0, p2}, Lcom/avast/android/generic/app/account/AccountFragment;->a(Lcom/avast/android/generic/app/account/AccountFragment;Z)Z

    .line 821
    iget-object v0, p0, Lcom/avast/android/generic/app/account/d;->b:Lcom/avast/android/generic/app/account/p;

    iget-object v1, p0, Lcom/avast/android/generic/app/account/d;->c:Lcom/avast/android/generic/app/account/AccountFragment;

    invoke-static {v1}, Lcom/avast/android/generic/app/account/AccountFragment;->a(Lcom/avast/android/generic/app/account/AccountFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/app/account/p;->afterTextChanged(Landroid/text/Editable;)V

    .line 822
    return-void

    .line 818
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.class Lcom/avast/android/generic/app/account/c;
.super Ljava/lang/Object;
.source "AccountFragment.java"

# interfaces
.implements Lcom/avast/android/generic/ui/widget/c;


# instance fields
.field final synthetic a:Landroid/widget/LinearLayout;

.field final synthetic b:Lcom/avast/android/generic/app/account/q;

.field final synthetic c:Lcom/avast/android/generic/app/account/AccountFragment;


# direct methods
.method constructor <init>(Lcom/avast/android/generic/app/account/AccountFragment;Landroid/widget/LinearLayout;Lcom/avast/android/generic/app/account/q;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 801
    iput-object p1, p0, Lcom/avast/android/generic/app/account/c;->c:Lcom/avast/android/generic/app/account/AccountFragment;

    iput-object p2, p0, Lcom/avast/android/generic/app/account/c;->a:Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/avast/android/generic/app/account/c;->b:Lcom/avast/android/generic/app/account/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/avast/android/generic/ui/widget/CheckBoxRow;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 806
    iget-object v1, p0, Lcom/avast/android/generic/app/account/c;->a:Landroid/widget/LinearLayout;

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 807
    iget-object v0, p0, Lcom/avast/android/generic/app/account/c;->b:Lcom/avast/android/generic/app/account/q;

    iget-object v1, p0, Lcom/avast/android/generic/app/account/c;->c:Lcom/avast/android/generic/app/account/AccountFragment;

    invoke-static {v1}, Lcom/avast/android/generic/app/account/AccountFragment;->o(Lcom/avast/android/generic/app/account/AccountFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/app/account/q;->afterTextChanged(Landroid/text/Editable;)V

    .line 808
    return-void

    .line 806
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

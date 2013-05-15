.class Lcom/avast/android/generic/app/account/ad;
.super Ljava/lang/Object;
.source "ConnectionCheckFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/avast/android/generic/app/account/ab;


# direct methods
.method constructor <init>(Lcom/avast/android/generic/app/account/ab;)V
    .locals 0
    .parameter

    .prologue
    .line 587
    iput-object p1, p0, Lcom/avast/android/generic/app/account/ad;->a:Lcom/avast/android/generic/app/account/ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 591
    iget-object v0, p0, Lcom/avast/android/generic/app/account/ad;->a:Lcom/avast/android/generic/app/account/ab;

    iget-object v0, v0, Lcom/avast/android/generic/app/account/ab;->a:Lcom/avast/android/generic/app/account/aa;

    iget-object v0, v0, Lcom/avast/android/generic/app/account/aa;->r:Lcom/avast/android/generic/app/account/ConnectionCheckFragment;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->a(I)V

    .line 592
    return-void
.end method

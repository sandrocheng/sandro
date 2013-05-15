.class Lcom/avast/android/generic/notification/e;
.super Ljava/lang/Object;
.source "AvastNotificationFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/avast/android/generic/notification/AvastNotificationFragment;


# direct methods
.method constructor <init>(Lcom/avast/android/generic/notification/AvastNotificationFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Lcom/avast/android/generic/notification/e;->a:Lcom/avast/android/generic/notification/AvastNotificationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 148
    iget-object v0, p0, Lcom/avast/android/generic/notification/e;->a:Lcom/avast/android/generic/notification/AvastNotificationFragment;

    invoke-virtual {v0}, Lcom/avast/android/generic/notification/AvastNotificationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/avast/android/generic/notification/j;

    invoke-static {v0, v1}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/notification/j;

    invoke-virtual {v0}, Lcom/avast/android/generic/notification/j;->c()V

    .line 149
    return-void
.end method

.class Lcom/avast/android/generic/notification/c;
.super Ljava/lang/Object;
.source "AvastNotificationFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/avast/android/generic/notification/AvastNotificationFragment;


# direct methods
.method constructor <init>(Lcom/avast/android/generic/notification/AvastNotificationFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/avast/android/generic/notification/c;->a:Lcom/avast/android/generic/notification/AvastNotificationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 95
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/notification/i;

    iget-object v0, v0, Lcom/avast/android/generic/notification/i;->f:Lcom/avast/android/generic/notification/AvastPendingIntent;

    .line 96
    if-eqz v0, :cond_0

    .line 97
    iget-object v1, p0, Lcom/avast/android/generic/notification/c;->a:Lcom/avast/android/generic/notification/AvastNotificationFragment;

    invoke-virtual {v1}, Lcom/avast/android/generic/notification/AvastNotificationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/notification/AvastPendingIntent;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    .line 98
    if-eqz v1, :cond_0

    .line 99
    sget-object v2, Lcom/avast/android/generic/notification/f;->a:[I

    invoke-virtual {v0}, Lcom/avast/android/generic/notification/AvastPendingIntent;->b()Lcom/avast/android/generic/notification/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avast/android/generic/notification/s;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_0

    .line 104
    iget-object v0, p0, Lcom/avast/android/generic/notification/c;->a:Lcom/avast/android/generic/notification/AvastNotificationFragment;

    invoke-static {v0}, Lcom/avast/android/generic/notification/AvastNotificationFragment;->b(Lcom/avast/android/generic/notification/AvastNotificationFragment;)Lcom/avast/android/generic/notification/j;

    move-result-object v0

    iget-object v2, p0, Lcom/avast/android/generic/notification/c;->a:Lcom/avast/android/generic/notification/AvastNotificationFragment;

    invoke-virtual {v2}, Lcom/avast/android/generic/notification/AvastNotificationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/avast/android/generic/notification/j;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 101
    :pswitch_0
    iget-object v0, p0, Lcom/avast/android/generic/notification/c;->a:Lcom/avast/android/generic/notification/AvastNotificationFragment;

    invoke-virtual {v0}, Lcom/avast/android/generic/notification/AvastNotificationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 99
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

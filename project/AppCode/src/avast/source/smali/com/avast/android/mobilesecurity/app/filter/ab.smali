.class Lcom/avast/android/mobilesecurity/app/filter/ab;
.super Ljava/lang/Object;
.source "SmsBlockOfferActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:[I

.field final synthetic b:Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity$GroupSelectDialog;


# direct methods
.method constructor <init>(Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity$GroupSelectDialog;[I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 551
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/filter/ab;->b:Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity$GroupSelectDialog;

    iput-object p2, p0, Lcom/avast/android/mobilesecurity/app/filter/ab;->a:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 554
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 555
    const v0, 0x7f07002f

    iput v0, v1, Landroid/os/Message;->what:I

    .line 556
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/ab;->a:[I

    aget v0, v0, p2

    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 557
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/ab;->b:Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity$GroupSelectDialog;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity$GroupSelectDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-class v2, Lcom/avast/android/generic/util/s;

    invoke-static {v0, v2}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/util/s;

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/util/s;->a(Landroid/os/Message;)Z

    .line 558
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 559
    return-void
.end method

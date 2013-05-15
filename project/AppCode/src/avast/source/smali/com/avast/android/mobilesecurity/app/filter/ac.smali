.class Lcom/avast/android/mobilesecurity/app/filter/ac;
.super Ljava/lang/Object;
.source "SmsBlockOfferActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity$GroupSelectDialog;


# direct methods
.method constructor <init>(Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity$GroupSelectDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 561
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/filter/ac;->a:Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity$GroupSelectDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter

    .prologue
    .line 564
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/ac;->a:Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity$GroupSelectDialog;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity$GroupSelectDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 565
    return-void
.end method

.class Lcom/avast/android/mobilesecurity/app/filter/w;
.super Ljava/lang/Object;
.source "SmsBlockOfferActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;


# direct methods
.method constructor <init>(Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 132
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/filter/w;->a:Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 135
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/w;->a:Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;->a(Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;)Lcom/avast/android/generic/util/s;

    move-result-object v0

    const v1, 0x7f07002f

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/filter/w;->a:Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;

    invoke-virtual {v0, v1, v2}, Lcom/avast/android/generic/util/s;->a(ILandroid/os/Handler$Callback;)V

    .line 137
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/w;->a:Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity$GroupSelectDialog;->a(Landroid/support/v4/app/FragmentManager;)V

    .line 138
    return-void
.end method

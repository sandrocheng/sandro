.class Lcom/avast/android/mobilesecurity/app/wizard/a;
.super Ljava/lang/Object;
.source "AntiTheftOfferFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/avast/android/mobilesecurity/app/wizard/AntiTheftOfferFragment;


# direct methods
.method constructor <init>(Lcom/avast/android/mobilesecurity/app/wizard/AntiTheftOfferFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 30
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/wizard/a;->a:Lcom/avast/android/mobilesecurity/app/wizard/AntiTheftOfferFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/wizard/a;->a:Lcom/avast/android/mobilesecurity/app/wizard/AntiTheftOfferFragment;

    const-string v1, "ms-Wizard"

    const-string v2, "Anti Theft Install Offer"

    const-string v3, "setup"

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/avast/android/mobilesecurity/app/wizard/AntiTheftOfferFragment;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 34
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/wizard/a;->a:Lcom/avast/android/mobilesecurity/app/wizard/AntiTheftOfferFragment;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/wizard/a;->a:Lcom/avast/android/mobilesecurity/app/wizard/AntiTheftOfferFragment;

    invoke-virtual {v2}, Lcom/avast/android/mobilesecurity/app/wizard/AntiTheftOfferFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/avast/android/antitheft_setup_components/app/home/InstallationModeActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/avast/android/mobilesecurity/app/wizard/AntiTheftOfferFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 35
    return-void
.end method

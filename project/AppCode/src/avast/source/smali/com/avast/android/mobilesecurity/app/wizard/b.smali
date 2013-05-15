.class Lcom/avast/android/mobilesecurity/app/wizard/b;
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
    .line 38
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/wizard/b;->a:Lcom/avast/android/mobilesecurity/app/wizard/AntiTheftOfferFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/wizard/b;->a:Lcom/avast/android/mobilesecurity/app/wizard/AntiTheftOfferFragment;

    const-string v1, "ms-Wizard"

    const-string v2, "Anti Theft Install Offer"

    const-string v3, "cancel"

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/avast/android/mobilesecurity/app/wizard/AntiTheftOfferFragment;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 42
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/wizard/b;->a:Lcom/avast/android/mobilesecurity/app/wizard/AntiTheftOfferFragment;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/wizard/AntiTheftOfferFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/avast/android/mobilesecurity/t;

    invoke-static {v0, v1}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/t;->u()Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 44
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/wizard/b;->a:Lcom/avast/android/mobilesecurity/app/wizard/AntiTheftOfferFragment;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/wizard/AntiTheftOfferFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/avast/android/generic/app/wizard/WizardAccountActivity;->call(Landroid/content/Context;Z)V

    .line 48
    :goto_0
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/wizard/b;->a:Lcom/avast/android/mobilesecurity/app/wizard/AntiTheftOfferFragment;

    invoke-static {v0}, Lcom/avast/android/generic/util/a;->a(Landroid/support/v4/app/Fragment;)V

    .line 49
    return-void

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/wizard/b;->a:Lcom/avast/android/mobilesecurity/app/wizard/AntiTheftOfferFragment;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/wizard/AntiTheftOfferFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/wizard/ScanWizardActivity;->call(Landroid/content/Context;)V

    goto :goto_0
.end method

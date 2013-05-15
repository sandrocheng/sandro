.class Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/k;
.super Ljava/lang/Object;
.source "RootMethodFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootMethodFragment;


# direct methods
.method constructor <init>(Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootMethodFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 185
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/k;->a:Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootMethodFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 188
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/k;->a:Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootMethodFragment;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootMethodFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/l;

    invoke-direct {v1, p0}, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/l;-><init>(Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/k;)V

    invoke-static {v0, v1}, Lcom/avast/android/antitheft_setup_components/b/a;->a(Landroid/content/Context;Lcom/avast/android/antitheft_setup_components/b/e;)V

    .line 196
    return-void
.end method

.class Lcom/avast/android/mobilesecurity/app/shieldcontrol/k;
.super Ljava/lang/Object;
.source "ShieldControlFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/avast/android/mobilesecurity/app/shieldcontrol/ShieldControlFragment;


# direct methods
.method constructor <init>(Lcom/avast/android/mobilesecurity/app/shieldcontrol/ShieldControlFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/shieldcontrol/k;->a:Lcom/avast/android/mobilesecurity/app/shieldcontrol/ShieldControlFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/shieldcontrol/k;->a:Lcom/avast/android/mobilesecurity/app/shieldcontrol/ShieldControlFragment;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/shieldcontrol/ShieldControlFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/ui/BaseActivity;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/shieldcontrol/AppShieldActivity;->call(Lcom/avast/android/generic/ui/BaseActivity;)V

    .line 58
    return-void
.end method
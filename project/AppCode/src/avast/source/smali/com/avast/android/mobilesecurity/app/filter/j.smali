.class Lcom/avast/android/mobilesecurity/app/filter/j;
.super Ljava/lang/Object;
.source "FilterGroupDetailFragment.java"

# interfaces
.implements Lcom/avast/android/mobilesecurity/ui/widget/r;


# instance fields
.field final synthetic a:Lcom/avast/android/mobilesecurity/app/filter/FilterGroupDetailFragment;


# direct methods
.method constructor <init>(Lcom/avast/android/mobilesecurity/app/filter/FilterGroupDetailFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 122
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/filter/j;->a:Lcom/avast/android/mobilesecurity/app/filter/FilterGroupDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/widget/ToggleButton;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 125
    invoke-static {}, Lcom/avast/android/generic/util/al;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    const-string v0, "Call"

    invoke-virtual {p1}, Landroid/widget/ToggleButton;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 127
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/j;->a:Lcom/avast/android/mobilesecurity/app/filter/FilterGroupDetailFragment;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/filter/FilterGroupDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/filter/j;->a:Lcom/avast/android/mobilesecurity/app/filter/FilterGroupDetailFragment;

    invoke-virtual {v1}, Lcom/avast/android/mobilesecurity/app/filter/FilterGroupDetailFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avast/android/mobilesecurity/app/filter/LGWarningDialog;->a(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;)V

    .line 128
    invoke-virtual {p1, v2}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 129
    invoke-virtual {p1, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 131
    :cond_0
    return-void
.end method

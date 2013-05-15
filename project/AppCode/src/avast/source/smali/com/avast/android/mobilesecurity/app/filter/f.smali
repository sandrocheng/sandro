.class Lcom/avast/android/mobilesecurity/app/filter/f;
.super Ljava/lang/Object;
.source "FilterContactsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/avast/android/mobilesecurity/app/filter/FilterContactsFragment;


# direct methods
.method constructor <init>(Lcom/avast/android/mobilesecurity/app/filter/FilterContactsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 134
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/filter/f;->a:Lcom/avast/android/mobilesecurity/app/filter/FilterContactsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 137
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/f;->a:Lcom/avast/android/mobilesecurity/app/filter/FilterContactsFragment;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/filter/FilterContactsFragment;->b(Lcom/avast/android/mobilesecurity/app/filter/FilterContactsFragment;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/i;->a(Landroid/net/Uri;)J

    move-result-wide v2

    .line 139
    invoke-static {v2, v3}, Lcom/avast/android/mobilesecurity/k;->b(J)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 140
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/f;->a:Lcom/avast/android/mobilesecurity/app/filter/FilterContactsFragment;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/filter/FilterContactsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/ui/BaseActivity;

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/ui/BaseActivity;->a(Landroid/content/Intent;)V

    .line 141
    return-void
.end method

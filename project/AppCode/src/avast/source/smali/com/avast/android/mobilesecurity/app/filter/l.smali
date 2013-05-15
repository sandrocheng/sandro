.class Lcom/avast/android/mobilesecurity/app/filter/l;
.super Ljava/lang/Object;
.source "FilterGroupDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/avast/android/mobilesecurity/app/filter/FilterGroupDetailFragment;


# direct methods
.method constructor <init>(Lcom/avast/android/mobilesecurity/app/filter/FilterGroupDetailFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 222
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/filter/l;->a:Lcom/avast/android/mobilesecurity/app/filter/FilterGroupDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 225
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/l;->a:Lcom/avast/android/mobilesecurity/app/filter/FilterGroupDetailFragment;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/filter/FilterGroupDetailFragment;->b(Lcom/avast/android/mobilesecurity/app/filter/FilterGroupDetailFragment;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 227
    invoke-static {v2, v3}, Lcom/avast/android/mobilesecurity/i;->a(J)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 228
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/l;->a:Lcom/avast/android/mobilesecurity/app/filter/FilterGroupDetailFragment;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/filter/FilterGroupDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/ui/BaseActivity;

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/ui/BaseActivity;->a(Landroid/content/Intent;)V

    .line 229
    return-void
.end method

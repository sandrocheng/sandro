.class Lcom/avast/android/mobilesecurity/ui/widget/u;
.super Ljava/lang/Object;
.source "SocialCornerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/avast/android/mobilesecurity/ui/widget/SocialCornerView;


# direct methods
.method constructor <init>(Lcom/avast/android/mobilesecurity/ui/widget/SocialCornerView;)V
    .locals 0
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/ui/widget/u;->a:Lcom/avast/android/mobilesecurity/ui/widget/SocialCornerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 101
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/u;->a:Lcom/avast/android/mobilesecurity/ui/widget/SocialCornerView;

    invoke-static {}, Lcom/avast/android/mobilesecurity/ui/widget/SocialCornerView;->d()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avast/android/mobilesecurity/ui/widget/SocialCornerView;->a(Lcom/avast/android/mobilesecurity/ui/widget/SocialCornerView;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 103
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/ui/widget/u;->a:Lcom/avast/android/mobilesecurity/ui/widget/SocialCornerView;

    invoke-static {v1, v0}, Lcom/avast/android/mobilesecurity/ui/widget/SocialCornerView;->a(Lcom/avast/android/mobilesecurity/ui/widget/SocialCornerView;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/ui/widget/u;->a:Lcom/avast/android/mobilesecurity/ui/widget/SocialCornerView;

    invoke-virtual {v1}, Lcom/avast/android/mobilesecurity/ui/widget/SocialCornerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v2, "com.twitter.android.ProfileActivity"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 106
    :cond_0
    invoke-static {}, Lcom/avast/android/mobilesecurity/ui/widget/SocialCornerView;->e()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 111
    :goto_0
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/ui/widget/u;->a:Lcom/avast/android/mobilesecurity/ui/widget/SocialCornerView;

    invoke-virtual {v1}, Lcom/avast/android/mobilesecurity/ui/widget/SocialCornerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 112
    return-void

    .line 108
    :cond_1
    const-string v1, "com.twitter.android.action.USER_SHOW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    const-string v1, "com.twitter.android"

    const-string v2, "com.twitter.android.ProfileActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

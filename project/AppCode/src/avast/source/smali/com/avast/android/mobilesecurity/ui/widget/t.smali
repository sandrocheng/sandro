.class Lcom/avast/android/mobilesecurity/ui/widget/t;
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
    .line 80
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/ui/widget/t;->a:Lcom/avast/android/mobilesecurity/ui/widget/SocialCornerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 83
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/t;->a:Lcom/avast/android/mobilesecurity/ui/widget/SocialCornerView;

    invoke-static {}, Lcom/avast/android/mobilesecurity/ui/widget/SocialCornerView;->c()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avast/android/mobilesecurity/ui/widget/SocialCornerView;->a(Lcom/avast/android/mobilesecurity/ui/widget/SocialCornerView;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 84
    const-string v1, "com.google.android.apps.plus"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/ui/widget/t;->a:Lcom/avast/android/mobilesecurity/ui/widget/SocialCornerView;

    invoke-static {v1, v0}, Lcom/avast/android/mobilesecurity/ui/widget/SocialCornerView;->a(Lcom/avast/android/mobilesecurity/ui/widget/SocialCornerView;Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 86
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    :cond_0
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/ui/widget/t;->a:Lcom/avast/android/mobilesecurity/ui/widget/SocialCornerView;

    invoke-virtual {v1}, Lcom/avast/android/mobilesecurity/ui/widget/SocialCornerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 89
    return-void
.end method

.class Lcom/avast/android/mobilesecurity/ui/widget/v;
.super Ljava/lang/Object;
.source "SocialCornerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Lcom/avast/android/mobilesecurity/ui/widget/SocialCornerView;


# direct methods
.method constructor <init>(Lcom/avast/android/mobilesecurity/ui/widget/SocialCornerView;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 123
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/ui/widget/v;->b:Lcom/avast/android/mobilesecurity/ui/widget/SocialCornerView;

    iput-object p2, p0, Lcom/avast/android/mobilesecurity/ui/widget/v;->a:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 126
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/v;->b:Lcom/avast/android/mobilesecurity/ui/widget/SocialCornerView;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/ui/widget/SocialCornerView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/ui/widget/v;->a:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 127
    return-void
.end method

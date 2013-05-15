.class Lcom/avast/android/mobilesecurity/app/campaign/types/a;
.super Ljava/lang/Object;
.source "SecureLinePopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/avast/android/mobilesecurity/app/campaign/h;

.field final synthetic c:Landroid/widget/CheckBox;

.field final synthetic d:Lcom/avast/android/mobilesecurity/app/campaign/b;

.field final synthetic e:Lcom/avast/android/mobilesecurity/app/campaign/types/SecureLinePopup;


# direct methods
.method constructor <init>(Lcom/avast/android/mobilesecurity/app/campaign/types/SecureLinePopup;Landroid/content/Context;Lcom/avast/android/mobilesecurity/app/campaign/h;Landroid/widget/CheckBox;Lcom/avast/android/mobilesecurity/app/campaign/b;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/campaign/types/a;->e:Lcom/avast/android/mobilesecurity/app/campaign/types/SecureLinePopup;

    iput-object p2, p0, Lcom/avast/android/mobilesecurity/app/campaign/types/a;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/avast/android/mobilesecurity/app/campaign/types/a;->b:Lcom/avast/android/mobilesecurity/app/campaign/h;

    iput-object p4, p0, Lcom/avast/android/mobilesecurity/app/campaign/types/a;->c:Landroid/widget/CheckBox;

    iput-object p5, p0, Lcom/avast/android/mobilesecurity/app/campaign/types/a;->d:Lcom/avast/android/mobilesecurity/app/campaign/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    const/high16 v3, 0x1000

    .line 66
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "market://details?id=com.avast.android.vpn"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 67
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 68
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/campaign/types/a;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 69
    const/high16 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 70
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/campaign/types/a;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 76
    :goto_0
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/campaign/types/a;->b:Lcom/avast/android/mobilesecurity/app/campaign/h;

    invoke-interface {v0}, Lcom/avast/android/mobilesecurity/app/campaign/h;->a()V

    .line 77
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/campaign/types/a;->c:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/campaign/types/a;->d:Lcom/avast/android/mobilesecurity/app/campaign/b;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/campaign/types/a;->e:Lcom/avast/android/mobilesecurity/app/campaign/types/SecureLinePopup;

    invoke-virtual {v0, v1}, Lcom/avast/android/mobilesecurity/app/campaign/b;->a(Lcom/avast/android/mobilesecurity/app/campaign/CampaignEvent;)V

    .line 80
    :cond_0
    return-void

    .line 72
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "http://www.avast.com/secure-line-vpn"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 73
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 74
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/campaign/types/a;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.class Lcom/avast/android/mobilesecurity/app/campaign/types/b;
.super Ljava/lang/Object;
.source "SecureLinePopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/avast/android/mobilesecurity/app/campaign/h;

.field final synthetic b:Landroid/widget/CheckBox;

.field final synthetic c:Lcom/avast/android/mobilesecurity/app/campaign/b;

.field final synthetic d:Lcom/avast/android/mobilesecurity/app/campaign/types/SecureLinePopup;


# direct methods
.method constructor <init>(Lcom/avast/android/mobilesecurity/app/campaign/types/SecureLinePopup;Lcom/avast/android/mobilesecurity/app/campaign/h;Landroid/widget/CheckBox;Lcom/avast/android/mobilesecurity/app/campaign/b;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/campaign/types/b;->d:Lcom/avast/android/mobilesecurity/app/campaign/types/SecureLinePopup;

    iput-object p2, p0, Lcom/avast/android/mobilesecurity/app/campaign/types/b;->a:Lcom/avast/android/mobilesecurity/app/campaign/h;

    iput-object p3, p0, Lcom/avast/android/mobilesecurity/app/campaign/types/b;->b:Landroid/widget/CheckBox;

    iput-object p4, p0, Lcom/avast/android/mobilesecurity/app/campaign/types/b;->c:Lcom/avast/android/mobilesecurity/app/campaign/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/campaign/types/b;->a:Lcom/avast/android/mobilesecurity/app/campaign/h;

    invoke-interface {v0}, Lcom/avast/android/mobilesecurity/app/campaign/h;->a()V

    .line 86
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/campaign/types/b;->b:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/campaign/types/b;->c:Lcom/avast/android/mobilesecurity/app/campaign/b;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/campaign/types/b;->d:Lcom/avast/android/mobilesecurity/app/campaign/types/SecureLinePopup;

    invoke-virtual {v0, v1}, Lcom/avast/android/mobilesecurity/app/campaign/b;->a(Lcom/avast/android/mobilesecurity/app/campaign/CampaignEvent;)V

    .line 89
    :cond_0
    return-void
.end method

.class public Lcom/avast/android/mobilesecurity/app/campaign/types/SecureLinePopup;
.super Lcom/avast/android/mobilesecurity/app/campaign/PopupCampaignEvent;
.source "SecureLinePopup.java"


# direct methods
.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/avast/android/mobilesecurity/app/campaign/PopupCampaignEvent;-><init>(Landroid/os/Parcel;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Lcom/avast/android/mobilesecurity/app/campaign/e;Landroid/os/Bundle;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 40
    sget-object v0, Lcom/avast/android/mobilesecurity/app/campaign/f;->a:Lcom/avast/android/mobilesecurity/app/campaign/f;

    invoke-direct {p0, p1, v0, p2}, Lcom/avast/android/mobilesecurity/app/campaign/PopupCampaignEvent;-><init>(Lcom/avast/android/mobilesecurity/app/campaign/e;Lcom/avast/android/mobilesecurity/app/campaign/f;Landroid/os/Bundle;)V

    .line 41
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/avast/android/mobilesecurity/app/campaign/h;)Landroid/view/View;
    .locals 9
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 56
    const v1, 0x7f030028

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/view/ViewGroup;

    .line 57
    const v0, 0x7f070092

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/widget/Button;

    .line 58
    const v0, 0x7f070091

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/widget/Button;

    .line 59
    const v0, 0x7f070093

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    .line 61
    new-instance v5, Lcom/avast/android/mobilesecurity/app/campaign/b;

    invoke-direct {v5, p1}, Lcom/avast/android/mobilesecurity/app/campaign/b;-><init>(Landroid/content/Context;)V

    .line 63
    new-instance v0, Lcom/avast/android/mobilesecurity/app/campaign/types/a;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/avast/android/mobilesecurity/app/campaign/types/a;-><init>(Lcom/avast/android/mobilesecurity/app/campaign/types/SecureLinePopup;Landroid/content/Context;Lcom/avast/android/mobilesecurity/app/campaign/h;Landroid/widget/CheckBox;Lcom/avast/android/mobilesecurity/app/campaign/b;)V

    invoke-virtual {v7, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    new-instance v0, Lcom/avast/android/mobilesecurity/app/campaign/types/b;

    invoke-direct {v0, p0, p2, v4, v5}, Lcom/avast/android/mobilesecurity/app/campaign/types/b;-><init>(Lcom/avast/android/mobilesecurity/app/campaign/types/SecureLinePopup;Lcom/avast/android/mobilesecurity/app/campaign/h;Landroid/widget/CheckBox;Lcom/avast/android/mobilesecurity/app/campaign/b;)V

    invoke-virtual {v8, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    return-object v6
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/campaign/types/SecureLinePopup;->c()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "ssid"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 98
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.avast.android.vpn"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-eqz v1, :cond_1

    .line 104
    :cond_0
    :goto_0
    return v0

    .line 101
    :catch_0
    move-exception v1

    .line 104
    :cond_1
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/campaign/types/SecureLinePopup;->c()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "ssid"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

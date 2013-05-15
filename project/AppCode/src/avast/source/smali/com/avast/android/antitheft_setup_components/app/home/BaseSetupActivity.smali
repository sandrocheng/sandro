.class public abstract Lcom/avast/android/antitheft_setup_components/app/home/BaseSetupActivity;
.super Lcom/avast/android/generic/ui/BaseSinglePaneActivity;
.source "BaseSetupActivity.java"


# static fields
.field public static final a:Landroid/content/IntentFilter;


# instance fields
.field private b:Lcom/avast/android/antitheft_setup_components/app/home/BaseSetupActivity$BaseActivityReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    invoke-static {}, Lcom/avast/android/antitheft_setup_components/app/home/BaseSetupActivity;->g()Landroid/content/IntentFilter;

    move-result-object v0

    sput-object v0, Lcom/avast/android/antitheft_setup_components/app/home/BaseSetupActivity;->a:Landroid/content/IntentFilter;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/avast/android/generic/ui/BaseSinglePaneActivity;-><init>()V

    .line 14
    new-instance v0, Lcom/avast/android/antitheft_setup_components/app/home/BaseSetupActivity$BaseActivityReceiver;

    invoke-direct {v0, p0}, Lcom/avast/android/antitheft_setup_components/app/home/BaseSetupActivity$BaseActivityReceiver;-><init>(Lcom/avast/android/antitheft_setup_components/app/home/BaseSetupActivity;)V

    iput-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/BaseSetupActivity;->b:Lcom/avast/android/antitheft_setup_components/app/home/BaseSetupActivity$BaseActivityReceiver;

    .line 46
    return-void
.end method

.method private static g()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 33
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 34
    const-string v1, "com.avast.android.antitheft_setup.FINISH_ALL_ACTIVITIES_ACTIVITY_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 35
    return-object v0
.end method


# virtual methods
.method protected a()V
    .locals 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/BaseSetupActivity;->b:Lcom/avast/android/antitheft_setup_components/app/home/BaseSetupActivity$BaseActivityReceiver;

    sget-object v1, Lcom/avast/android/antitheft_setup_components/app/home/BaseSetupActivity;->a:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/avast/android/antitheft_setup_components/app/home/BaseSetupActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 40
    return-void
.end method

.method protected b()V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/BaseSetupActivity;->b:Lcom/avast/android/antitheft_setup_components/app/home/BaseSetupActivity$BaseActivityReceiver;

    invoke-virtual {p0, v0}, Lcom/avast/android/antitheft_setup_components/app/home/BaseSetupActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 44
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 56
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.avast.android.antitheft_setup.FINISH_ALL_ACTIVITIES_ACTIVITY_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 57
    invoke-static {v0}, Lcom/avast/android/generic/util/ae;->a(Landroid/content/Intent;)V

    .line 58
    invoke-virtual {p0, v0}, Lcom/avast/android/antitheft_setup_components/app/home/BaseSetupActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 59
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 20
    invoke-super {p0, p1}, Lcom/avast/android/generic/ui/BaseSinglePaneActivity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    invoke-virtual {p0}, Lcom/avast/android/antitheft_setup_components/app/home/BaseSetupActivity;->a()V

    .line 23
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/avast/android/antitheft_setup_components/app/home/BaseSetupActivity;->b()V

    .line 29
    invoke-super {p0}, Lcom/avast/android/generic/ui/BaseSinglePaneActivity;->onDestroy()V

    .line 30
    return-void
.end method

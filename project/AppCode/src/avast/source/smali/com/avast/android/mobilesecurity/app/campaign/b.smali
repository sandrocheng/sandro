.class public Lcom/avast/android/mobilesecurity/app/campaign/b;
.super Ljava/lang/Object;
.source "CampaignEventHandler.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/campaign/b;->a:Landroid/content/Context;

    .line 111
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/campaign/b;->a:Landroid/content/Context;

    const-string v1, "prefs_campaigns"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/campaign/b;->b:Landroid/content/SharedPreferences;

    .line 112
    return-void
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/app/campaign/b;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/campaign/b;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/app/campaign/b;Lcom/avast/android/mobilesecurity/app/campaign/CampaignEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/avast/android/mobilesecurity/app/campaign/b;->b(Lcom/avast/android/mobilesecurity/app/campaign/CampaignEvent;)Z

    move-result v0

    return v0
.end method

.method private b(Lcom/avast/android/mobilesecurity/app/campaign/CampaignEvent;)Z
    .locals 4
    .parameter

    .prologue
    .line 143
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/campaign/b;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/campaign/b;->b:Landroid/content/SharedPreferences;

    invoke-direct {p0, p1}, Lcom/avast/android/mobilesecurity/app/campaign/b;->c(Lcom/avast/android/mobilesecurity/app/campaign/CampaignEvent;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/avast/android/mobilesecurity/app/campaign/CampaignEvent;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private c(Lcom/avast/android/mobilesecurity/app/campaign/CampaignEvent;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dont_show_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/avast/android/mobilesecurity/app/campaign/CampaignEvent;->a()Lcom/avast/android/mobilesecurity/app/campaign/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avast/android/mobilesecurity/app/campaign/e;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/avast/android/mobilesecurity/app/campaign/CampaignEvent;->b()Lcom/avast/android/mobilesecurity/app/campaign/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avast/android/mobilesecurity/app/campaign/f;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 118
    new-instance v0, Lcom/avast/android/mobilesecurity/app/campaign/d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/avast/android/mobilesecurity/app/campaign/d;-><init>(Lcom/avast/android/mobilesecurity/app/campaign/b;Lcom/avast/android/mobilesecurity/app/campaign/c;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/avast/android/mobilesecurity/app/campaign/d;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 119
    return-void
.end method

.method public declared-synchronized a(Lcom/avast/android/mobilesecurity/app/campaign/CampaignEvent;)V
    .locals 3
    .parameter

    .prologue
    .line 128
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CampaignEventHandler: dont show anymore event: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/avast/android/mobilesecurity/app/campaign/CampaignEvent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    .line 129
    invoke-virtual {p1}, Lcom/avast/android/mobilesecurity/app/campaign/CampaignEvent;->b()Lcom/avast/android/mobilesecurity/app/campaign/f;

    move-result-object v0

    sget-object v1, Lcom/avast/android/mobilesecurity/app/campaign/f;->a:Lcom/avast/android/mobilesecurity/app/campaign/f;

    if-ne v0, v1, :cond_0

    .line 130
    invoke-direct {p0, p1}, Lcom/avast/android/mobilesecurity/app/campaign/b;->c(Lcom/avast/android/mobilesecurity/app/campaign/CampaignEvent;)Ljava/lang/String;

    move-result-object v0

    .line 131
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/campaign/b;->b:Landroid/content/SharedPreferences;

    const-string v2, ""

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 132
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/campaign/b;->b:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-virtual {p1, v1}, Lcom/avast/android/mobilesecurity/app/campaign/CampaignEvent;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    :cond_0
    monitor-exit p0

    return-void

    .line 128
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

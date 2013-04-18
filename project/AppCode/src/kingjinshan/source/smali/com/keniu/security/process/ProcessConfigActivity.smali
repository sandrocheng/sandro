.class public Lcom/keniu/security/process/ProcessConfigActivity;
.super Lcom/keniu/security/util/BasePreferenceActivity;
.source "ProcessConfigActivity.java"

# interfaces
.implements Lcom/ijinshan/kpref/n;


# instance fields
.field private a:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/keniu/security/util/BasePreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/ijinshan/kpref/Preference;)Z
    .locals 1
    .parameter

    .prologue
    .line 111
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter

    .prologue
    const-wide/16 v3, 0x0

    const/4 v6, 0x0

    .line 25
    const v0, 0x7f05000d

    invoke-super {p0, p1, v0}, Lcom/keniu/security/util/BasePreferenceActivity;->a(Landroid/os/Bundle;I)V

    .line 26
    const v0, 0x7f030073

    invoke-virtual {p0, v0}, Lcom/keniu/security/process/ProcessConfigActivity;->setContentView(I)V

    .line 27
    invoke-virtual {p0}, Lcom/keniu/security/process/ProcessConfigActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 29
    const-string v0, "com.ijinshan.mguard_preferences"

    invoke-virtual {p0, v0, v6}, Lcom/keniu/security/process/ProcessConfigActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/process/ProcessConfigActivity;->a:Landroid/content/SharedPreferences;

    .line 31
    const-string v0, "toProcessWhite"

    invoke-virtual {p0, v0}, Lcom/keniu/security/process/ProcessConfigActivity;->a(Ljava/lang/CharSequence;)Lcom/ijinshan/kpref/Preference;

    move-result-object v0

    .line 32
    new-instance v1, Lcom/keniu/security/process/a;

    invoke-direct {v1, p0}, Lcom/keniu/security/process/a;-><init>(Lcom/keniu/security/process/ProcessConfigActivity;)V

    invoke-virtual {v0, v1}, Lcom/ijinshan/kpref/Preference;->a(Lcom/ijinshan/kpref/n;)V

    .line 43
    const-string v0, "isSceenLockClear"

    invoke-virtual {p0, v0}, Lcom/keniu/security/process/ProcessConfigActivity;->a(Ljava/lang/CharSequence;)Lcom/ijinshan/kpref/Preference;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/kpref/CheckBoxPreference;

    .line 44
    new-instance v1, Lcom/keniu/security/process/b;

    invoke-direct {v1, p0}, Lcom/keniu/security/process/b;-><init>(Lcom/keniu/security/process/ProcessConfigActivity;)V

    invoke-virtual {v0, v1}, Lcom/ijinshan/kpref/CheckBoxPreference;->a(Lcom/ijinshan/kpref/m;)V

    .line 86
    const v0, 0x7f0801f2

    invoke-virtual {p0, v0}, Lcom/keniu/security/process/ProcessConfigActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 87
    iget-object v1, p0, Lcom/keniu/security/process/ProcessConfigActivity;->a:Landroid/content/SharedPreferences;

    const-string v2, "cleartime"

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 88
    cmp-long v3, v1, v3

    if-nez v3, :cond_0

    .line 90
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    :goto_0
    return-void

    .line 94
    :cond_0
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 95
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 97
    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 98
    iget-object v2, p0, Lcom/keniu/security/process/ProcessConfigActivity;->a:Landroid/content/SharedPreferences;

    const-string v3, "clearmemory"

    const-string v4, "0MB"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 99
    iget-object v3, p0, Lcom/keniu/security/process/ProcessConfigActivity;->a:Landroid/content/SharedPreferences;

    const-string v4, "killCount"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 100
    const v4, 0x7f0b054b

    invoke-virtual {p0, v4}, Lcom/keniu/security/process/ProcessConfigActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v6

    const/4 v1, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v1

    const/4 v1, 0x2

    aput-object v2, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
